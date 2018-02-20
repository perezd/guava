package(default_visibility = ["//visibility:public"])

java_library(
    name = "cache",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/primitives",
        "//android/guava/src/com/google/common/util/concurrent",
        "//external:animal_sniffer/annotations",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:j2objc/annotations",
    ],
)
