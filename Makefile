PROFILE := .Rprofile
INZIGHT := inzight
VIT     := vit
DIR     := $(shell pwd)
RCMD    := R
CRAN    := https://cran.rstudio.com
CPUS    := $(shell getconf _NPROCESSORS_ONLN)

default: $(PROFILE) $(INZIGHT) $(VIT) update
	@mkdir -p library
	@$(RCMD) --slave -e "install.packages(c('iNZightRegression', 'iNZightPlots', 'iNZightTS', 'iNZightMR', 'vit', 'iNZightTools', 'FutureLearnData', 'iNZightModules', 'iNZight'), dependencies = TRUE, Ncpus = $(CPUS))" --args install
	@echo
	@echo "+---------------------------------------------------------------------------"
	@echo "|"
	@echo "| Yay! iNZightVIT has been installed to this directory :) "
	@echo "|"
	@echo "| You can either run \`inzight\` or \`vit\` from here,"
	@echo "| or run \`make install\` if you want to be able to start it from anywhere."
	@echo "|"
	@echo "| To update iNZightVIT, run \`./update\` from this directory."
	@echo "|"
	@echo "| NOTE: you can delete the \`.clean\` directory if you want to,"
	@echo "|       but you won't be able to recover the build files."
	@echo "|"
	@echo "+---------------------------------------------------------------------------"
	@echo

$(PROFILE):
	@cp Rprofile.template $@
	@sed -i 's|LIB_PATH|$(DIR)|g' $@
	@sed -i 's|CRAN|$(CRAN)|' $@
	@mkdir -p .clean && mv Rprofile.template .clean

$(INZIGHT):
	@cp inzight.tmp $@
	@sed -i 's|INSTALL_DIR|$(DIR)|' $@
	@chmod +x $@
	@mkdir -p .clean && mv inzight.tmp .clean

$(VIT):
	@cp vit.tmp $@
	@sed -i 's|INSTALL_DIR|$(DIR)|' $@
	@chmod +x $@
	@mkdir -p .clean && mv vit.tmp .clean

update:
	@cp update.tmp $@
	@sed -i 's|INSTALL_DIR|$(DIR)|' $@
	@chmod +x $@
	@mkdir -p .clean && mv update.tmp .clean

clean:
	-@rm -rf library
	-@rm .Rprofile $(INZIGHT) $(VIT) update
	-@mv .clean/* ./ && rm -rf .clean

install:
	@ln -is $(DIR)/$(INZIGHT) /usr/local/bin/$(INZIGHT)
	@ln -is $(DIR)/$(VIT) /usr/local/bin/$(VIT)
	@chmod +x /usr/local/bin/$(INZIGHT)
	@chmod +x /usr/local/bin/$(VIT)
	@echo "iNZightVIT has been installed."
	@echo "You can run either \`$(INZIGHT)\` or \`$(VIT)\` from anywhere to launch."
	@echo "To uninstall, simply run \`make uninstall\`."

uninstall:
	@if [ -L /usr/local/bin/$(INZIGHT) ]; then rm -if /usr/local/bin/$(INZIGHT); fi;
	@if [ -L /usr/local/bin/$(VIT) ]; then rm -if /usr/local/bin/$(VIT); fi;
	@echo "iNZight has been uninstalled. To complete, just delete this folder."
	@echo
	@echo "Thank you for using iNZight!"
