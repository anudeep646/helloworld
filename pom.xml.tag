<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <groupId>com.sample.training</groupId>
  <artifactId>sample_maven_app</artifactId>
  <version>1.3</version>
  <packaging>jar</packaging>

  <name>sample_maven_app</name>
  <url>http://maven.apache.org</url>

  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  </properties>

  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
	<dependency>
            <groupId>org.apache.maven.scm</groupId>
            <artifactId>maven-scm-provider-gitexe</artifactId>
            <version>1.9</version>
       </dependency>
  </dependencies>
  <distributionManagement>
		<repository>
			<id>releases</id>
			<url>http://localhost:8081/nexus/content/repositories/releases</url>
		</repository>
		<snapshotRepository>
			 <id>snapshots</id>
			<url>http://localhost:8081/nexus/content/repositories/snapshots</url>
		</snapshotRepository>
	</distributionManagement>
	<build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-release-plugin</artifactId>
        <version>2.5.3</version>
        <configuration>
          <tagBase>https://svn.mycompany.com/repos/myapplication/releases</tagBase>
		  <tagbase>
				git:https://github.com/anudeep646/helloworld.git	
		</tagbase>
        </configuration>
      </plugin>
    </plugins>
 
  </build>
 
 <scm>
    <connection>scm:git:https://github.com/anudeep646/helloworld.git</connection>
    <developerConnection>scm:git:https://github.com/anudeep646/helloworld.git</developerConnection>
 
   <tag>sample_maven_app-1.3</tag>
  </scm>	 
			  
</project>
