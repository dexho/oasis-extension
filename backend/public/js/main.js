
function submitEmailSubscription(event) {
    event.preventDefault();
    console.log('okay!')
    const formData = new FormData(document.querySelector('form.subscriptionForm'))
    console.log(formData)
    fetch('/user-email', {
        method: 'POST',
        body: formData
    })
    .then(response => console.log(response.json()))
    return false
}