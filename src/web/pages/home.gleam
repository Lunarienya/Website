import lustre/attribute.{attribute}
import lustre/element
import lustre/element/html

import web/components/button.{button}
import config

pub fn page() {
	html.div([attribute.class("h-full")], [
		html.main([attribute.class("font-['Poppins'] flex flex-col h-full")], [
			html.div([attribute.class("flex flex-col flex-grow justify-center gap-4")], [
				html.div([attribute.class("flex flex-col items-center gap-2")], [
					html.div([attribute.class("flex flex-row flex-grow items-center gap-3")], [
						html.img([
							attribute.src(config.logo()),
							attribute.class("h-28")
						]),
						html.div([], [
							html.h1([attribute.class("font-bold text-6xl")], [element.text("Lunarie")]),
							html.div([attribute.class("self-center font-bold text-xs rounded py-0.5 px-1 bg-rose-500")], [element.text("X: Zenless")])
						]),
					]),
					html.h1([attribute.class("font-bold text-3xl")], [element.text("Redemption.")]),
					html.div([attribute.class("flex gap-2")], [
						html.a([attribute.href(config.modpack_link())], [
							button([button.md(), button.solid(button.Primary)], [element.text("Download Support Package")])
						]),
						html.a([attribute.href("https://elysium.lunarie.party")], [
							button([button.md(), button.solid(button.Neutral)], [element.text("Elysium")])
						])
					]),
				]),
				html.section([], [
					html.div([attribute.class("py-2 px-2 mx-auto max-w-screen-xl lg:px-3")], [
						html.div([attribute.class("max-w-screen-lg text-gray-500 sm:text-lg dark:text-gray-400")], [
							html.h2([attribute.class("mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("What is Lunarie?")]),
							html.p([attribute.class("mb-4 text-light")], [
								element.text("
								Lunarie is a small invite-only Minecraft server and community of people who talk about
								the game on a semi-regular basis. There have been 4 iterations of the Lunarie survival server.
								")
							])
						])
					])
				]),
				html.section([], [
					html.div([attribute.class("py-2 px-2 mx-auto max-w-screen-xl lg:px-3")], [
						html.div([attribute.class("max-w-screen-lg text-gray-500 sm:text-lg dark:text-gray-400")], [
							html.h2([attribute.class("mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("How Do I Play?")]),
							html.p([attribute.class("mb-4 text-light")], [
								element.text("Download the support package with the appropriately labelled 
								button at the top of this website. It includes the recommended launcher,
								java version, and mod pack.
								
								Once all of those have been setup, you can simply launch the game and the server
								will already be in the server list.
								
								To manage the account you will be using to play on Lunarie, you can visit Elysium
								with the button named at the top of the page."),
							])
						])
					])
				]),
				html.section([], [
					html.div([attribute.class("py-2 px-2 mx-auto max-w-screen-xl lg:px-3")], [
						html.div([attribute.class("max-w-screen-lg text-gray-500 sm:text-lg dark:text-gray-400")], [
							html.h2([attribute.class("mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("History")]),
							html.p([attribute.class("mb-4 text-light")], [
								element.text("
								Lunarie started from some random high school friends who wanted to play Minecraft together,
								as most Minecraft servers start. At first, the \"Season 1\" was hosted on Aternos. It was a
								(mostly) Vanilla server, with a few mods for quality of life.

								Season 2 was not on Aternos (wow!) but the server was still underpowered so it used to lag,
								and this time there were a bit more mods. It lasted for 1 month, until the server had to renew.

								For Season 3, there was an idea of using an Earth map which would've added some interesting roleplay
								based on countries, but it turns out the execution of it didn't go too well, some things had to be
								done to accomodate mods like Ad Astra and the players ended up not liking it while playing (and the
								Pebblehost server was terrible, they will be called out.)

								Season 3 iteration 2 was a normal map, modded server that had some issues with ping due to the
								server being in the UK and Lunarie being a community of Grenadian players. And it was laggy anyway.
								")
							])
						])
					])
				]),
				html.section([], [
					html.div([attribute.class("py-2 px-2 mx-auto max-w-screen-xl lg:px-3")], [
						html.div([attribute.class("max-w-screen-lg text-gray-500 sm:text-lg dark:text-gray-400")], [
							html.h2([attribute.class("mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("This time, it's Zenless.")]),
							html.p([attribute.class("mb-4 text-light")], [
								element.text("Lunarie X will be different."),
								html.br([]),
								element.text("
								In the previous season, a mod called Client Key Login was used
								for authentication, since Lunarie does not require players to buy Minecraft.
								But this time, there is a custom authentication server which will be a lot
								more seamless and feel like the real thing.
								"),
								html.br([]),
								element.text("There's also going to be a bit of preliminary admin effort before
								launch, so it'll actually work a lot better this time and be more optimized!")
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

