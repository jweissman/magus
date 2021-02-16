import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import Magus from '../Magus'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

Magus.start()
