from Screenshot import Screenshot_Clipping
import undetected_chromedriver as uc
import time 


uc.install()
from selenium.webdriver import Chrome
driver = Chrome()
driver.get('chrome://settings/')
driver.execute_script('chrome.settingsPrivate.setDefaultZoom(.95);')
ob=Screenshot_Clipping.Screenshot()

driver.get('https://bot.sannysoft.com')
time.sleep(4)
img_url=ob.full_Screenshot(driver, save_path=r'.', image_name='chrome_sannysoft.png')
driver.get('https://antoinevastel.com/bots/')
time.sleep(4)
img_url=ob.full_Screenshot(driver, save_path=r'.', image_name='chrome_antoin.png')
driver.stop_client()
driver.close()
driver.quit()