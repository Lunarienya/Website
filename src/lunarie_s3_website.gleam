import gleam/io
import gleam/uri.{type Uri}
import lustre
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import lustre/effect.{type Effect}
import modem
import plinth/browser/window

import config

import web/pages/home
import web/pages/setup
import web/pages/not_found

pub fn main() {
	let app = lustre.application(init, update, view)
	let assert Ok(_) = lustre.start(app, "#app", 0)
}

pub type Route {
	Home
	Setup
	NotFound
}

fn init(_) -> #(Route, Effect(Msg)) {
	let assert Ok(location_uri) = uri.parse(window.location())
	io.debug(location_uri)

	#(location_to_route(location_uri), modem.init(on_url_change))
}

fn location_to_route(uri: Uri) -> Route {
	case uri.path_segments(uri.path) {
		[] -> Home
		["setup"] -> Setup
		_ -> NotFound
	}
}

fn on_url_change(uri: Uri) -> Msg {
	OnRouteChange(location_to_route(uri))
}

pub type Msg {
	OnRouteChange(Route)
}

fn update(_, msg: Msg) -> #(Route, Effect(Msg)) {
	case msg {
		OnRouteChange(route) -> #(route, effect.none())
	}
}

fn view(route: Route) -> Element(Msg) {
	let page = case route {
		Home -> home.page()
		Setup -> setup.page()
		NotFound -> not_found.page()
	}

	html.div([attribute.class("h-screen")], [
		html.nav([attribute.class("bg-zinc-950 w-full" <> case route {
			Home -> " absolute"
			_ -> ""
		})], [
			html.div([attribute.class("max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4")], [
				html.a([attribute.href("/"), attribute.class("flex items-center space-x-3")], [
					html.img([
						attribute.src(config.logo()),
						attribute.class("h-12")
					]),
					html.span([
						attribute.class("self-center text-2xl font-bold dark:text-white")
					], [
						element.text("Lunarie")
					]),
				]),
			])
		]),
		page
	])
}
