# NCCU-Thesis-Overleaf-Frame
22年寫畢業論文時自己嘗試使用Overleaf進行編排，發現在排版上甚為方便快速，由於GitHub上面政治大學只有英文版的撰寫架構， 於是決定提供自己的中文版架構給各位政大碩士生使用，也謝謝撰寫英文版架構的大大大學長，亦會將學長所提供的參考附在下方，希望能幫助大家論文撰寫排版都快速省時， 也祝各位碩士生順利完成論文趕快畢業。若有任何問題或錯誤也歡迎mail討論，謝謝大家。


## 前言

此模板是由[nccu-thesis](https://github.com/Walker088/nccu-thesis) fork而來，其中也參考了[shaform](https://github.com/shaform/ntu-thesis)
所寫的wiki說明，最後由[uray-lu](https://github.com/uray-lu)
依照[國立政治大學博碩士論文全文影像系統](https://thesis.lib.nccu.edu.tw/cgi-bin/gs32/gsweb.cgi/login?o=dwebmge) 所要求之中文論文格式規範所更改，
本框架已依照國立政治大學博碩士論文全文影像系統所要求的中文論文格式進行編排， 可以直接在[Overlea](https://www.overleaf.com/login) 上進行編譯和撰寫，輸出的PDF格式交出去學校就ＯＫ!


## 下載

可以直接將此專案`clone`到本地端，也可以直接下載.zip檔。

## 開始撰寫

* 將repo下載成.zip檔後可直接上傳至[Overlea](https://www.overleaf.com/login) 主頁。

![上傳zip檔製作新專案](https://raw.githubusercontent.com/uray-lu/NCCU-Thesis-Overleaf-Frame/master/imgs./upload_zip.png)  


```
* 進入此專案後須進入左上角的`menu`，將Compiler更改為 XeLatex 即可順利編譯文件。
```
![Menu](https://raw.githubusercontent.com/uray-lu/NCCU-Thesis-Overleaf-Frame/master/imgs./setting.png)

## 檔案內容

* 主要章節位於`./chapters`資料夾中，可以自行重新命名及編輯，本模板的各個章節皆有不同的示範。
* 整份論文之章節次序以及加入浮水印皆位於 `thesis.tex中`可自行更改調換，檔案中的順序已不用再進行更改。 
* 封面資訊可至`nccuvars.tex`中進行更改與輸入，檔案中亦有詳細說明。
* 論文內的圖片首先需於overleaf上傳至`images`資料夾，需再至`figures`資料夾內創件該圖片的.tex檔，即可在內文中插入圖片，在`./chapters`資料夾中的檔案中會有示範如何插入圖片。
* 論文內的表格都於`tables`資料夾中由Latex語法製作，`tables`資料夾中有些須範例格式， 在`./chapters`資料夾中的檔案中會有示範如何插入表格。
* 中英文摘要皆可於`abstract.tex`中進行撰寫。
* 謝詞可於`acknowledgements.tex`中進行撰寫。  
* 參考文獻於`thesis.bib`中，本模板採用APA格式進行引用，在`./chapters`資料夾中的檔案中會有示範如何引用參考文獻。
* 若要在封面中加入英文資訊可參考`nccuthesis.cls`中第68行的說明部分，其他格式設定上的說明亦可參考此檔案。

```
* Note  
    * 除了在`./chapters`資料夾中的檔案中自行編輯及撰寫，其餘設定檔皆以設定好次序和排序，並有說明附於設定檔之中，基本上不用再進行更改。  
         `./chapters`資料夾中的各個檔案中皆分別示範不同的範例展示撰寫時所需的功能。  
    * 目次、圖目錄、表目錄皆會自行編輯和排版，無需另外設定，也無需再設定頁碼和內文間距及排版。     
    * 浮水印可至`thesis.tex`中的46行來設定是否加入，此模板預設為加入，若想移除只需在第46行前加上'%'
```
_基本上只需在`./chapters`資料夾中的檔案進行撰寫及可_

## 文獻回顧APA格式

* 若在Google scholar 所搜尋的文章，點選文章下方的引用：

![引用](https://raw.githubusercontent.com/uray-lu/NCCU-Thesis-Overleaf-Frame/master/imgs./bib1.png)

* 點選引用之後選擇Bib Tex即可獲取APA格式:

![Bib Tex](https://raw.githubusercontent.com/uray-lu/NCCU-Thesis-Overleaf-Frame/master/imgs./bib2.png)

* 複製參考文獻的APA格式至`thesis.bib`中，及可在撰寫正文時使用``` \cite{ }```來引注文章:

![APA](https://raw.githubusercontent.com/uray-lu/NCCU-Thesis-Overleaf-Frame/master/imgs./bib3.png)


## 口試之後

* 待所有文件簽訂完畢，將論文PDF檔案（不需浮水印）上傳至[國立政治大學博碩士論文全文影像系統](https://thesis.lib.nccu.edu.tw/cgi-bin/gs32/gsweb.cgi/login?o=dwebmge) 。
* 待圖書館審核完畢即可獲得上完浮水印及DOI碼的完整論文檔案，附上口試通過同意書並印出之後將論文繳交至圖書館及系辦。
* 至[離校審核系統](http://nccumisdoc.nccu.edu.tw/document_SSO/stuleavesch/stuleavesch.htm) 即可開始進行離校流程。







