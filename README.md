# Automatic versioning of Java applications using Git-Version Gradle Plugin

Code for a blog post Automatic versioning of Java applications using Git-Version Gradle Plugin.

## Build the Application

```bash
$ ./gradlew bootJar

BUILD SUCCESSFUL in 0s
3 actionable tasks: 3 executed

$ ls build/libs
git-version-demo-99f9f74.jar
```

## Create a Docker Image

```bash
$ ./gradlew docker --info

Starting process 'command 'docker''. Working directory: /home/dominik/IdeaProjects/git-version-demo/build/docker Command: docker build -t com.98elements/git-version-demo:99f9f74 .
Successfully started process 'command 'docker''
Sending build context to Docker daemon   18.4MB

Step 1/3 : FROM openjdk:8-jdk-alpine
 ---> a3562aa0b991
Step 2/3 : COPY *.jar app.jar
 ---> 42be8b159748
Step 3/3 : ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
 ---> Running in be94d3dabf61
Removing intermediate container be94d3dabf61
 ---> 94e1bd0005a7
Successfully built 94e1bd0005a7
Successfully tagged com.98elements/git-version-demo:99f9f74
:docker (Thread[Execution worker for ':',5,main]) completed. Took 0.81 secs.

BUILD SUCCESSFUL in 1s
6 actionable tasks: 5 executed, 1 up-to-date
```

See more posts at [98elements blog](https://98elements.com/blog)!
