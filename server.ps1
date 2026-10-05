# Servidor estático local para pré-visualizar a landing.
# Uso: powershell -NoProfile -ExecutionPolicy Bypass -File server.ps1
$port = 8099
$root = $PSScriptRoot
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
Write-Host "Servindo $root em http://localhost:$port/"
while ($listener.IsListening) {
  $ctx = $listener.GetContext()
  $rel = [System.Uri]::UnescapeDataString($ctx.Request.Url.LocalPath).TrimStart('/')
  if ([string]::IsNullOrEmpty($rel)) { $rel = 'index.html' }
  $file = Join-Path $root $rel
  if (Test-Path $file -PathType Leaf) {
    $bytes = [System.IO.File]::ReadAllBytes($file)
    $ext = [System.IO.Path]::GetExtension($file).ToLower()
    switch ($ext) {
      '.html' { $ct = 'text/html; charset=utf-8' }
      '.css'  { $ct = 'text/css; charset=utf-8' }
      '.js'   { $ct = 'application/javascript; charset=utf-8' }
      '.png'  { $ct = 'image/png' }
      '.jpg'  { $ct = 'image/jpeg' }
      '.jpeg' { $ct = 'image/jpeg' }
      '.webp' { $ct = 'image/webp' }
      '.svg'  { $ct = 'image/svg+xml' }
      default { $ct = 'application/octet-stream' }
    }
    $ctx.Response.ContentType = $ct
    $ctx.Response.ContentLength64 = $bytes.Length
    $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
  } else {
    $ctx.Response.StatusCode = 404
  }
  $ctx.Response.Close()
}
