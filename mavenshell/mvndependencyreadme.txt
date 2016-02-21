The Dependency plugin has several goals:
dependency:analyze analyzes the dependencies of this project and determines which are: used and declared; used and undeclared; unused and declared.
dependency:analyze-dep-mgt analyzes your projects dependencies and lists mismatches between resolved dependencies and those listed in your dependencyManagement section.
dependency:analyze-only is the same as analyze, but is meant to be bound in a pom. It does not fork the build and execute test-compile.
dependency:analyze-report analyzes the dependencies of this project and produces a report that summarises which are: used and declared; used and undeclared; unused and declared.
dependency:analyze-duplicate analyzes the <dependencies/> and <dependencyManagement/> tags in the pom.xml and determines the duplicate declared dependencies.
dependency:build-classpath tells Maven to output the path of the dependencies from the local repository in a classpath format to be used in java -cp. The classpath file may also be attached and installed/deployed along with the main artifact.
dependency:copy takes a list of artifacts defined in the plugin configuration section and copies them to a specified location, renaming them or stripping the version if desired. This goal can resolve the artifacts from remote repositories if they don't exist in either the local repository or the reactor.
dependency:copy-dependencies takes the list of project direct dependencies and optionally transitive dependencies and copies them to a specified location, stripping the version if desired. This goal can also be run from the command line.
dependency:display-ancestors displays all ancestor POMs of the project. This may be useful in a continuous integration system where you want to know all parent poms of the project. This goal can also be run from the command line.
dependency:get resolves a single artifact, eventually transitively, from a specified remote repository.
dependency:go-offline tells Maven to resolve everything this project is dependent on (dependencies, plugins, reports) in preparation for going offline.
dependency:list alias for resolve that lists the dependencies for this project.
dependency:list-repositories displays all project dependencies and then lists the repositories used.
dependency:properties set a property for each project dependency containing the to the artifact on the file system.
dependency:purge-local-repository tells Maven to clear dependency artifact files out of the local repository, and optionally re-resolve them.
dependency:resolve tells Maven to resolve all dependencies and displays the version.
dependency:resolve-plugins tells Maven to resolve plugins and their dependencies.
dependency:sources tells Maven to resolve all dependencies and their source attachments, and displays the version.
dependency:tree displays the dependency tree for this project.
dependency:unpack like copy but unpacks.
dependency:unpack-dependencies like copy-dependencies but unpacks.


----------------
TomCat Goals
----------------
To redeploy a WAR project deployed by tomcat:deploy you can type:
mvn package tomcat6/7:redeploy -DskipTests
To redeploy a WAR project deployed by tomcat:exploded you can type:
mvn war:exploded tomcat6/7:redeploy -DskipTests
To redeploy a WAR project deployed by tomcat:inplace you can type:
mvn war:inplace tomcat6/7:redeploy -DskipTests
To redeploy a context.xml file deployed by tomcat:deploy you can type:
mvn tomcat6/7:redeploy -DskipTests
To undeploy a WAR from Tomcat you can type:
mvn tomcat6/7:undeploy -DskipTests
To start a WAR in Tomcat you can type:
mvn tomcat6:start -DskipTests
To stop a WAR in Tomcat you can type:
mvn tomcat6:stop -DskipTests
To list the session statistics for a deployed WAR project you can type:
mvn tomcat6:sessions -DskipTests


----------------
GWT
--------------
gwt maven project and importet it as maven project to eclipse:
mvn archetype:generate -DarchetypeGroupId=org.codehaus.mojo -DarchetypeArtifactId=gwt-maven-plugin


--------------------------------
More Info For Source Download
--------------------------------
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-eclipse-plugin</artifactId>
    <version>2.9</version>
    <configuration>
        <downloadSources>true</downloadSources>
        <downloadJavadocs>false</downloadJavadocs>
    </configuration>
</plugin>



---------------------------
Eclipse goal:
    clean install dependency:resolve dependency:resolve-plugins -DskipTests
---------------------------


--------------------------------
DbUnit Pluging Config
--------------------------------
<plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>dbunit-maven-plugin</artifactId>
    <version>1.0-beta-3</version>
    <configuration>
        <dataTypeFactoryName>${dbunit.dataTypeFactoryName}</dataTypeFactoryName>
        <driver>${jdbc.driverClassName}</driver>
        <username>${jdbc.username}</username>
        <password>${jdbc.password}</password>
        <url>${jdbc.url}</url>
        <src>src/test/resources/sample-data.xml</src>
        <!-- UPDATE, INSERT, DELETE, DELETE_ALL, REFRESH, CLEAN_INSERT, MSSQL_INSERT, MSSQL_REFRESH, MSSQL_CLEAN_INSERT -->
        <!-- <type>${dbunit.operation.type}</type> -->
        <type>INSERT</type>
        <schema>${dbunit.schema}</schema>
        <skip>${skipTests}</skip>
        <transaction>true</transaction>
    </configuration>
    <executions>
        <execution>
            <!-- Execute on: mvn test-compile -->
            <id>test-compile</id>
            <phase>test-compile</phase>
            <goals>
                <goal>operation</goal>
            </goals>
        </execution>
        <execution>
            <!-- Execute on: mvn test-compile -->
            <!-- Runs before integration tests and jetty:run-war -->
            <id>test</id>
            <phase>test</phase>
            <goals>
                <goal>operation</goal>
            </goals>
        </execution>
    </executions>
    <dependencies>
        <dependency>
            <groupId>${jdbc.groupId}</groupId>
            <artifactId>${jdbc.artifactId}</artifactId>
            <version>${jdbc.version}</version>
        </dependency>
    </dependencies>
</plugin>

