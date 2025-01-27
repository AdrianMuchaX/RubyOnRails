// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import Rails from "@rails/ujs"
Rails.start()
//= require rails-ujs


document.addEventListener("DOMContentLoaded", function () {
    // Listen for a successful AJAX response
    document.body.addEventListener("ajax:success", function (event) {
        const [data, status, xhr] = event.detail;
        const userId = data.user_id; // Assuming the controller sends back user_id in the response
        const row = document.getElementById(`user_${userId}`);
        if (row) {
            row.remove(); // Remove the table row from the DOM
        }
    });
});
