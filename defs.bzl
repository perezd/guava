def guava_dependencies():
    guava_src_dependencies()
    guava_test_dependencies()

def guava_src_dependencies():
    native.http_archive(
        name = "error_prone",
        url = "https://github.com/google/error-prone/archive/v2.2.0.zip",
        strip_prefix = "error-prone-2.2.0",
        sha256 = "0320a7136e6538a3a1ae66c493e6d8c2277b4154c2b46f2d658706b7005f7f36",
    )

    native.bind(
        name = "error_prone/annotations",
        actual = "@error_prone//annotations",
    )

    native.maven_jar(
        name = "checker_framework_annotations",
        artifact = "org.checkerframework:checker-compat-qual:2.3.2",
    )

    native.bind(
        name = "checker_framework/annotations",
        actual = "@checker_framework_annotations//jar",
    )

    native.maven_jar(
        name = "j2objc_annotations",
        artifact = "com.google.j2objc:j2objc-annotations:1.3",
    )

    native.bind(
        name = "j2objc/annotations",
        actual = "@j2objc_annotations//jar",
    )

    native.maven_jar(
        name = "animal_sniffer_annotations",
        artifact = "org.codehaus.mojo:animal-sniffer-annotations:1.16",
    )

    native.bind(
        name = "animal_sniffer/annotations",
        actual = "@animal_sniffer_annotations//jar",
    )

    native.maven_jar(
        name = "jsr305_annotations",
        artifact = "com.google.code.findbugs:jsr305:1.3.9",
    )

    native.bind(
        name = "jsr305",
        actual = "@jsr305_annotations//jar",
    )

def guava_test_dependencies():
    native.maven_jar(
        name = "junit_jar",
        artifact = "junit:junit:4.12",
    )

    native.bind(
        name = "junit",
        actual = "@junit_jar//jar",
    )
    
    native.maven_jar(
        name = "truth_jar",
        artifact = "com.google.truth:truth:0.39",
    )

    native.bind(
        name = "truth",
        actual = "@truth_jar//jar",
    )

    native.maven_jar(
        name = "truth_java8_jar",
        artifact = "com.google.truth.extensions:truth-java8-extension:0.39",
    )

    native.bind(
        name = "truth/java8",
        actual = "@truth_java8_jar//jar",
    )

    native.maven_jar(
        name = "mockito_jar",
        artifact = "org.mockito:mockito-core:2.7.19",
    )

    native.bind(
        name = "mockito",
        actual = "@mockito_jar//jar",
    )

    native.maven_jar(
        name = "easymock_jar",
        artifact = "org.easymock:easymock:3.5.1",
    )

    native.bind(
        name = "easymock",
        actual = "@easymock_jar//jar",
    )

    native.maven_jar(
        name = "bytebuddy_jar",
        artifact = "net.bytebuddy:byte-buddy:1.7.9",
    )

    native.bind(
        name = "bytebuddy",
        actual = "@bytebuddy_jar//jar",
    )

    native.maven_jar(
        name = "objenesis_jar",
        artifact = "org.objenesis:objenesis:2.6",
    )

    native.bind(
        name = "objenesis",
        actual = "@objenesis_jar//jar",
    )

    native.maven_jar(
        name = "jimfs_jar",
        artifact = "com.google.jimfs:jimfs:1.1",
    )

    native.bind(
        name = "jimfs",
        actual = "@jimfs_jar//jar",
    )

# Simple macro for reliably creating test suites.
def java_tests(
        test_package = "",
        test_srcs = [],
        runtime_deps = [],
        disable_security_manager = False,
        size = "small",
        timeout = "moderate",
        jvm_flags = [],
):
    # Some tests require the security manager to be disabled
    # to operate properly.
    if (disable_security_manager):
        jvm_flags = jvm_flags + ["-Dcom.google.testing.junit.runner.shouldInstallTestSecurityManager=false"]
        
    [native.java_test(
        name = name,
        size = size,
        timeout = timeout,
        jvm_flags = jvm_flags,
        runtime_deps = runtime_deps,
        test_class = "%s.%s" % (test_package, name),
    ) for name in _extract_test_names(test_srcs)]

def _extract_test_names(test_srcs):
    return [name.replace(".java", "") for name in test_srcs]
