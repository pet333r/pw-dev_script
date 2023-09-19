declare_plugin("pw-dev script config", {
	installed = true,
	dirName = [[Scripts\pw-dev_script\]],
	developerName = _("pet333r"),
	developerLink = _("http://pw-developer.com/"),
	displayName = _("script cfg @pet333r"),
	version = "23.09",
	state = "installed",
	info = _("The script configurator makes it easier to go through the configuration process in order to connect the application with DCS World"),
	--binaries = {""},--dll goes here 
    load_immediate = true,
	Skins = {
		{ name = "pw-dev", dir = "Theme" },
	},
	Options = {
		{ name = "pw-dev", nameId = "pw-dev script configurator", dir = "Options", allow_in_simulation = true; },
	},
})

plugin_done()