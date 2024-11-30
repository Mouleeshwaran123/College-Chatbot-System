function getCurrentTimestamp() {
  return new Date();
}

function renderMessageToScreen(args) {
  // local variables
  let displayDate = (args.time || getCurrentTimestamp()).toLocaleString("en-IN", {
    month: "short",
    day: "numeric",
    hour: "numeric",
    minute: "numeric",
  });
  let messagesContainer = $(".messages");
  let tags = "",
    join_tags = "";
  if (args.keywords != undefined) {
    keys = args.keywords;

    if (keys.length > 1) {
      tags = keys.map((key) => `<span class='tag' onclick="callKeys('${key}')">${key}</span>`);
      join_tags = tags.join("");
      join_tags = " <b class='line'>Keywords Assistant: </b>" + join_tags;
    }
  }
  // init element
  let message = $(`
	<li class="message ${args.message_side}">
		<div class="avatar"></div>
		<div class="text_wrapper">
			<div class="text">${args.text}</div>
      <div class='keywords'>
       
        ${join_tags}
      </div>
			<div class="timestamp">${displayDate}</div>
			</div>
	</li>
	`);

  // add to parent
  messagesContainer.append(message);

  // animations
  setTimeout(function () {
    message.addClass("appeared");
  }, 0);
  messagesContainer.animate({ scrollTop: messagesContainer.prop("scrollHeight") }, 300);
}

/* Sends a message when the 'Enter' key is pressed.
 */
$(document).ready(function () {
  $("#msg_input").keydown(function (e) {
    if (e.key === "Enter") {
      e.preventDefault();
      $("#send_button").click();
    }
  });
});

function showUserMessage(message, datetime) {
  renderMessageToScreen({
    text: message,
    keywords: "",
    time: datetime,
    message_side: "right",
  });
}

/**
 * Displays the chatbot message on the chat screen. This is the left side message.
 */
function showBotMessage(message, keywords, datetime) {
  renderMessageToScreen({
    text: message,
    keywords: keywords,
    time: datetime,
    message_side: "left",
  });
}

/**
 * Get input from user and show it on screen on button click.
 */
$("#send_button").on("click", function (e) {
  // get and show message and reset input
  showUserMessage($("#msg_input").val().trim());

  // show bot message
  setTimeout(function () {
    $.post(
      "./bot.php",
      {
        messageValue: $("#msg_input").val().trim(),
      },
      function (data, status) {
        console.log(data);
        const res_data = JSON.parse(data);
        console.log("Main Res Data: ", res_data);
        let response = res_data.response == undefined ? "Sorry, I can't understand you." : res_data.response;
        showBotMessage(response, res_data.keywords);
        $("#msg_input").val("");
      }
    );
  }, 300);
});

$(window).on("load", function () {
  showBotMessage("Hello there! Type in a message.", "");
});

/**
 * Returns a random string. Just to specify bot message to the user.
 */
function randomstring(length = 20) {
  let output = "";

  // magic function
  var randomchar = function () {
    var n = Math.floor(Math.random() * 62);
    if (n < 10) return n;
    if (n < 36) return String.fromCharCode(n + 55);
    return String.fromCharCode(n + 61);
  };

  while (output.length < length) output += randomchar();
  return output;
}

function callKeys(keyword) {
  //console.log(keyword);
  showUserMessage(keyword);
  setTimeout(function () {
    $.post(
      "./botkeywords.php",
      {
        messageValue: keyword.trim(),
      },
      function (data, status) {
        console.log("Bot Key Res Data: ", data);
        const res_data = JSON.parse(data);

        let response = res_data.response == undefined ? "Sorry, I can't understand you." : res_data.response;
        showBotMessage(response, res_data.keywords);
        $("#msg_input").val("");
      }
    );
  }, 300);
}

function loadFaq() {
  const accordion = document.getElementById("accordion");
  $.get("./faq.php", function (data, status) {
    const res_data = JSON.parse(data);
    //console.log("Getting Data : ", res_data);

    let output = ``;

    res_data.forEach((data, index) => {
      output += `
      <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse${index + 1}">${data.messages}</a>
        </h4>
      </div>
      <div id="collapse${index + 1}" class="panel-collapse collapse collapsed ">
        <div class="panel-body">
          ${data.response}
        </div>
      </div>
    </div>    
      `;
    });
    accordion.innerHTML = output;
  });
}
loadFaq();
