// Small client-side form handler for nicer UX.
document.addEventListener('DOMContentLoaded', function () {
  // set year in footer
  var y = new Date().getFullYear();
  var yearEl = document.getElementById('year');
  if (yearEl) yearEl.textContent = y;

  var form = document.getElementById('contactForm');
  var status = document.getElementById('formStatus');
  if (!form) return;

  form.addEventListener('submit', function (e) {
    // try to submit via fetch to avoid leaving the page
    e.preventDefault();
    status.textContent = 'Sending...';

    var action = form.getAttribute('action');
    var formData = new FormData(form);

    fetch(action, {
      method: 'POST',
      body: formData,
      headers: {
        'Accept': 'application/json'
      }
    }).then(function (response) {
      if (response.ok) {
        status.textContent = 'Thanks — your message was sent!';
        form.reset();
      } else {
        response.json().then(function (data) {
          status.textContent = (data && data.error) ? data.error : 'Oops — there was a problem sending your message.';
        }).catch(function () {
          status.textContent = 'Oops — there was a problem sending your message.';
        });
      }
    }).catch(function () {
      status.textContent = 'Network error — please try again later.';
    });
  });
});
