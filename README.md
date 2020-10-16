# flutter_study

A new Flutter project.

## 진행상황
### 16/10/2020
```easy_web_view``` 사용해서 웹뷰 띄우기 성공


### 15/10/2020
* WebView 위젯 실행 및 url호출시 Unsupported operation 에러남 => flutter web에서는 WebView 대신 htmlElemnt widget을 사용해야한다고..


### 14/10/2020 
  * CDN 으로 web/index.html 에 integration => 연결문제로 안하기로함
  * import_js_library(https://pub.dev/packages/import_js_library) => 하루종일 실패중

다른방법?
 1. 웹뷰를 새로 만들어서 띄운다(문제점: 결과물 get() 어떻게할지 생각해봐야함)
 2. main.dart를 무시하고 web/index.html에 스크립트로 quill.js를 붙이고 자바스크립트로 띄운다 (문제점: 이렇게되면 이 프로젝트가 하나의 웹뷰가 되는건데 좀 미개함)
