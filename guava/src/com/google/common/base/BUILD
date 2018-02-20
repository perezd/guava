package(default_visibility = ["//visibility:public"])

java_library(
    name = "base",
    srcs = glob(
        ["**/*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:j2objc/annotations",
        "//guava/src/com/google/common/annotations",
    ],
)
