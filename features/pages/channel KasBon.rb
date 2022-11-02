def channel_eform
  $session = Capybara::Session.new(:iphone)
  $session.visit "http://retailloan.dcidev.id/kasbon/form/ksbe"
  sleep(2)
  # expect_uri "http://retailloan.dcidev.id/kasbon/form/ksbe"
  # expect(status_code)
  # expect(response_headers["Content-Type"]).to eq "text/html; charset=utf-8"
  # expect(response_headers.keys).to include *["Content-Type", "ETag", "Cache-Control", "Set-Cookie", "X-Meta-Request-Version", "X-Request-Id", "X-Runtime", "X-Frame-Options", "X-Content-Type-Options", "X-XSS-Protection", "Referrer-Policy", "Content-Security-Policy", "Transfer-Encoding"]
  puts "landing eform"
end
def channel_reguler
  $session.visit "http://retailloan.dcidev.id/kasbon/form/ksbr"
  sleep(2)
  puts "landing reguler"
end
def channel_staff
  $session.visit "http://retailloan.dcidev.id/kasbon/form/ksbs"
  sleep(2)
  puts "landing staff"
end
def close_form
  $session.quit
  puts "Form Closed"
end