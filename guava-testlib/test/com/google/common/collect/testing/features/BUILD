java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//external:junit",
        "//external:truth",
        "//guava-testlib/src/com/google/common/collect/testing",
        "//guava/src/com/google/common/annotations",
        "//guava/src/com/google/common/collect",
        "//guava/src/com/google/common/util/concurrent",
    ],
)

TEST_CASES = [
    "FeatureEnumTest",
    "FeatureUtilTest",
]

[java_test(
    name = "%s" % name,
    size = "small",
    timeout = "moderate",
    test_class = "com.google.common.collect.testing.features.%s" % name,
    runtime_deps = [":tests"],
) for name in TEST_CASES]
