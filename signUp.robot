*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://www.cermati.com/app/gabung
${browser}  chrome


*** Test Cases ***
SignUpCermati
    open browser  ${url}    ${browser}
    maximize browser window
    title should be  Cermati: Pinjaman, Kartu Kredit, Asuransi & Tabungan Online Terbaik
    sleep   2
    input text  id=email    testcermati6@mailinator.com
    input text  id=mobilePhone  085111222444
    input password  id=password     Testcermati123
    input password  id=confirmPassword      Testcermati123
    input text  id=firstName    Yeddy
    input text  id=lastName     Juli
    input text  id=cityAndProvince      Depok
    sleep   3
    click button  xpath://button[normalize-space()='KOTA DEPOK']
    wait until element contains     xpath://p[contains(text(),'Daftar')]    Daftar      timeout=3s
    click element  xpath://p[contains(text(),'Daftar')]
    wait until element contains     xpath://h2[contains(text(),'Kode OTP Terkirim')]    Kode OTP    timeout=5s
    close browser