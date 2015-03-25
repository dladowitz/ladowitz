use Rack::Static,
  :urls => ["/images", "/js", "/css", "/bootstrap", "/fonts", "/php" ],
  :root => "public"

run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/index.html', File::RDONLY)
    ]
  }
