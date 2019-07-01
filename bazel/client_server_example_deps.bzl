load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")

def client_server_example_deps():
    if "gwt_2_8_2" not in native.existing_rules():
        git_repository(
            name = "gwt_2_8_2",
            commit = "bf8bee5902e8d0f3c8db1bfe8357762c66ba49f4",
            remote = "git@github.com:tadeoj/bazel_gwt_2.8.2.git",
        )

def generated_maven_jars():
    jvm_maven_import_external(
        name = "io_vertx_vertx_core",
        artifact = "io.vertx:vertx-core:3.7.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_vertx_vertx_web",
        artifact = "io.vertx:vertx-web:3.7.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_vertx_vertx_web_common",
        artifact = "io.vertx:vertx-web-common:3.7.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_vertx_vertx_web_client",
        artifact = "io.vertx:vertx-web-client:3.6.3",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_vertx_vertx_mail_client",
        artifact = "io.vertx:vertx-mail-client:3.7.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_gson_gson",
        artifact = "com.google.code.gson:gson:2.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_jsinterop_base",
        artifact = "com.google.jsinterop:base:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_core",
        artifact = "com.google.elemental2:elemental2-core:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_dom",
        artifact = "com.google.elemental2:elemental2-dom:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_promise",
        artifact = "com.google.elemental2:elemental2-promise:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_webstorage",
        artifact = "com.google.elemental2:elemental2-webstorage:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_elemental2_elemental2_svg",
        artifact = "com.google.elemental2:elemental2-svg:1.0.0-RC1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu",
        artifact = "com.github.nalukit:nalu:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu_processor",
        artifact = "com.github.nalukit:nalu-processor:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu_plugin_elemental2",
        artifact = "com.github.nalukit:nalu-plugin-elemental2:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_github_nalukit_nalu_plugin_core_web",
        artifact = "com.github.nalukit:nalu-plugin-core-web:1.2.0",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_jboss_gwt_elemento_elemento_core",
        artifact = "org.jboss.gwt.elemento:elemento-core:0.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_jboss_gwt_elemento_elemento_template_api",
        artifact = "org.jboss.gwt.elemento:elemento-template-api:0.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_jboss_gwt_elemento_elemento_template_processor",
        artifact = "org.jboss.gwt.elemento:elemento-template-processor:0.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_squareup_javapoet",
        artifact = "com.squareup:javapoet:1.11.1",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_auto_auto_common",
        artifact = "com.google.auto:auto-common:0.10",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_auto_service_auto_service",
        artifact = "com.google.auto.service:auto-service:1.0-rc4",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_buffer",
        artifact = "io.netty:netty-buffer:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_codec",
        artifact = "io.netty:netty-codec:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_codec_http",
        artifact = "io.netty:netty-codec-http:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_codec_http2",
        artifact = "io.netty:netty-codec-http2:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_codec_socks",
        artifact = "io.netty:netty-codec-socks:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_common",
        artifact = "io.netty:netty-common:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_handler",
        artifact = "io.netty:netty-handler:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_handler_proxy",
        artifact = "io.netty:netty-handler-proxy:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_resolver",
        artifact = "io.netty:netty-resolver:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_tcnative_boringssl_static",
        artifact = "io.netty:netty-tcnative-boringssl-static:2.0.25.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "io_netty_netty_transport",
        artifact = "io.netty:netty-transport:4.1.36.Final",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "com_google_code_gson_gson",
        artifact = "com.google.code.gson:gson:2.8.5",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "org_apache_commons_commons_io",
        artifact = "org.apache.commons:commons-io:1.3.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
    )

    jvm_maven_import_external(
        name = "javax_annotation_javax_annotation_api",
        artifact = "javax.annotation:javax.annotation-api:1.2",
        server_urls = ["http://central.maven.org/maven2"],
        licenses = ["notice"],  # Apache 2.0
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

    http_jar(
        name = "org_gwtproject_i18n_gwt_cldr",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-cldr/1.0-SNAPSHOT/gwt-cldr-1.0-20181227.163858-5.jar"],
    )

    http_jar(
        name = "org_gwtproject_i18n_gwt_cldr_sources",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-cldr/1.0-SNAPSHOT/gwt-cldr-1.0-20181227.163858-5-sources.jar"],
    )

    http_jar(
        name = "org_gwtproject_i18n_gwt_datetimeformat",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-datetimeformat/1.0-SNAPSHOT/gwt-datetimeformat-1.0-20180414.184100-1.jar"],
    )

    http_jar(
        name = "org_gwtproject_i18n_gwt_datetimeformat_sources",
        urls = ["https://repo.vertispan.com/gwt-snapshot/org/gwtproject/i18n/gwt-datetimeformat/1.0-SNAPSHOT/gwt-datetimeformat-1.0-20180414.184100-1-sources.jar"],
    )

    http_jar(
        name = "org_dominokit_jackson_jackson_apt",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-apt/1.0-SNAPSHOT/jackson-apt-1.0-20190527.210127-19.jar"],
    )

    http_jar(
        name = "org_dominokit_jackson_jackson_apt_sources",
        urls = ["https://oss.sonatype.org/content/repositories/snapshots/org/dominokit/jackson/jackson-apt/1.0-SNAPSHOT/jackson-apt-1.0-20190527.210127-19-sources.jar"],
    )

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
