load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@rules_jvm_external//:defs.bzl", "maven_install")

def client_server_example_deps():
    if "gwt_2_8_2" not in native.existing_rules():
        git_repository(
            name = "gwt_2_8_2",
            commit = "bf8bee5902e8d0f3c8db1bfe8357762c66ba49f4",
            remote = "git@github.com:tadeoj/bazel_gwt_2.8.2.git",
        )

def generated_maven_jars():
    maven_install(
        artifacts = [
            "io.vertx:vertx-core:3.7.0",
            "org.dominokit.jackson:jackson-apt:1.0-SNAPSHOT",
            "org.gwtproject.i18n:gwt-cldr:1.0-SNAPSHOT",
            "org.gwtproject.i18n:gwt-datetimeformat:1.0-SNAPSHOT",
            "io.vertx:vertx-web:3.7.0",
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
            "org.apache.commons:commons-io:1.3.2",
            "javax.annotation:javax.annotation-api:1.2",
        ],
        repositories = [
            "https://oss.sonatype.org/content/repositories/snapshots",
            "https://repo.vertispan.com/gwt-snapshot",
            "https://jcenter.bintray.com/",
            "https://repo1.maven.org/maven2",
        ],
        fetch_sources = True,
    )

    http_jar(
        name = "org_dominokit_domino_ui",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-ui/1.0-SNAPSHOT/domino-ui-1.0-20190701.084418-492.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_ui_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-ui/1.0-SNAPSHOT/domino-ui-1.0-20190701.084418-492-sources.jar"],
    )

    http_jar(
        name = "org_gwtproject_timer_gwt_timer",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/timer/gwt-timer/1.0-SNAPSHOT/gwt-timer-1.0-20180623.095409-6.jar"],
    )

    #    http_jar(
    #        name = "org_gwtproject_i18n_gwt_cldr",
    #        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-cldr/1.0-SNAPSHOT/gwt-cldr-1.0-20181227.163858-5.jar"],
    #    )
    #
    #    http_jar(
    #        name = "org_gwtproject_i18n_gwt_cldr_sources",
    #        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-cldr/1.0-SNAPSHOT/gwt-cldr-1.0-20181227.163858-5-sources.jar"],
    #    )

    #    http_jar(
    #        name = "org_gwtproject_i18n_gwt_datetimeformat",
    #        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-datetimeformat/1.0-SNAPSHOT/gwt-datetimeformat-1.0-20180414.184100-1.jar"],
    #    )
    #
    #    http_jar(
    #        name = "org_gwtproject_i18n_gwt_datetimeformat_sources",
    #        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-datetimeformat/1.0-SNAPSHOT/gwt-datetimeformat-1.0-20180414.184100-1-sources.jar"],
    #    )

    #    http_jar(
    #        name = "org_dominokit_jackson_jackson_apt",
    #        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-apt/1.0-SNAPSHOT/jackson-apt-1.0-20190527.210127-19.jar"],
    #    )

    #    http_jar(
    #        name = "org_dominokit_jackson_jackson_apt_sources",
    #        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-apt/1.0-SNAPSHOT/jackson-apt-1.0-20190527.210127-19-sources.jar"],
    #    )

    http_jar(
        name = "org_dominokit_jackson_jackson_apt_processor",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-apt-processor/1.0-SNAPSHOT/jackson-apt-processor-1.0-20190527.210124-19.jar"],
    )

    http_jar(
        name = "org_dominokit_jackson_jackson_apt_processor_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-apt-processor/1.0-SNAPSHOT/jackson-apt-processor-1.0-20190527.210124-19-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_jackson_jackson_super",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-super/1.0-SNAPSHOT/jackson-super-1.0-20190527.210128-19.jar"],
    )

    http_jar(
        name = "org_dominokit_jackson_jackson_super_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-super/1.0-SNAPSHOT/jackson-super-1.0-20190527.210128-19-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_gwt",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-gwt/1.0-rc.4-SNAPSHOT/domino-rest-gwt-1.0-rc.4-20190619.133605-17.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_gwt_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-gwt/1.0-rc.4-SNAPSHOT/domino-rest-gwt-1.0-rc.4-20190619.133605-17-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_server",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-server/1.0-rc.4-SNAPSHOT/domino-rest-server-1.0-rc.4-20190619.133603-17.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_server_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-server/1.0-rc.4-SNAPSHOT/domino-rest-server-1.0-rc.4-20190619.133603-17-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_shared",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-shared/1.0-rc.4-SNAPSHOT/domino-rest-shared-1.0-rc.4-20190619.133559-17.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_shared_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-shared/1.0-rc.4-SNAPSHOT/domino-rest-shared-1.0-rc.4-20190619.133559-17-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_apt",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-apt/1.0-rc.4-SNAPSHOT/domino-rest-apt-1.0-rc.4-20190619.133601-17.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_rest_apt_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-rest-apt/1.0-rc.4-SNAPSHOT/domino-rest-apt-1.0-rc.4-20190619.133601-17-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_apt_commons",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-apt-commons/1.0-rc.4-SNAPSHOT/domino-apt-commons-1.0-rc.4-20190623.075032-6.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_apt_commons_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-apt-commons/1.0-rc.4-SNAPSHOT/domino-apt-commons-1.0-rc.4-20190623.075032-6-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_history_shared",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-history-shared/1.0-rc.4-SNAPSHOT/domino-history-shared-1.0-rc.4-20190620.092206-6.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_history_gwt",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-history-gwt/1.0-rc.4-SNAPSHOT/domino-history-gwt-1.0-rc.4-20190620.092200-6.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_aggregator_shared",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-aggregator-shared/1.0-rc.4-SNAPSHOT/domino-aggregator-shared-1.0-rc.4-20190528.081337-7.jar"],
    )

    http_jar(
        name = "org_dominokit_jaxrs_super",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jaxrs-super/1.0-rc.4-SNAPSHOT/jaxrs-super-1.0-rc.4-20190619.133613-17.jar"],
    )

    http_jar(
        name = "org_dominokit_domino_slf4j_logger",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/domino-slf4j-logger/1.0-rc.4-SNAPSHOT/domino-slf4j-logger-1.0-rc.4-20190527.201020-4.jar"],
    )

    http_jar(
        name = "org_gwtproject_regexp",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/regexp/1.0-SNAPSHOT/regexp-1.0-20180609.203147-1.jar"],
    )

    http_jar(
        name = "org_gwtproject_core",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/core/gwt-core/1.0-SNAPSHOT/gwt-core-1.0-20190527.022308-3.jar"],
    )

    http_jar(
        name = "org_gwtproject_xhr",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/xhr/1.0-SNAPSHOT/xhr-1.0-20180126.045420-2.jar"],
    )

    http_jar(
        name = "org_gwtproject_typedarrays",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/typedarrays/1.0-SNAPSHOT/typedarrays-1.0-20180126.045110-2.jar"],
    )
