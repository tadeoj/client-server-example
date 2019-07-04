package(default_visibility = ["//visibility:public"])

java_binary(
    name = "server-example",
    srcs = glob(["src/main/java/**/*.java"]),
    main_class = "com.github.tadeoj.server.example.ServerRest",
    resources = glob(["src/main/resources/*.xml"]),
    deps = [
        "@maven//:com_google_code_gson_gson",
        "@maven//:io_netty_netty_buffer",
        "@maven//:io_netty_netty_codec",
        "@maven//:io_netty_netty_codec_http",
        "@maven//:io_netty_netty_codec_http2",
        "@maven//:io_netty_netty_codec_socks",
        "@maven//:io_netty_netty_common",
        "@maven//:io_netty_netty_handler",
        "@maven//:io_netty_netty_handler_proxy",
        "@maven//:io_netty_netty_resolver",
        "@maven//:io_netty_netty_tcnative_boringssl_static",
        "@maven//:io_netty_netty_transport",
        "@maven//:io_vertx_vertx_core",
        "@maven//:io_vertx_vertx_web",
        "@maven//:io_vertx_vertx_web_common",
    ],
)
