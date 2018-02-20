package(default_visibility = ["//visibility:public"])

java_library(
    name = "testing",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//external:junit",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/escape",
    ],
)
