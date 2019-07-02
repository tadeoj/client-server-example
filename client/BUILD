package(default_visibility = ["//visibility:public"])

load("@gwt_2_8_2//bazel:gwt_application.bzl", "gwt_application")

gwt_application(
    name = "client-example",
    srcs = glob(["src/main/java/**/*.java"]),
    compiler_flags = [
        "-strict",
        "-sourceLevel 1.8",
        "-logLevel INFO",
    ],
    compiler_jvm_flags = [
        "-Xmx1G",
    ],
    dev_flags = [
        "-logLevel INFO",
    ],
    dev_jvm_flags = [
        "-Xmx1G",
    ],
    java_roots = [
        "backend-ui-user/app/src/main/java",
    ],
    modules = ["com.github.tadeoj.client.example.Application"],
    pubs = glob(
        ["src/main/resources/static/*"],
        exclude_directories = 0,
    ),
    resources = glob(["src/main/resources/**/*"]),
    visibility = ["//visibility:public"],
    deps = [
        ":json_registration_processor",
        ":nalu_processor",
        ":object_mapper_processor",
        ":org_dominokit_domino_rest_processor",
        "@com_github_nalukit_nalu//jar",
        "@com_github_nalukit_nalu_plugin_core_web//jar",
        "@com_github_nalukit_nalu_plugin_elemental2//jar",
        "@com_github_nalukit_nalu_processor//jar",
        "@com_google_auto_auto_common//jar",
        "@com_google_auto_service_auto_service//jar",
        "@com_google_elemental2_elemental2_core//jar",
        "@com_google_elemental2_elemental2_dom//jar",
        "@com_google_elemental2_elemental2_promise//jar",
        "@com_google_elemental2_elemental2_svg//jar",
        "@com_google_elemental2_elemental2_webstorage//jar",
        "@com_google_jsinterop_base//jar",
        "@com_squareup_javapoet//jar",
        "@io_vertx_vertx_web_client//jar",
        "@maven//:org_dominokit_jackson_jackson_apt",
        "@maven//:org_gwtproject_i18n_gwt_cldr",
        "@maven//:org_gwtproject_i18n_gwt_datetimeformat",
        "@org_dominokit_domino_aggregator_shared//jar",
        "@org_dominokit_domino_apt_commons//jar",
        "@org_dominokit_domino_history_gwt//jar",
        "@org_dominokit_domino_history_shared//jar",
        "@org_dominokit_domino_rest_apt//jar",
        "@org_dominokit_domino_rest_gwt//jar",
        "@org_dominokit_domino_rest_server//jar",
        "@org_dominokit_domino_rest_shared//jar",
        "@org_dominokit_domino_slf4j_logger//jar",
        "@org_dominokit_domino_ui//jar",
        "@org_dominokit_domino_ui_sources//jar",
        "@org_dominokit_jackson_jackson_apt_processor//jar",
        "@org_dominokit_jackson_jackson_apt_processor_sources//jar",
        "@org_dominokit_jackson_jackson_super//jar",
        "@org_dominokit_jackson_jackson_super_sources//jar",
        "@org_dominokit_jaxrs_super//jar",
        "@org_gwtproject_core//jar",
        "@org_gwtproject_regexp//jar",
        "@org_gwtproject_timer_gwt_timer//jar",
        "@org_gwtproject_typedarrays//jar",
        "@org_gwtproject_xhr//jar",
        "@org_jboss_gwt_elemento_elemento_core//jar",
        "@org_jboss_gwt_elemento_elemento_template_api//jar",
        "@org_jboss_gwt_elemento_elemento_template_processor//jar",
    ],
)

java_plugin(
    name = "nalu_processor_plugin",
    processor_class = "com.github.nalukit.nalu.processor.NaluProcessor",
    deps = [
        "@com_github_nalukit_nalu//jar",
        "@com_github_nalukit_nalu_processor//jar",
        "@com_google_gson_gson//jar",
        "@com_squareup_javapoet//jar",
    ],
)

java_library(
    name = "nalu_processor",
    exported_plugins = [
        ":nalu_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@com_github_nalukit_nalu_processor//jar"],
)

java_plugin(
    name = "object_mapper_processor_plugin",
    processor_class = "org.dominokit.jacksonapt.processor.ObjectMapperProcessor",
    deps = [
        "@com_google_auto_auto_common//jar",
        "@com_google_auto_service_auto_service//jar",
        "@com_squareup_javapoet//jar",
        "@maven//:org_dominokit_jackson_jackson_apt",
        "@org_dominokit_jackson_jackson_apt_processor//jar",
        "@org_dominokit_jackson_jackson_super//jar",
    ],
)

java_library(
    name = "object_mapper_processor",
    exported_plugins = [
        ":object_mapper_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@org_dominokit_jackson_jackson_apt_processor//jar"],
)

java_plugin(
    name = "json_registration_processor_plugin",
    processor_class = "org.dominokit.jacksonapt.processor.registration.JSONRegistrationProcessor",
    deps = [
        "@com_google_auto_auto_common//jar",
        "@com_google_auto_service_auto_service//jar",
        "@com_squareup_javapoet//jar",
        "@maven//:org_dominokit_jackson_jackson_apt",
        "@org_dominokit_jackson_jackson_apt_processor//jar",
        "@org_dominokit_jackson_jackson_super//jar",
    ],
)

java_library(
    name = "json_registration_processor",
    exported_plugins = [
        ":json_registration_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@org_dominokit_jackson_jackson_apt_processor//jar"],
)

java_plugin(
    name = "org_dominokit_domino_rest_processor_plugin",
    processor_class = "org.dominokit.domino.rest.apt.RequestFactoryProcessor",
    deps = [
        "@com_google_auto_auto_common//jar",
        "@com_google_auto_service_auto_service//jar",
        "@com_squareup_javapoet//jar",
        "@javax_annotation_javax_annotation_api//jar",
        "@org_dominokit_domino_apt_commons//jar",
        "@org_dominokit_domino_history_shared//jar",
        "@org_dominokit_domino_rest_apt//jar",
        "@org_dominokit_domino_rest_shared//jar",
        "@org_dominokit_jackson_jackson_apt_processor//jar",
        "@org_dominokit_jaxrs_super//jar",
    ],
)

java_library(
    name = "org_dominokit_domino_rest_processor",
    exported_plugins = [
        ":org_dominokit_domino_rest_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@org_dominokit_domino_rest_apt//jar"],
)
