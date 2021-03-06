function main(splash)
  local url = splash.args.url
  local cookies = splash.args.cookies
  local wait = 2.0
  splash:init_cookies(cookies)
  assert(splash:go(url))
  assert(splash:wait(wait))
  assert(splash:wait(wait))
  return {
    html = splash:html(),
    png = splash:png(),
    cookies = splash:get_cookies(),
    url = splash:evaljs("window.location.href")
  }
end