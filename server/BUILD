package(default_visibility = ["//visibility:public"])

java_binary(
    name = "server-example",
    srcs = glob(["src/main/java/**/*.java"]),
    main_class = "com.github.tadeoj.server.example.ServerRest",
    resources = glob(["src/main/resources/*.xml"]),
    deps = [
        "@io_netty_netty_buffer//jar",
        "@io_netty_netty_codec//jar",
        "@io_netty_netty_codec_http//jar",
        "@io_netty_netty_codec_http2//jar",
        "@io_netty_netty_codec_socks//jar",
        "@io_netty_netty_common//jar",
        "@io_netty_netty_handler//jar",
        "@io_netty_netty_handler_proxy//jar",
        "@io_netty_netty_resolver//jar",
        "@io_netty_netty_tcnative_boringssl_static//jar",
        "@io_netty_netty_transport//jar",
        "@io_vertx_vertx_core//jar",
        "@io_vertx_vertx_web//jar",
        "@io_vertx_vertx_web_common//jar",
    ],
)
