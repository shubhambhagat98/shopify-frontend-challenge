function toggleLikeButton(element){


    const likeButton = element;
    likeButton.classList.toggle("press");

    //edit heart icon
    if (likeButton.classList.contains("fa-heart-o")){
        likeButton.classList.remove("fa-heart-o");
        likeButton.classList.add("fa-heart");
    }else if (likeButton.classList.contains("fa-heart")){
        likeButton.classList.remove("fa-heart");
        likeButton.classList.add("fa-heart-o");
    }
}


function copyLink(element){
    const copyButton = element
    var copyText = copyButton.getAttribute('copy-text')

    navigator.clipboard.writeText(copyText);
    console.log(copyText)

    $('<div class="copy-alert">' +
        '<span class="copy-message">Copied to clipboard</span>').hide().appendTo('#response').fadeIn(500);

    $(".copy-alert").delay(2500).fadeOut(
        "normal",
        function(){
            $(this).remove();
        });
}


// Copy Shareable link to clipboard
var shareModal = document.getElementById('shareLinkModal');
shareModal.addEventListener('show.bs.modal', function (event){

    //share button that triggered the modal
    var button = event.relatedTarget

    //extract image link from data-bs-* attributes
    var imgLink = button.getAttribute('data-bs-image-link')

    //update modal content
    shareModal.querySelector('.modal-body #img-link').value = imgLink
    shareModal.querySelector('.modal-body #modal-image').src = imgLink
    shareModal.querySelector('.copy-button').setAttribute('copy-text', imgLink)

})


function copyLink(element){
    const copyButton = element
    var copyText = copyButton.getAttribute('copy-text')

    navigator.clipboard.writeText(copyText);
    console.log(copyText)

    $('<div class="copy-alert">' +
        '<span class="copy-message">Copied to clipboard</span>').hide().appendTo('#response').fadeIn(500);

    $(".copy-alert").delay(3000).fadeOut(
        "normal",
        function(){
            $(this).remove();
        });
}
