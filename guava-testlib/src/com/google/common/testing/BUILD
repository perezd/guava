package(default_visibility = ["//visibility:public"])

java_library(
    name = "testing",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:j2objc/annotations",
        "//external:junit",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/io",
        "//guava/src/com/google/common/primitives",
        "//guava/src/com/google/common/reflect",
    ],
)
