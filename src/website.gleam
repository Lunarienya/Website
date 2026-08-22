import gleam/io
import gleam/uri.{type Uri}
import lustre
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html
import modem
import plinth/browser/window

import web/pages/home
import web/pages/not_found

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", 0)
}

pub type Route {
  Home
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
    NotFound -> not_found.page()
  }

  html.body([], [
    page,
  ])
}
