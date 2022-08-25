// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import jquery from "node_modules/jquery"
import bootstrap from "node_modules/bootstrap/dist/js/bootstrap.js"
import "node_modules/bootstrap-growl-ifightcrime/jquery.bootstrap-growl.js"

Rails.start()
jquery.start()
bootstrap.start()
ActiveStorage.start()
require("bootstrap-growl-ifightcrime").start()
