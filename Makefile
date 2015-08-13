styleModel.md: styleModel.Rmd traces/*
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest.ejs/" > styleTest.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/styleTest2.ejs/" > styleTest2.csv
	./node_modules/erlenmeyer/erlnmyr process.erlnmyr --filter="/whitespace.ejs/" > whitespace.csv
	R -e "rmarkdown::render(\"styleModel.Rmd\")"

sample-whitespace:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=whitespace.ejs --chromium=../chromium/src

sample-styleTest:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest.ejs --chromium=../chromium/src

sample-styleTest2:
	./node_modules/erlenmeyer/erlnmyr capture.erlnmyr --input=styleTest2.ejs --chromium=../chromium/src

clean:
	rm -r styleModel_files/
	rm styleModel.md
