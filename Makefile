styleModel.md: styleModel.Rmd traces/*
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest.ejs/" > styleTest.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest2.ejs/" > styleTest2.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest3.ejs/" > styleTest3.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest4.ejs/" > styleTest4.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/whitespace.ejs/" > whitespace.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/nostyle.ejs/" > nostyle.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/repeatRules.ejs/" > repeatRules.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/nonMatchingRules.ejs/" > nonMatchingRules.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/matchingRules.ejs/" > matchingRules.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/custom-properties-test-1.ejs/" > custom-properties-test-1.csv
	R -e "rmarkdown::render(\"styleModel.Rmd\")"

sample-nostyle:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=nostyle.ejs --chromium=../chromium/src

sample-whitespace:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=whitespace.ejs --chromium=../chromium/src

sample-styleTest:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest.ejs --chromium=../chromium/src

sample-styleTest2:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest2.ejs --chromium=../chromium/src

sample-styleTest3:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest3.ejs --chromium=../chromium/src

sample-styleTest4:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest4.ejs --chromium=../chromium/src

sample-repeatRules:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=repeatRules.ejs --chromium=../chromium/src

sample-matchingRules:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=matchingRules.ejs --chromium=../chromium/src

sample-nonMatchingRules:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=nonMatchingRules.ejs --chromium=../chromium/src

sample-custom-properties-1:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=custom-properties-test-1.ejs --chromium=../chromium/src
clean:
	rm -r styleModel_files/
	rm styleModel.md
