// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// tailwind css 
import '../css/tailwind.css'

// fontawesome 
import '@fortawesome/fontawesome-free/js/all';

// jquery
require('jquery')

// flash message fadeout 
import '../modules/flash-fadeout.js'

// search form
import '../modules/search-form.js'

// follows page 
import '../modules/follows-page.js'

// follows page 
import '../modules/follows-page.js'

// create community
import '../modules/create-community.js'

Rails.start()
Turbolinks.start()
ActiveStorage.start()
