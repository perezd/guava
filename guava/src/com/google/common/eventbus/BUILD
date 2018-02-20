package(default_visibility = ["//visibility:public"])

java_library(
    name = "eventbus",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:j2objc/annotations",
        "//external:jsr305",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/base",
        "//guava/src/com/google/common/cache",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/reflect",
        "//guava/src/com/google/common/util/concurrent",
    ],
)
