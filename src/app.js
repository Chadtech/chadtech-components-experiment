var app = Elm.Main.init();

function toElm(type, payload) {
	app.ports.fromJs.send({
		type: type,
		payload: payload
	});
}

function noop() {

}

var actions = {
	noop
}

function jsMsgHandler(msg) {
	var action = actions[msg.type];
	if (typeof action === "undefined") {
		console.log("Unrecognized js msg type ->", msg.type);
		return;
	}
	action(msg.payload);
}

app.ports.toJs.subscribe(jsMsgHandler)

