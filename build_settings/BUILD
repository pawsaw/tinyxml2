# In build_settings/BUILD
load("@bazel_skylib//rules:common_settings.bzl", "bool_flag")

bool_flag(
    name = "debug",
    build_setting_default = False,
)

config_setting(
    name = "debug_build",
    flag_values = {
        ":debug": "true",
    },
)

config_setting(
    name = "release_build",
    flag_values = {
        ":debug": "false",
    },
)
