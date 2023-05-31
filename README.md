# Overview

This is a self-contained project that is great for training or demo-ing all capabilities of Karate. It includes an app that has a working front-end UI and back-end API. Examples of API tests, API performance tests, API mocks and Web-Browser automation are included.

A 20 minute video intro to [Karate](https://www.karatelabs.io) that uses demos from this project can be viewed here: [API Testing With Karate](https://youtu.be/WT4gg7Jutzg).

Use the official Karate IDE plugins for the best developer experience:

* [Karate extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=karatelabs.karate)
* [Karate plugin for IntelliJ IDEA](https://plugins.jetbrains.com/plugin/19232-karate)

# Instructions

> You can use [GitHub Codespaces](https://github.com/karatelabs/karate/wiki/Get-Started:-GitHub-Codespaces) to open this project directly in your browswer ! The default image includes Java and Maven, so you can skip the "Prerequisites" section below and go directly to [Verify Setup](#verify-setup). Make sure you install the [Karate extension for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=karatelabs.karate) in your Codespace. The Karate extension for VS Code can also be run in a Docker based [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers).

## Prerequisites
* [Java JDK](https://www.oracle.com/java/technologies/downloads) - (at least version 11 or greater), [OpenJDK](https://openjdk.org/install) also works
* [`JAVA_HOME`](https://www.baeldung.com/java-home-on-windows-7-8-10-mac-os-x-linux) environment variable set

## Verify Setup
If the following command runs the `ApiTest` fine, you are all set:

Windows:
```
mvnw clean test
```

Other:
```
./mvnw clean test
```

## Running `karate-todo`

> `mvn` will work if you have [Maven installed](https://maven.apache.org/install.html). Else replace it with `./mvnw` or `mvnw` like shown above.

Now you can run the `LocalRunner` class as  JUnit test. You can do this from an IDE that has Java support.

Or from the command-line:

```
mvn clean test -Dtest=LocalRunner
```

Now you should see the front-end at http://localhost:8080

To stop, just kill the process or stop the Java process from the IDE.

## Running Tests
After the app has been started on `localhost:8080`, you can run tests. 

One of the easiest ways to run tests, recommended for non-programmers or teams that are not familiar with Java, is to use [Visual Studio Code](https://github.com/karatelabs/karate/wiki/Get-Started:-Visual-Studio-Code).

There are more tests and examples in this project, but the following are the simplest ones to get started with:

### API Test
* [api/simple.feature](src/test/java/app/api/simple/simple.feature)

### UI Test
* [ui/simple.feature](src/test/java/app/ui/simple/simple.feature)

### API Mock
* [mock/test.feature](src/test/java/app/mock/test.feature) - this would run the API test, but after starting the mock defined in [mock.feature](src/test/java/app/mock/mock.feature)

### API Performance Test
To run performance test (after the app has been started on `localhost`):

```
mvn test -P gatling
```

The above command uses Maven and has to be run on the command-line.