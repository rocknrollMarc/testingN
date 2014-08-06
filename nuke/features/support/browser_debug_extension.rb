module BrowserDebugExtension
  # add "hang" in your steps to pause the test and open selenium
  def hang
    print "Waiting........ Press return if you wanna continue!!!"

    if ENV['debug'] == 'true'
      page.driver.debug
    else
      STDIN.getc
    end
  end
end
