"use strict";
/*
const testi = document.querySelector('#testi');
testi.innerHTML ='<p>MOIKKAROLLE:D:D: D</p>';
//testi.innerText ='<a href="metropolia.fi">moikka:D</a>';


const esimKappaleet =  document.querySelectorAll('.esim');
console.log(esimKappaleet);

esimKappaleet[0].innerHTML = 'Eka kappale';
esimKappaleet[1].innerHTML = 'Toka kappale';

const piilotaElementti= (evt) => {
  evt.target.setAttribute('class','hidden');
};

testi.addEventListener('click',piilotaElementti);

*/

const inputElementit = document.querySelectorAll('input');
let lomakeOK = false;
const lomake = document.querySelector('form');


const checkAttribute = (attr, elements, func) =>{
  // elements.forEach( (el) => el.hasAttribute(attr) ? func(elements) : false);
  elements.forEach((el) =>{
    if(el.hasAttribute(attr)){
    func(el);
    //setLomakeOk(testaus(elements));
  }});
};

const testaus = (element) =>{

    if(element.value===''){
      console.log("jokin puuttuu");
      element.setAttribute('style', 'border: 2px solid blue');
      setLomakeOk(false);
  }else{
      element.setAttribute('style', '');

    }
};

const checkPattern= (arvo) =>{


  const pattern = arvo.getAttribute('pattern');
  const lauseke = new RegExp(pattern);
        if(!lauseke.exec(arvo.value)){
          console.log('no');
          arvo.setAttribute('style','border: 2px solid yellow');
          setLomakeOk(false);
        }else{
          console.log('yes');
          arvo.setAttribute('style', '');
        }


  };


const setLomakeOk= (boolean) =>{
    lomakeOK=boolean;
};

const checkEmpty = (el) => {
  console.log(el);
  //el.style = 'border: 1 px solid red';
  if (el.value ==='') {
    el.setAttribute('style', 'border: 1 px solid red');
  }else{
    //el.removeAttribute('style');
  }
};

checkAttribute('required', inputElementit, checkEmpty);

lomake.addEventListener('submit',(event)=>{
    event.preventDefault();
    setLomakeOk(true);
    console.log(lomakeOK);
    checkAttribute('required', inputElementit,testaus);
    checkAttribute('pattern',inputElementit,checkPattern);
    if(lomakeOK){
      console.log("JEE LÄHETEETÄÄN");
      lomake.submit();
    }

});

