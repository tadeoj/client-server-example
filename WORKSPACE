workspace(name = "client_server_example")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

RULES_JVM_EXTERNAL_TAG = "2.0.1"
RULES_JVM_EXTERNAL_SHA = "55e8d3951647ae3dffde22b4f7f8dee11b3f70f3f89424713debd7076197eaca"

http_archive(
    name = "rules_jvm_external",
    strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    sha256 = RULES_JVM_EXTERNAL_SHA,
    url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
)

load("//bazel:client_server_example_deps.bzl", "client_server_example_deps", "generated_maven_jars")

client_server_example_deps()

generated_maven_jars()

# Load GWT
load("@gwt_2_8_2//bazel:gwt_2_8_2_deps.bzl", gwt_generated_maven_jars = "generated_maven_jars")

gwt_generated_maven_jars()
