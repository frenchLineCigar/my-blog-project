const contextPath = getContextPath();

let index = {
    init : function () {
        // let _this = this;
        // $("#btn-save").on("click", function(){
        $("#btn-save").on("click", ()=>{  // function(){} , ()=>{} 렉시컬로 this를 바인딩하기 위해서!!
            // _this.save();
            this.save();
        });

        $("#btn-login").on("click", ()=>{
            this.login();
        });

    },

    save: function () {
        // alert('user의 save함수 호출됨');
        let data = {
            username: $("#username").val(),
            password: $("#password").val(),
            email: $("#email").val()
        };

        console.log(data);

        // ajax호출시 default가 비동기 호출
        // ajax 통신을 이용해서 3개의 데이터를 json을 변경하여 insert 요청
        $.ajax({
           type: "POST",
            url:  contextPath + "/api/user",
            data: JSON.stringify(data), // request body 데이터
            contentType: "application/json; charset=utf-8", // request body 데이터가 어떤 타입인지(MIME)
            dataType: "json" // 서버로 부터 응답이 왔을 때 기본적으로 모든 것이 문자열 (생긴게 json이라면)  => js 오브젝트로 파싱
        }).done(function (resp) {
            alert("회원가입이 완료되었습니다.");
            // console.log(resp);
            location.href = contextPath;
        }).fail(function (error) {
            alert(JSON.stringify(error));
        });
    },

    login: function () {
        // alert('user의 save함수 호출됨');
        let data = {
            username: $("#username").val(),
            password: $("#password").val()
        };

        $.ajax({
            type: "POST",
            url:  contextPath + "/api/user/login",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function (resp) {
            alert("로그인이 완료되었습니다.");
            location.href = contextPath;
        }).fail(function (error) {
            alert(JSON.stringify(error));
        });
    }

}

index.init();