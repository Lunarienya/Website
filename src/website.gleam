import gleam/io
import gleam/uri.{type Uri}
import lustre
import lustre/attribute
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html
import modem
import plinth/browser/window

import config

import web/components/button.{button}
import web/pages/downloads
import web/pages/home
import web/pages/not_found

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", 0)
}

pub type Route {
  Home
  Downloads
  NotFound
}

fn init(_) -> #(Route, Effect(Msg)) {
  let assert Ok(location_uri) = uri.parse(window.location())
  io.debug(location_uri)

  #(location_to_route(location_uri), modem.init(on_url_change))
}

fn location_to_route(uri: Uri) -> Route {
  io.debug(uri.path)
  case uri.path {
    "/" -> Home
    "/downloads" -> Downloads
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
    Downloads -> downloads.page()
    NotFound -> not_found.page()
  }

  html.body([], [
    //html.nav([attribute.class("fixed top-0 left-0 w-full bg-zinc-950 text-white z-50 p-4")], [
    //	html.div([attribute.class("container mx-auto")], [
    //		html.a([attribute.href("/"), attribute.class("font-bold text-xl flex")], [
    //			html.img([
    //				attribute.src(config.logo()),
    //				attribute.class("h-12")
    //			]),
    //			html.span([
    //				attribute.class("self-center text-2xl font-bold dark:text-white")
    //			], [
    //				element.text("Lunarie"),
    //			]),
    //		]),
    //	]),
    //]),
    page,
  ])
}
