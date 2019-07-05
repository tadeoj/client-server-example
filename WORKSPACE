workspace(name = "client_server_example")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "2.3"

RULES_JVM_EXTERNAL_SHA = "375b1592e3f4e0a46e6236e19fc30c8020c438803d4d49b13b40aaacd2703c30"

http_archive(
    name = "rules_jvm_external",
    sha256 = RULES_JVM_EXTERNAL_SHA,
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("//bazel:client_server_example_deps.bzl", "client_server_example_deps", "generated_maven_jars")

client_server_example_deps()

generated_maven_jars()

# Load GWT
load("@gwt_2_8_2//bazel:gwt_2_8_2_deps.bzl", gwt_generated_maven_jars = "generated_maven_jars")

gwt_generated_maven_jars()
