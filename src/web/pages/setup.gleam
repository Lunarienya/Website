import lustre/attribute.{attribute}
import lustre/element
import lustre/element/html

import web/components/button.{button}
import config

pub fn page() {
	html.div([attribute.class("m-5")], [
		html.section([attribute.class("")], [
			html.h1([attribute.class("my-4 font-['Poppins'] font-bold text-3xl")], [element.text("Step 1: Launcher (Acquiring Minecraft)")]),
			html.p([attribute.class("my-2")], [
				element.text("Firstly: Download Prism Launcher via the button below if you "),
				html.span([attribute.class("font-bold")], [element.text("DO NOT")]),
				element.text(" own an "),
				html.span([attribute.class("font-bold")], [element.text("official Minecraft account")]),
				element.text(" , which is likely the case.")
			]),
			html.a([attribute.href("https://github.com/Diegiwg/PrismLauncher-Cracked/releases/download/7.1/PrismLauncher-Windows-MSVC-Setup-7.1.exe")], [
				button([button.sm(), button.solid(button.Primary)], [element.text("Download Prism Launcher")])
			]),
			html.iframe([
				attribute.class("my-2"),
				attribute.src("https://www.youtube.com/embed/CA2fdUzChCo?si=fHHRLvHsM5d0wr9n"),
				attribute.width(560),
				attribute.height(315),
				attribute.attribute("title", "YouTube video player"),
				attribute.attribute("frameborder", "0"),
				attribute.attribute("allow", "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"),
				attribute.attribute("reffererpolicy", "strict-origin-when-cross-origin"),
				attribute.attribute("allowfullscreen", "")
			]),
			html.p([attribute.class("my-2")], [
				element.text("Watch the video above on how to install Prism Launcher, which is
				the supported method of getting the modpack required to join the server.
				Afterwards, setup an offline/cracked account by following the video below."),
			]),
			html.video([attribute.attribute("controls", ""), attribute.class("max-h-96")], [
				html.source([attribute.src("https://safe.saya.moe/RoC8CxRvSpHb.mp4")])
			])
		]),
		html.section([attribute.class("")], [
			html.h1([attribute.class("my-4 font-['Poppins'] font-bold text-3xl")], [element.text("Step 2: Getting Mods")]),
			html.a([
				attribute.href("https://github.com/Lunarienya/ContentModpack/raw/master/Lunarie.zip"),
			], [
				button([button.sm(), button.solid(button.Primary)], [element.text("Download Instance")])
			]),
			html.p([attribute.class("my-3")], [
				element.text("Download an \"instance\" with the button above, then drag and
				drop it on to Prism Launcher. Next, all you have to do is launch the instance (you can find it, right?)."),
				html.br([]),
				element.text("The server will already be in the multiplayer list.")
			])
		])
	])
}

