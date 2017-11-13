'use strict';

const message= document.querySelector('#message');
const input = document.querySelector('input[type="file"]');
const form = document.querySelector('form');


const upload= ()=>{
  event.preventDefault();
  message.innerText="moi:-)";

  const data = new FormData();

  data.append('fileToUpload', input.files[0]);

  const settings = {
    method: 'POST',
    body: data
  };

  fetch('upload.php', settings).then((response) => {
    return response.text();
  }).then((text) => {
    console.log(text);
  });
};

console.log(form);
form.addEventListener("submit",()=>{
  upload();
});





