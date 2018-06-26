
JFLAGS = -d bin -sourcepath src

JUNIT_JAR = junit-platform-console-standalone-1.2.0.jar
JUNIT_RUNNER = org.junit.platform.console.ConsoleLauncher


default:
	@echo "'make clean' removes *.class *~ files"
	@echo "'make compile' compiles all Java files"
	@echo "'make demo' runs YOUR simulator demo"
	@echo "'make jbfdemo' runs Dr Fenwick's demo"

test: $(JUNIT_JAR) 
	java -cp .:bin:$(JUNIT_JAR) $(JUNIT_RUNNER) --scan-class-path

clean:
	rm -f bin/*.class
	rm -f src/*~
	rm -f *~

compile: $(JUNIT_JAR) 
	javac $(JFLAGS) -cp .:$(JUNIT_JAR) src/*.java

demo: bin/Demo.class 
	java -cp bin Demo

jbfdemo: Diner.jar
	java -cp Diner.jar Demo

