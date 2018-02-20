package(default_visibility = ["//visibility:public"])

java_library(
    name = "cache",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//external:animal_sniffer/annotations",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:j2objc/annotations",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/primitives",
        "//guava/src/com/google/common/util/concurrent",
    ],
)
