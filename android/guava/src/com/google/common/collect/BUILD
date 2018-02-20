package(default_visibility = ["//visibility:public"])

java_library(
    name = "collect",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/math",
        "//android/guava/src/com/google/common/primitives",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:j2objc/annotations",
    ],
)
