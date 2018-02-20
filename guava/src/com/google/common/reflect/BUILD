package(default_visibility = ["//visibility:public"])

java_library(
    name = "reflect",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//external:animal_sniffer/annotations",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/io",
        "//guava/src/com/google/common/primitives",
    ],
)
