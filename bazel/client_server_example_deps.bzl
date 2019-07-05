load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")
load("@rules_jvm_external//:defs.bzl", "artifact")

def client_server_example_deps():
    if "gwt_2_8_2" not in native.existing_rules():
        git_repository(
            name = "gwt_2_8_2",
            commit = "f421f69fe1bcf6b8a6edde1b88c6101742e7af3d",
            remote = "git@github.com:tadeoj/bazel_gwt_2.8.2.git",
        )

def generated_maven_jars():
    maven_install(
        artifacts = [
            maven.artifact(
                group = "org.dominokit",
                artifact = "domino-apt-commons",
                version = "1.0-rc.4-SNAPSHOT",
                exclusions = [
                    maven.exclusion(
                        group = "org.apache.commons",
                        artifact = "commons-io",
                    ),
                ],
            ),
            "io.vertx:vertx-core:3.7.0",
            "org.dominokit:domino-aggregator-shared:1.0-rc.4-SNAPSHOT",
            "org.dominokit:domino-slf4j-logger:1.0-rc.4-SNAPSHOT",
            "org.gwtproject:typedarrays:1.0-SNAPSHOT",
            "org.gwtproject:xhr:1.0-SNAPSHOT",
            "org.gwtproject.core:gwt-core:1.0-SNAPSHOT",
            "org.gwtproject:regexp:1.0-SNAPSHOT",
            "org.dominokit:jaxrs-super:1.0-rc.4-SNAPSHOT",
            "org.dominokit:domino-history-shared:1.0-rc.4-SNAPSHOT",
            "org.dominokit:domino-history-gwt:1.0-rc.4-SNAPSHOT",
            "org.gwtproject.timer:gwt-timer:1.0-SNAPSHOT",
            "org.dominokit::1.0-rc.4-SNAPSHOT",
            "org.dominokit:domino-rest-apt:1.0-rc.4-SNAPSHOT",
            "org.dominokit:domino-rest-server:1.0-rc.4-SNAPSHOT",
            "org.dominokit:domino-rest-shared:1.0-rc.4-SNAPSHOT",
            "org.dominokit.jackson:jackson-apt-processor:1.0-SNAPSHOT",
            "org.dominokit.jackson:jackson-super:1.0-SNAPSHOT",
            "org.dominokit:domino-rest-gwt:1.0-rc.4-SNAPSHOT",
            "org.dominokit.jackson:jackson-apt:1.0-SNAPSHOT",
            "org.dominokit:domino-ui:1.0-SNAPSHOT",
            "org.gwtproject.i18n:gwt-cldr:1.0-SNAPSHOT",
            "org.gwtproject.i18n:gwt-datetimeformat:1.0-SNAPSHOT",
            "io.vertx:vertx-web:3.7.0",
            "io.vertx:vertx-auth-common:3.7.0",
            "io.vertx:vertx-bridge-common:3.7.0",
            "io.vertx:vertx-web-common:3.7.0",
            "io.vertx:vertx-web-client:3.6.3",
            "io.vertx:vertx-mail-client:3.7.0",
            "com.google.code.gson:gson:2.8.5",
            "com.google.jsinterop:base:1.0.0-RC1",
            "com.google.elemental2:elemental2-core:1.0.0-RC1",
            "com.google.elemental2:elemental2-dom:1.0.0-RC1",
            "com.google.elemental2:elemental2-promise:1.0.0-RC1",
            "com.google.elemental2:elemental2-webstorage:1.0.0-RC1",
            "com.google.elemental2:elemental2-svg:1.0.0-RC1",
            "com.github.nalukit:nalu:1.2.0",
            "com.github.nalukit:nalu-processor:1.2.0",
            "com.github.nalukit:nalu-plugin-elemental2:1.2.0",
            "com.github.nalukit:nalu-plugin-core-web:1.2.0",
            "org.jboss.gwt.elemento:elemento-core:0.8.5",
            "org.jboss.gwt.elemento:elemento-template-api:0.8.5",
            "org.jboss.gwt.elemento:elemento-template-processor:0.8.5",
            "com.squareup:javapoet:1.11.1",
            "com.google.auto:auto-common:0.10",
            "com.google.auto.service:auto-service:1.0-rc4",
            "io.netty:netty-buffer:4.1.36.Final",
            "io.netty:netty-codec:4.1.36.Final",
            "io.netty:netty-codec-http:4.1.36.Final",
            "io.netty:netty-codec-http2:4.1.36.Final",
            "io.netty:netty-codec-socks:4.1.36.Final",
            "io.netty:netty-common:4.1.36.Final",
            "io.netty:netty-handler:4.1.36.Final",
            "io.netty:netty-handler-proxy:4.1.36.Final",
            "io.netty:netty-resolver:4.1.36.Final",
            "io.netty:netty-tcnative-boringssl-static:2.0.25.Final",
            "io.netty:netty-transport:4.1.36.Final",
            "com.google.code.gson:gson:2.8.5",
            "javax.annotation:javax.annotation-api:1.2",
        ],
        repositories = [
            "https://repo.vertispan.com/gwt-snapshot",
            "https://jcenter.bintray.com",
            "https://repo1.maven.org/maven2",
            "https://maven.google.com",
            "https://mvnrepository.com",
            "https://oss.sonatype.org/content/repositories/snapshots",
        ],
        fetch_sources = True,
        fail_on_missing_checksum = False,
    )
