package(default_visibility = ["//visibility:public"])

java_library(
    name = "base",
    srcs = glob(
        ["**/*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//android/guava/src/com/google/common/annotations",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
    ],
)
