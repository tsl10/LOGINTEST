document.addEventListener('DOMContentLoaded', function() {
    // Get the sign-in and sign-up containers
    const signUpContainer = document.getElementById('signup');
    const signInContainer = document.getElementById('signIn');

    // Get the buttons
    const signUpButton = document.getElementById('signUpButton');
    const signInButton = document.getElementById('signInButton');

    // Show the sign-up form when the sign-up button is clicked
    signUpButton.addEventListener('click', function() {
        signUpContainer.style.display = 'block';
        signInContainer.style.display = 'none';
    });

    // Show the sign-in form when the sign-in button is clicked
    signInButton.addEventListener('click', function() {
        signInContainer.style.display = 'block';
        signUpContainer.style.display = 'none';
    });

    // Close the popup (if applicable)
    const closePopup = document.getElementById('closePopup');
    if (closePopup) {
        closePopup.addEventListener('click', function() {
            document.getElementById('popup').style.display = 'none';
        });
    }
});
