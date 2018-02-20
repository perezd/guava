package(default_visibility = ["//visibility:public"])

java_library(
    name = "testing",
    srcs = glob(
        ["*.java"],
        exclude = ["package-info.java"],
    ),
    deps = [
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/escape",
        "//external:junit",
    ],
)
