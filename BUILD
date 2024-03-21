


cc_library(
    name = "tinyxml2",
    srcs = ["tinyxml2.cpp"],
    hdrs = ["tinyxml2.h"],
    visibility = ["//visibility:public"],
    copts = select({
        "//conditions:default": [],
        "@bazel_tools//src/conditions:windows": ["/D_CRT_SECURE_NO_WARNINGS"],
    }) + [
        "-D_FILE_OFFSET_BITS=64",
        "-fvisibility=hidden",
        "-fvisibility-inlines-hidden",
    ],
    defines = select({
        "//conditions:default": [],
        "//build_settings:debug_build": ["TINYXML2_DEBUG"],
        "//build_settings:release_build": [],
    }),
)

cc_test(
    name = "xmltest",
    srcs = ["xmltest.cpp"],
    deps = [":tinyxml2"],
    data = ["//resources:test_resources"],
)