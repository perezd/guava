java_library(
    name = "tests",
    srcs = glob(["*.java"]),
    deps = [
        "//android/guava-testlib/src/com/google/common/collect/testing",
        "//android/guava-testlib/src/com/google/common/testing",
        "//android/guava/src/com/google/common/annotations",
        "//android/guava/src/com/google/common/base",
        "//android/guava/src/com/google/common/collect",
        "//android/guava/src/com/google/common/io",
        "//android/guava/src/com/google/common/math",
        "//android/guava/src/com/google/common/primitives",
        "//android/guava/src/com/google/common/reflect",
        "//android/guava/src/com/google/common/util/concurrent",
        "//external:checker_framework/annotations",
        "//external:error_prone/annotations",
        "//external:junit",
        "//external:mockito",
        "//external:truth",
        "//external:truth/java8",
    ],
)

load("//:defs.bzl", "java_tests")

java_tests(
    test_package = "com.google.common.collect",
    test_srcs = glob(
        [
            "*Test.java",
            "*Tests.java",
        ],
        exclude = [
            "AbstractImmutableSetTest.java",
            "AbstractImmutableTableTest.java",
            "AbstractMultimapAsMapImplementsMapTest.java",
            "AbstractRangeSetTest.java",
            "AbstractTableReadTest.java",
            "AbstractTableTest.java",
        ],
    ),
    runtime_deps = [
        ":tests",
        "//external:bytebuddy",
        "//external:objenesis",
    ],
)
