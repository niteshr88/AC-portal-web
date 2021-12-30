// Selecting all required elements
const previewBox = document.querySelector(".priew-box"),
    previewImg = previewBox.querySelector("img"),
    categoryName = previewBox.querySelector(".img-title p"),
    closeIcon = previewBox.querySelector(".icon"),
    filterImage = document.querySelectorAll(".img"),
    shadow = document.querySelector(".shadow");


// Full Preview Image Function
for (let index = 0; index < filterImage.length; index++) {
    filterImage[index].setAttribute("onclick", "preview(this)");
}

function preview(element) {
    document.querySelector("body").style.overflow = "hidden";
    let selectedPreviewImg = element.querySelector("img").src; // getting user clicked image source link and store in variable
    let selectedImageCategory = element.getAttribute("data-name");
    categoryName.textContent = selectedImageCategory
    previewImg.src = selectedPreviewImg // Passing the user clicked image source in the preview image source
    previewBox.classList.add("show")
    shadow.classList.add("show")
    closeIcon.onclick = () => {
        
        previewBox.classList.remove("show")
        shadow.classList.remove("show")
        document.querySelector("body").style.overflow = "scroll";
    }
}

/*==============GALLERY FILTER====================*/
const filter = document.getElementById('filter');
const filterImg = document.querySelectorAll('.isotopeSelector');

window.onload = () => {
    filter.addEventListener('click', (selectedItem) => {
        if (selectedItem.target.classList.contains("cat-item")) {
            filter.querySelector(".active").classList.remove("active")
            selectedItem.target.classList.add("active")
            let filterName = selectedItem.target.getAttribute("data-name")
            filterImg.forEach((image) => {
                let filterImages = image.getAttribute("data-name");
                if ((filterImages == filterName) || filterName == "all") {
                    image.classList.add("show")
                    image.classList.remove("hide")
                } else {
                    image.classList.add("hide")
                    image.classList.remove("show")
                    console.log("false")
                }
            });
        }
    });
}

