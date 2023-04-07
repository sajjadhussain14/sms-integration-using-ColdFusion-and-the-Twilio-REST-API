<div class="container-fluid">
    <div class="justify-content-center m-3 border p-3 mx-auto w-100">
        <h4 class="p-1  col-12 text-center p-2">SMS Screen</h4>
    <small> Using this code we can generate SMS on any number, generate automated Message and much more related to SMS and messaging 
    <br />
    Note: Right now using, sandbox environment so SMS can be send the the registered number (from dashboard) only.
    
    </small>
        <div class="row mt-5">
            <div class="mb-3">
                <label  class="form-label">Receiver Number</label>
                <input type="email" class="form-control" id="to" placeholder="Enter Receiver Number here like +12345678910">
            </div>
            <div class="mb-3">
                <label  class="form-label">Message</label>
                <textarea class="form-control" id="message" rows="3" placeholder="Enter SMS Message here"></textarea>
            </div>        
        </div>

        <div class="row">
            <div class="p-1 col-12 text-center p-2">
                <button type="button" class="btn customBtn" onclick="sendSMSRequest('1','ACTIVATE','','','')">
                    Send SMS
                </button>
                <button type="button" class="btn customBtn" onclick='window.location.href = "/smartclixx";'>
                    Cancel
                </button>
            </div>
        </div>
    </div>
    <div class="loader d-none" id="loader"></div>

    <div class="alert alert-info d-none" role="alert" id="resp-message">
        Error Message will do here
    </div>

</div>