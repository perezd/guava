package(default_visibility = ["//visibility:public"])

java_library(
    name = "testing",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/io",
        "//android/guava/src/com/google/common/primitives",
        "//android/guava/src/com/google/common/reflect",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:j2objc/annotations",
        "//external:junit",
    ],
)
