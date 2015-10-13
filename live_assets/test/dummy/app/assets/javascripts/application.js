// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_tree .

window.onload = function() {
    alert('start')
    var src = new EventSource('/serversentevents');
    src.addEventListener('xxx', function(e){
        //alert(e.data);
        dd = document.getElementById('stream')
        dd.innerHTML = e.data;
        dd.inn
        //data = e.data;
        //data = JSON.parse(e.data);
        //console.log(data.z);
    });
};

    d = function() {
    // 1. Connect to our event-stream
    var source = new EventSource('/');
    // 2. This callback will be triggered on every  event
    source.addEventListener('xxx', function(e) {
     // 3. Load all CSS entries
    var sheets = document.querySelectorAll("[rel=stylesheet]");
    var forEach = Array.prototype.forEach;
    // 4. For each entry, clone it, add it to the
    // document and remove the original after
    forEach.call(sheets, function(sheet){
    var clone = sheet.cloneNode();
    clone.addEventListener('load', function() {
            sheet.parentNode.removeChild(sheet);
        });
        document.head.appendChild(clone);
    });
});
};

