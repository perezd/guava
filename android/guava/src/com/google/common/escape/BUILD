package(default_visibility = ["//visibility:public"])

java_library(
    name = "escape",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
    ],
)
