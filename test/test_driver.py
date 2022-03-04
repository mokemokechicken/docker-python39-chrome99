from selenium import webdriver

def setup_driver():
    options = webdriver.ChromeOptions()
    options.headless = True
    options.add_argument('--no-sandbox')
    desired_capabilities = dict(acceptInsecureCerts=True)
    driver = webdriver.Chrome(options=options, desired_capabilities=desired_capabilities)
    return True

if __name__ == '__main__':
    if setup_driver():
        print("setup OK!")
    else:
        print("setup failed")
