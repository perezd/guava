package(default_visibility = ["//visibility:public"])

java_library(
    name = "hash",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/math",
        "//guava/src/com/google/common/primitives",
    ],
)
