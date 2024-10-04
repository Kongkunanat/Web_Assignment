*** Variables ***
#Login input
${login_locator.email}        xpath=//input[@type='text']
${login_locator.password}        xpath=//input[@type='password']


#Button Login
${login_locator.submit}        //button[@type="submit"]



#Button Ok
${login_locator.ok}        xpath=//div[@class="ant-modal-confirm-body-wrapper"]//span[text()='OK']





