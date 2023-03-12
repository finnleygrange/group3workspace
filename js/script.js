let form = document.querySelecter('form');

form.addEventListener('submit', (e) => {
  e.preventDefault();
  return false;
});

// Get the Register button
const registerButton = document.querySelector('button:nth-child(1)');

// Add an event listener to the Register button
registerButton.addEventListener('click', () => {
  // Redirect to register.html
  window.location.href = 'register.html';
});
