# Configuration for rules_python_internal (Bazel 7.x)
# Replicates output of rules_python's internal_config_repo for Bazel < 8.
config = struct(
  enable_pystar = False,
  BuiltinPyInfo = getattr(getattr(native, "legacy_globals", None), "PyInfo", "PyInfo"),
  BuiltinPyRuntimeInfo = getattr(getattr(native, "legacy_globals", None), "PyRuntimeInfo", "PyRuntimeInfo"),
  BuiltinPyCcLinkParamsProvider = getattr(getattr(native, "legacy_globals", None), "PyCcLinkParamsProvider", "PyCcLinkParamsProvider"),
)
