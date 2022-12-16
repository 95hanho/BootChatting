/**
 * 웹소켓 실행
 */
 
$(document).ready(function(){
	// 서버로부터 웹소켓메시지가 왔으면 서버에 웹메시지보냄, 아니면 그냥 실행
	if(webmessage == ''){
		send_message();
	} else{
		send_message(webmessage);  
	}
});

//var wsUri = "ws://172.21.208.1:9438/websocket";
//var wsUri = "ws://202.30.249.27:9438/websocket";
const wsUri = "ws://210.223.100.246:9439/websocket";

//let websocket = null;
let websocket = new WebSocket(wsUri);

function send_message(data) {

    // websocket = new WebSocket(wsUri);
	console.log(websocket);

    websocket.onopen = (e) => {
    	console.log(e)
        if(data != null){
			return websocket.send(data); // data(즉 보낼메시지)가 있으면 서버에 data를 보냄
		}
    };

    websocket.onmessage = function(e) {
    	onMessage(e);
    };

    websocket.onerror = function(e) {
        onError(e);
    };
}

function onOpen(e, data) {
	
}

function onMessage(e) {
	console.log('메시지도착');
	if(e.data == 'reTalkInfo'){
		// talkInfo()가 존재할 시 실행, selectTalks()가 존재할 시 실행
		if(typeof talkInfo =='function'){
			talkInfo(); // 채팅방목록 불러오기
		}
		if(typeof selectTalks =='function'){
			selectTalks(); // 톡내용 불러오기
		}
	}
	if(e.data.split(':')[0] == 'userList'){
		var userList = e.data.split(':')[1];
		console.log(userList);
		// [유저목록]이므로 []을 없애줌
		var userArr = userList.substring(1, userList.length-1);
		console.log(userArr);
		if(typeof userInfo == 'function'){
			console.log('접속회원목록');
			userInfo(userArr); // 접속회원목록 불러오기
		}
		if(typeof userInfo2 == 'function'){
			console.log('초대가능목록');
			userInfo2(userArr); // 초대가능목록 불러오기
		}
	}
}

function onError(e) {
	console.log(e);
}
