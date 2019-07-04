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
        "@maven//:com_github_nalukit_nalu",
        "@maven//:com_github_nalukit_nalu_plugin_core_web",
        "@maven//:com_github_nalukit_nalu_plugin_elemental2",
        "@maven//:com_github_nalukit_nalu_processor",
        "@maven//:com_google_auto_auto_common",
        "@maven//:com_google_auto_service_auto_service",
        "@maven//:com_google_elemental2_elemental2_core",
        "@maven//:com_google_elemental2_elemental2_dom",
        "@maven//:com_google_elemental2_elemental2_promise",
        "@maven//:com_google_elemental2_elemental2_svg",
        "@maven//:com_google_elemental2_elemental2_webstorage",
        "@maven//:com_google_jsinterop_base",
        "@maven//:com_squareup_javapoet",
        "@maven//:io_vertx_vertx_web_client",
        "@maven//:org_dominokit_jackson_jackson_apt",
        "@maven//:org_gwtproject_i18n_gwt_cldr",
        "@maven//:org_gwtproject_i18n_gwt_datetimeformat",
        "@maven//:org_dominokit_domino_aggregator_shared",
        "@maven//:org_dominokit_domino_apt_commons",
        "@maven//:org_dominokit_domino_history_gwt",
        "@maven//:org_dominokit_domino_history_shared",
        "@maven//:org_dominokit_domino_rest_apt",
        "@maven//:org_dominokit_domino_rest_gwt",
        "@maven//:org_dominokit_domino_rest_server",
        "@maven//:org_dominokit_domino_rest_shared",
        "@maven//:org_dominokit_domino_slf4j_logger",
        "@maven//:org_dominokit_domino_ui",
        #        "@maven//:org_dominokit_domino_ui_sources//jar",
        "@maven//:org_dominokit_jackson_jackson_apt_processor",
        #        "@maven//:org_dominokit_jackson_jackson_apt_processor_sources//jar",
        "@maven//:org_dominokit_jackson_jackson_super",
        #        "@maven//:org_dominokit_jackson_jackson_super_sources//jar",
        "@maven//:org_dominokit_jaxrs_super",
        "@maven//:org_gwtproject_core_gwt_core",
        "@maven//:org_gwtproject_regexp",
        "@maven//:org_gwtproject_timer_gwt_timer",
        "@maven//:org_gwtproject_typedarrays",
        "@maven//:org_gwtproject_xhr",
        "@maven//:org_jboss_gwt_elemento_elemento_core",
        "@maven//:org_jboss_gwt_elemento_elemento_template_api",
        "@maven//:org_jboss_gwt_elemento_elemento_template_processor",
    ],
)

java_plugin(
    name = "nalu_processor_plugin",
    processor_class = "com.github.nalukit.nalu.processor.NaluProcessor",
    deps = [
        "@maven//:com_github_nalukit_nalu",
        "@maven//:com_github_nalukit_nalu_processor",
        "@maven//:com_google_code_gson_gson",
        "@maven//:com_squareup_javapoet",
    ],
)

java_library(
    name = "nalu_processor",
    exported_plugins = [
        ":nalu_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@maven//:com_github_nalukit_nalu_processor"],
)

java_plugin(
    name = "object_mapper_processor_plugin",
    processor_class = "org.dominokit.jacksonapt.processor.ObjectMapperProcessor",
    deps = [
        "@maven//:com_google_auto_auto_common",
        "@maven//:com_google_auto_service_auto_service",
        "@maven//:com_squareup_javapoet",
        "@maven//:org_dominokit_jackson_jackson_apt",
        "@maven//:org_dominokit_jackson_jackson_apt_processor",
        "@maven//:org_dominokit_jackson_jackson_super",
    ],
)

java_library(
    name = "object_mapper_processor",
    exported_plugins = [
        ":object_mapper_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@maven//:org_dominokit_jackson_jackson_apt_processor"],
)

java_plugin(
    name = "json_registration_processor_plugin",
    processor_class = "org.dominokit.jacksonapt.processor.registration.JSONRegistrationProcessor",
    deps = [
        "@maven//:com_google_auto_auto_common",
        "@maven//:com_google_auto_service_auto_service",
        "@maven//:com_squareup_javapoet",
        "@maven//:org_dominokit_jackson_jackson_apt",
        "@maven//:org_dominokit_jackson_jackson_apt_processor",
        "@maven//:org_dominokit_jackson_jackson_super",
    ],
)

java_library(
    name = "json_registration_processor",
    exported_plugins = [
        ":json_registration_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@maven//:org_dominokit_jackson_jackson_apt_processor"],
)

java_plugin(
    name = "org_dominokit_domino_rest_processor_plugin",
    processor_class = "org.dominokit.domino.rest.apt.RequestFactoryProcessor",
    deps = [
        "@maven//:com_google_auto_auto_common",
        "@maven//:com_google_auto_service_auto_service",
        "@maven//:com_squareup_javapoet",
        "@maven//:javax_annotation_javax_annotation_api",
        "@maven//:org_dominokit_domino_apt_commons",
        "@maven//:org_dominokit_domino_history_shared",
        "@maven//:org_dominokit_domino_rest_apt",
        "@maven//:org_dominokit_domino_rest_shared",
        "@maven//:org_dominokit_jackson_jackson_apt_processor",
        "@maven//:org_dominokit_jaxrs_super",
    ],
)

java_library(
    name = "org_dominokit_domino_rest_processor",
    exported_plugins = [
        ":org_dominokit_domino_rest_processor_plugin",
    ],
    visibility = ["//visibility:public"],
    exports = ["@maven//:org_dominokit_domino_rest_apt"],
)
