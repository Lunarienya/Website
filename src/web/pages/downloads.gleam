import lustre/attribute.{attribute}
import lustre/element
import lustre/element/html

import web/components/button.{button}
import config

// https://github.com/Lunarienya/ElysiumLauncher/releases/download/latest/<Release>

const version = "v1.0"

type InstallType {
	WindowsInstaller
	WindowsPortable
	MacOSIntelInstaller
	MacOSArmInstaller
	LinuxAppimageInstaller
	LinuxPortableInstaller
	LinuxPortableQt5Installer
}

fn install_link(typ: InstallType) {
	case typ {
		WindowsInstaller -> "https://github.com/Lunarienya/ElysiumLauncher/releases/download/" <> version <> "/ElysiumLauncher-Windows-MSVC-Setup-" <> version <> ".exe"
		WindowsPortable -> ""
		MacOSIntelInstaller -> ""
		MacOSArmInstaller -> ""
		LinuxAppimageInstaller -> ""
		LinuxPortableInstaller -> ""
		LinuxPortableQt5Installer -> ""
	}
}

const windows_portable_link = ""

const macos_x86_installer = ""
const macos_arm_installer = ""

const linux_appimage = ""
const linux_portable = ""
const linux_portable_qt5 = ""

pub fn page() {
	html.div([attribute.class("h-full")], [
		html.main([attribute.class("font-['Poppins'] flex flex-col h-full")], [
			html.div([attribute.class("flex flex-col flex-grow justify-center gap-4")], [
				html.section([], [
					html.div([attribute.class("py-2 px-2 mx-auto max-w-screen-xl lg:px-3")], [
						html.div([attribute.class("max-w-screen-lg text-gray-500 sm:text-lg dark:text-gray-400")], [
							html.section([attribute.class("mb-4")], [
								html.h2([attribute.class("mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Modpacks")]),
								html.p([attribute.class("mb-4 text-light")], [
									element.text("To use the modpack, install the launcher, and then drag and drop the ZIP (WITHOUT EXTRACTING) onto the launcher window.")
								]),
								html.a([attribute.href(config.modpack_link())], [
									button([button.md(), button.solid(button.Primary)], [element.text("Tempest")])
								]),
							]),
							html.section([attribute.class("mb-4")], [
								html.h2([attribute.class("mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Elysium Launcher")]),
								html.p([attribute.class("mb-4 text-light")], [
									element.text("To play on Lunarie servers, the Elysium Launcher is required.
									It's the supported launcher and makes installing modpacks easy.")
								]),
								html.section([attribute.class("mb-4")], [
									html.h2([attribute.class("mb-4 text-2xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Recommended Downloads")]),
									html.div([attribute.class("flex gap-3")], [
										html.a([attribute.href(install_link(WindowsInstaller))], [
											button([button.md(), button.solid_os(button.Windows)], [
												html.span([attribute.class("icon-windows8")], []),
												element.text("Win Installer (.exe)")
											])
										]),
										html.a([attribute.href(macos_x86_installer)], [
											button([button.md(), button.solid_os(button.MacOS)], [
												html.span([attribute.class("icon-finder")], []),
												element.text("Mac Intel/x86_64 installer")
											])
										]),
										html.a([attribute.href(macos_arm_installer)], [
											button([button.md(), button.solid_os(button.MacOS)], [
												html.span([attribute.class("icon-finder")], []),
												element.text("Mac M1/ARM installer")
											])
										]),
										html.a([attribute.href(linux_appimage)], [
											button([button.md(), button.solid_os(button.MacOS)], [
												html.span([attribute.class("icon-tux")], []),
												element.text("Linux AppImage")
											])
										]),
										html.a([attribute.href(linux_portable)], [
											button([button.md(), button.solid_os(button.MacOS)], [
												html.span([attribute.class("icon-tux")], []),
												element.text("Linux Portable (.tar.gz)")
											])
										]),
									])
								]),
								html.details([], [
									html.summary([], [
										html.h2([attribute.class("mb-4 text-2xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("All Downloads")]),
									]),
									html.section([attribute.class("mb-4")], [
										html.h2([attribute.class("text-xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Windows x86_64")]),
										html.span([attribute.class("mb-4 text-light")], [element.text("The recommended option is the Installer (.exe)")]),
										html.div([attribute.class("flex gap-4")], [
											html.a([attribute.href(install_link(WindowsInstaller))], [
												button([button.md(), button.solid_os(button.Windows)], [
													html.span([attribute.class("icon-windows8")], []),
													element.text("Installer (.exe)")
												])
											]),
											html.a([attribute.href(windows_portable_link)], [
												button([button.md(), button.solid_os(button.Windows)], [
													html.span([attribute.class("icon-windows8")], []),
													element.text("Portable (.zip)")
												])
											])
										])
									]),
									html.section([attribute.class("mb-4")], [
										html.h2([attribute.class("text-xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("MacOS")]),
										html.span([attribute.class("mb-4 text-light")], [element.text("Pick the option that is appropriate based on the Mac you have. Either Intel based or ARM/M1.")]),
										html.div([attribute.class("flex gap-4")], [
											html.a([attribute.href(macos_x86_installer)], [
												button([button.md(), button.solid_os(button.MacOS)], [
													html.span([attribute.class("icon-finder")], []),
													element.text("Intel/x86_64 installer")
												])
											]),
											html.a([attribute.href(macos_arm_installer)], [
												button([button.md(), button.solid_os(button.MacOS)], [
													html.span([attribute.class("icon-finder")], []),
													element.text("M1/ARM installer")
												])
											])
										])
									]),
									html.section([attribute.class("mb-4")], [
										html.h2([attribute.class("text-xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Linux")]),
										html.span([attribute.class("mb-4 text-light")], [element.text("You should know.")]),
										html.div([attribute.class("flex gap-4")], [
											html.a([attribute.href(linux_appimage)], [
												button([button.md(), button.solid_os(button.MacOS)], [
													html.span([attribute.class("icon-tux")], []),
													element.text("AppImage")
												])
											]),
											html.a([attribute.href(linux_portable)], [
												button([button.md(), button.solid_os(button.MacOS)], [
													html.span([attribute.class("icon-tux")], []),
													element.text("Portable (.tar.gz)")
												])
											]),
											html.a([attribute.href(linux_portable_qt5)], [
												button([button.md(), button.solid_os(button.MacOS)], [
													html.span([attribute.class("icon-tux")], []),
													element.text("Portable, Qt 5 (.tar.gz)")
												])
											])
										])
									])
								])
							])
						])
					])
				]),
			]),
			html.img([
				attribute.src("/priv/static/wave.svg"),
				attribute.class("mt-auto")
			])
		]),
	])
}
