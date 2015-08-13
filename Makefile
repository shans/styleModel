styleModel.md: styleModel.Rmd traces/*
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest.ejs/" > styleTest.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest2.ejs/" > styleTest2.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/whitespace.ejs/" > whitespace.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/nostyle.ejs/" > nostyle.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/repeatRules.ejs/" > repeatRules.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/nonMatchingRules.ejs/" > nonMatchingRules.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/matchingRules.ejs/" > matchingRules.csv
	R -e "rmarkdown::render(\"styleModel.Rmd\")"

sample-nostyle:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=nostyle.ejs --chromium=../chromium/src

sample-whitespace:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=whitespace.ejs --chromium=../chromium/src

sample-styleTest:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest.ejs --chromium=../chromium/src

sample-styleTest2:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest2.ejs --chromium=../chromium/src

sample-repeatRules:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=repeatRules.ejs --chromium=../chromium/src

sample-matchingRules:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=matchingRules.ejs --chromium=../chromium/src

sample-nonMatchingRules:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=nonMatchingRules.ejs --chromium=../chromium/src

clean:
	rm -r styleModel_files/
	rm styleModel.md
