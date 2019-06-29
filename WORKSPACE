workspace(name = "client_server_example")

load("//bazel:client_server_example_deps.bzl", "client_server_example_deps", "generated_maven_jars")

client_server_example_deps()

generated_maven_jars()

# Load GWT
load("@gwt_2_8_2//bazel:gwt_2_8_2_deps.bzl", gwt_generated_maven_jars = "generated_maven_jars")

gwt_generated_maven_jars()
