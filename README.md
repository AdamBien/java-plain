# The shortest possible Java 17 (LTS) maven quickstarter

The shortest possible [Apache Maven](https://maven.apache.org) template for Java 17

# usage

1. `git clone https://github.com/AdamBien/java17-plain`
2. `cd java17-plain`
3. `mvn package`

You will find an executable: `java17-plain.jar` in `target` folder.

# create executable Java "script"

The `src/main/java/airhacks/App.java` can be converted into a ["Java Shell Script"](https://www.adam-bien.com/roller/abien/entry/run_java_source_as_shell)
by invoking the `CreateJavaScript.sh` "Java Shell Script". 

You will find he converted `App.java` script in `target/App.sh`.