<?xml version="1.0" encoding="UTF-8"?>
<nexusConfiguration>
  <version>2.8.0</version>
  <nexusVersion>2.11.1-01</nexusVersion>
  <globalConnectionSettings>
    <connectionTimeout>20000</connectionTimeout>
    <retrievalRetryCount>3</retrievalRetryCount>
    <queryString></queryString>
  </globalConnectionSettings>
  <remoteProxySettings />
  <restApi>
    <baseUrl>https://$FQDN/nexus/</baseUrl>
    <uiTimeout>60000</uiTimeout>
  </restApi>
  <httpProxy>
    <enabled>true</enabled>
    <port>8082</port>
    <proxyPolicy>strict</proxyPolicy>
  </httpProxy>
  <routing>
    <resolveLinks>true</resolveLinks>
  </routing>
  <repositories>
    <repository>
      <id>central</id>
      <name>Central</name>
      <providerRole>org.sonatype.nexus.proxy.repository.Repository</providerRole>
      <providerHint>maven2</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheActive>true</notFoundCacheActive>
      <notFoundCacheTTL>1440</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>READ_ONLY</writePolicy>
      <indexable>true</indexable>
      <searchable>true</searchable>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <remoteStorage>
        <url>https://repo1.maven.org/maven2/</url>
      </remoteStorage>
      <externalConfiguration>
        <proxyMode>ALLOW</proxyMode>
        <artifactMaxAge>-1</artifactMaxAge>
        <itemMaxAge>1440</itemMaxAge>
        <cleanseRepositoryMetadata>false</cleanseRepositoryMetadata>
        <downloadRemoteIndex>false</downloadRemoteIndex>
        <checksumPolicy>WARN</checksumPolicy>
        <repositoryPolicy>RELEASE</repositoryPolicy>
      </externalConfiguration>
    </repository>
    <repository>
      <id>apache-snapshots</id>
      <name>Apache Snapshots</name>
      <providerRole>org.sonatype.nexus.proxy.repository.Repository</providerRole>
      <providerHint>maven2</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheActive>true</notFoundCacheActive>
      <notFoundCacheTTL>1440</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>READ_ONLY</writePolicy>
      <indexable>true</indexable>
      <searchable>true</searchable>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <remoteStorage>
        <url>https://repository.apache.org/snapshots/</url>
      </remoteStorage>
      <externalConfiguration>
        <proxyMode>ALLOW</proxyMode>
        <artifactMaxAge>1440</artifactMaxAge>
        <itemMaxAge>1440</itemMaxAge>
        <cleanseRepositoryMetadata>false</cleanseRepositoryMetadata>
        <downloadRemoteIndex>false</downloadRemoteIndex>
        <checksumPolicy>WARN</checksumPolicy>
        <repositoryPolicy>SNAPSHOT</repositoryPolicy>
      </externalConfiguration>
    </repository>
    <repository>
      <id>codehaus-snapshots</id>
      <name>Codehaus Snapshots</name>
      <providerRole>org.sonatype.nexus.proxy.repository.Repository</providerRole>
      <providerHint>maven2</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheActive>true</notFoundCacheActive>
      <notFoundCacheTTL>1440</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>READ_ONLY</writePolicy>
      <indexable>true</indexable>
      <searchable>true</searchable>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <remoteStorage>
        <url>https://nexus.codehaus.org/snapshots/</url>
      </remoteStorage>
      <externalConfiguration>
        <proxyMode>ALLOW</proxyMode>
        <artifactMaxAge>1440</artifactMaxAge>
        <itemMaxAge>1440</itemMaxAge>
        <cleanseRepositoryMetadata>false</cleanseRepositoryMetadata>
        <downloadRemoteIndex>false</downloadRemoteIndex>
        <checksumPolicy>WARN</checksumPolicy>
        <repositoryPolicy>SNAPSHOT</repositoryPolicy>
      </externalConfiguration>
    </repository>
    <repository>
      <id>releases</id>
      <name>Releases</name>
      <providerRole>org.sonatype.nexus.proxy.repository.Repository</providerRole>
      <providerHint>maven2</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheTTL>1440</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>ALLOW_WRITE_ONCE</writePolicy>
      <indexable>true</indexable>
      <searchable>true</searchable>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <externalConfiguration>
        <proxyMode>ALLOW</proxyMode>
        <artifactMaxAge>-1</artifactMaxAge>
        <itemMaxAge>1440</itemMaxAge>
        <cleanseRepositoryMetadata>false</cleanseRepositoryMetadata>
        <downloadRemoteIndex>false</downloadRemoteIndex>
        <checksumPolicy>WARN</checksumPolicy>
        <repositoryPolicy>RELEASE</repositoryPolicy>
      </externalConfiguration>
    </repository>
    <repository>
      <id>snapshots</id>
      <name>Snapshots</name>
      <providerRole>org.sonatype.nexus.proxy.repository.Repository</providerRole>
      <providerHint>maven2</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheTTL>1440</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>ALLOW_WRITE</writePolicy>
      <indexable>true</indexable>
      <searchable>true</searchable>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <externalConfiguration>
        <proxyMode>ALLOW</proxyMode>
        <artifactMaxAge>1440</artifactMaxAge>
        <itemMaxAge>1440</itemMaxAge>
        <cleanseRepositoryMetadata>false</cleanseRepositoryMetadata>
        <downloadRemoteIndex>false</downloadRemoteIndex>
        <checksumPolicy>WARN</checksumPolicy>
        <repositoryPolicy>SNAPSHOT</repositoryPolicy>
      </externalConfiguration>
    </repository>
    <repository>
      <id>thirdparty</id>
      <name>3rd party</name>
      <providerRole>org.sonatype.nexus.proxy.repository.Repository</providerRole>
      <providerHint>maven2</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheTTL>1440</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>ALLOW_WRITE_ONCE</writePolicy>
      <indexable>true</indexable>
      <searchable>true</searchable>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <externalConfiguration>
        <proxyMode>ALLOW</proxyMode>
        <artifactMaxAge>-1</artifactMaxAge>
        <itemMaxAge>1440</itemMaxAge>
        <cleanseRepositoryMetadata>false</cleanseRepositoryMetadata>
        <downloadRemoteIndex>false</downloadRemoteIndex>
        <checksumPolicy>WARN</checksumPolicy>
        <repositoryPolicy>RELEASE</repositoryPolicy>
      </externalConfiguration>
    </repository>
    <repository>
      <id>central-m1</id>
      <name>Central M1 shadow</name>
      <providerRole>org.sonatype.nexus.proxy.repository.ShadowRepository</providerRole>
      <providerHint>m2-m1-shadow</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheTTL>15</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>READ_ONLY</writePolicy>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <externalConfiguration>
        <masterRepositoryId>central</masterRepositoryId>
        <syncAtStartup>false</syncAtStartup>
      </externalConfiguration>
    </repository>
    <repository>
      <id>public</id>
      <name>Public Repositories</name>
      <providerRole>org.sonatype.nexus.proxy.repository.GroupRepository</providerRole>
      <providerHint>maven2</providerHint>
      <localStatus>IN_SERVICE</localStatus>
      <notFoundCacheTTL>15</notFoundCacheTTL>
      <userManaged>true</userManaged>
      <exposed>true</exposed>
      <browseable>true</browseable>
      <writePolicy>READ_ONLY</writePolicy>
      <indexable>true</indexable>
      <localStorage>
        <provider>file</provider>
      </localStorage>
      <externalConfiguration>
        <mergeMetadata>true</mergeMetadata>
        <memberRepositories>
          <memberRepository>releases</memberRepository>
          <memberRepository>snapshots</memberRepository>
          <memberRepository>thirdparty</memberRepository>
          <memberRepository>central</memberRepository>
        </memberRepositories>
      </externalConfiguration>
    </repository>
  </repositories>
  <repositoryGrouping>
    <pathMappings>
      <pathMapping>
        <id>inhouse-stuff</id>
        <groupId>*</groupId>
        <routeType>inclusive</routeType>
        <routePatterns>
          <routePattern>^/(com|org)/somecompany/.*</routePattern>
        </routePatterns>
        <repositories>
          <repository>snapshots</repository>
          <repository>releases</repository>
        </repositories>
      </pathMapping>
      <pathMapping>
        <id>apache-stuff</id>
        <groupId>*</groupId>
        <routeType>exclusive</routeType>
        <routePatterns>
          <routePattern>^/org/some-oss/.*</routePattern>
        </routePatterns>
        <repositories>
          <repository>releases</repository>
          <repository>snapshots</repository>
        </repositories>
      </pathMapping>
    </pathMappings>
  </repositoryGrouping>
  <repositoryTargets>
    <repositoryTarget>
      <id>1</id>
      <name>All (Maven2)</name>
      <contentClass>maven2</contentClass>
      <patterns>
        <pattern>.*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>2</id>
      <name>All (Maven1)</name>
      <contentClass>maven1</contentClass>
      <patterns>
        <pattern>.*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>3</id>
      <name>All but sources (Maven2)</name>
      <contentClass>maven2</contentClass>
      <patterns>
        <pattern>(?!.*-sources.*).*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>4</id>
      <name>All Metadata (Maven2)</name>
      <contentClass>maven2</contentClass>
      <patterns>
        <pattern>.*maven-metadata\.xml.*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>any</id>
      <name>All (Any Repository)</name>
      <contentClass>any</contentClass>
      <patterns>
        <pattern>.*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>site</id>
      <name>All (site)</name>
      <contentClass>site</contentClass>
      <patterns>
        <pattern>.*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>npm</id>
      <name>All (npm)</name>
      <contentClass>npm</contentClass>
      <patterns>
        <pattern>.*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>nuget</id>
      <name>All (nuget)</name>
      <contentClass>nuget</contentClass>
      <patterns>
        <pattern>.*</pattern>
      </patterns>
    </repositoryTarget>
    <repositoryTarget>
      <id>rubygems</id>
      <name>All (rubygems)</name>
      <contentClass>rubygems</contentClass>
      <patterns>
        <pattern>.*</pattern>
      </patterns>
    </repositoryTarget>
  </repositoryTargets>
  <smtpConfiguration>
    <hostname>postfix</hostname>
    <port>25</port>
    <username></username>
    <password></password>
    <systemEmailAddress>nexus@$DOMAIN</systemEmailAddress>
  </smtpConfiguration>
  <notification>
    <notificationTargets>
      <notificationTarget>
        <targetId>autoBlockTarget</targetId>
      </notificationTarget>
    </notificationTargets>
  </notification>
</nexusConfiguration>
