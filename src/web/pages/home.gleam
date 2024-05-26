import lustre/attribute.{attribute}
import lustre/element
import lustre/element/html

import web/components/button.{button}
import config

pub fn page() {
	html.div([attribute.class("h-full")], [
		html.main([attribute.class("font-['Poppins'] flex flex-col h-full")], [
			html.div([attribute.class("flex flex-col flex-grow items-center justify-center gap-4")], [
				html.div([attribute.class("flex items-center gap-3")], [
					html.img([
						attribute.src(config.logo()),
						attribute.class("h-28")
					]),
					html.div([], [
						html.h1([attribute.class("font-bold text-6xl")], [element.text("Lunarie")]),
						html.div([attribute.class("self-center font-bold text-xs rounded py-0.5 px-1 bg-violet-600")], [element.text("Season 2")])
					])
				]),
				html.h1([attribute.class("font-bold text-3xl")], [element.text("Welcome to a new era.")]),
				html.div([attribute.class("flex gap-2")], [
					html.a([attribute.href("/setup")], [
						button([button.md(), button.solid(button.Primary)], [element.text("Setup")])
					])
				])
			]),
			html.img([
				attribute.src("/priv/static/wave.svg"),
				attribute.class("mt-auto")
			])
		]),
	])
}
