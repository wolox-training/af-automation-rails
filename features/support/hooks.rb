Before do
    chromedriver_path = File.join(File.absolute_path(''), 'chromedriver')
    Selenium::WebDriver::Chrome::Service.driver_path = chromedriver_path
    options = Selenium::WebDriver::Chrome::Options.new(args:['--incognito','--disable-popup-blocking','binary_location=/var/task/bin/headless-chromium'], prefs: { "disable-popup-blocking":"true"})
    $driver = Selenium::WebDriver.for(:chrome, options: options)
    url = ENV['URL']
    $driver.get(url)
    $driver.manage.window.maximize
end

After do
    $driver.manage.delete_all_cookies
    $driver.local_storage.clear
    $driver.quit
    sleep 1
end