// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function clickclear(thisfield, defaultvalue) {
    if (thisfield.value == defaultvalue) {
        thisfield.value = "";
    }
}

function clickrecall(thisfield, defaultvalue) {
    if (thisfield.value == "") {
        thisfield.value = defaultvalue;
    }
}
