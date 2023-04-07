/*
  Twillio SMS Integration
  Version : 1.0.5
  Author: Sajjad Hussain
*/

/* ********************* Start Buy Back************************* */
// Get Lookup Offer
const sendSMSRequest = () => {
  let to = document.getElementById("to").value;
  let message = document.getElementById("message").value;

  if (!to || to.trim() == "" || !message || message.trim() == "") {
    alert("Phone Number or Message is Empty");
    return;
  }
  loaderStart();

  let settings = {
    async: true,
    crossDomain: true,
    url: "src/components/sms.cfc?method=sendSMS",
    method: "POST",
    data: {
      to: to,
      message: message,
    },
  };
  $.ajax(settings).done(function (response) {
    console.log(response);
    if (response && response == "201 Created") {
      console.log("SMS Sent successfully");
    } else {
      console.log("SMS Sending Failed....");
    }

    loaderStop();
    if (response && response == "201 Created") {
      document.getElementById("resp-message").innerHTML =
        "SMS Sent successfully";
    } else {
      document.getElementById("resp-message").innerHTML =
        "SMS Sending Failed....";
    }
    showResponse();
    jumpToSection("resp-layout");
    reSet();
  });
};

/* ********************* Start Utility Request************************* */
//Start loader
const loaderStart = () => {
  try {
    document.getElementById("loader").classList.remove("d-none");
  } catch (err) {}

  try {
    document.getElementById("loader").scrollIntoView({ behavior: "smooth" });
  } catch (err) {}
};

// Stop Loader
const loaderStop = () => {
  try {
    setTimeout(() => {
      document.getElementById("loader").classList.add("d-none");
    }, 500);
  } catch (err) {}
};

// jump to Response container
const jumpToSection = (section) => {
  try {
    document.getElementById(section).scrollIntoView({ behavior: "smooth" });
  } catch (err) {}
};

// Show Response Containers
const showResponse = () => {
  try {
    document.getElementById("resp-layout").classList.remove("d-none");
  } catch (err) {}
  try {
    document.getElementById("resp-message").classList.remove("d-none");
  } catch (err) {}
};

const reSet = () => {
  setTimeout(() => {
    alert();
    try {
      document.getElementById("to").value = "";
      document.getElementById("message").value = "";

      document.getElementById("resp-message").classList.add("d-none");
    } catch (err) {}
  }, 2000);
};
/* ********************* End Utility Request************************* */
