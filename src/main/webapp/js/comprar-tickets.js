const priceTicket = 200;
const studentDiscount = 0.8;
const traineeDiscount = 0.5;
const juniorDiscount = 0.15;

let formTickets = document.getElementById("form-tickets");

let divErrorFirstName = document.getElementById("error-firstName");
let divErrorLastName = document.getElementById("error-lastName");
let divErrorEmail = document.getElementById("error-email");
let divErrorQuantity = document.getElementById("error-quantity");
let divErrorCategory = document.getElementById("error-category");

let inputFirstName = document.getElementById("nombre");
let inputLastName = document.getElementById("apellido");
let inputEmail = document.getElementById("mail");
let inputQuantity = document.getElementById("cantidad");
let inputCategory = document.getElementById("categoria");

let btnPurchase = document.getElementById("btnPurchase");
let btnDelete = document.getElementById("btnDelete");
let btnCompra = document.getElementById("btnComprar")
let btnCancelar = document.getElementById("btnCancelar")

let spanTotalPrice = document.getElementById("total");

let nombreValido;
let apellidoValido;
let mailValido;
let categoriaValido;
let cantidadValido;
let precioTotalValido;

const showTotalPurchase = (totalPrice) => {
  spanTotalPrice.innerText = `${totalPrice}`;
};

const calcTotalPrice = (quantity, category) => {
  let discount;
  let c = category[0];
  switch (c) {
    case "S":
      discount = 0;
      break;
    case "E":
      discount = studentDiscount;
      break;
    case "T":
      discount = traineeDiscount;
      break;
    case "J":
      discount = juniorDiscount;
      break;
  }
  return priceTicket * quantity * (1 - discount).toFixed(2);
};

const validData = (first_name, last_name, email, quantity, category) => {
  if (first_name === "") {
    inputFirstName.classList.add("is-invalid");
    inputFirstName.focus();
    return;
  }
  if (last_name === "") {
    inputLastName.classList.add("is-invalid");
    inputLastName.focus();
    return;
  }
  const validEmail = (email) => {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  };
  if (email === "" || !validEmail(email)) {
    inputEmail.classList.add("is-invalid");
    inputEmail.focus();
    return;
  }
  if (quantity === 0 || isNaN(quantity)) {
    inputQuantity.classList.add("is-invalid");
    inputQuantity.focus();
    return;
  }
  if (category === "") {
    inputCategory.classList.add("is-invalid");
    inputCategory.focus();
    return;
  }
  return true;
};

const resetValidation = () => {
  [
    inputFirstName,
    inputLastName,
    inputEmail,
    inputQuantity,
    inputCategory,
  ].forEach((item) => item.classList.remove("is-invalid"));
};

const showBtnResumen = (show) => {
  if (show) {
    btnPurchase.classList.remove("d-none");
    btnDelete.classList.remove("d-none");
  } else {
    btnPurchase.classList.add("d-none");
    btnDelete.classList.add("d-none");
  }
};


const showBtnCompra = (show) => {
  if (show) {
    btnCancelar.classList.remove("d-none");
    btnCompra.classList.remove("d-none");
  } else {
    btnCancelar.classList.add("d-none");
    btnCompra.classList.add("d-none");
  }
};

btnPurchase.addEventListener("click", (e) => {
  e.preventDefault();
  resetValidation();

  let nombre = inputFirstName.value;
  let apellido = inputLastName.value;
  let mail = inputEmail.value;
  let cantidad = parseInt(inputQuantity.value);
  let categoria = inputCategory.value;

  if (!validData(nombre, apellido, mail, cantidad, categoria)) {
    return;
  }
  
  let precio_total = calcTotalPrice(cantidad, categoria);
  
  nombreValido = nombre;
  apellidoValido = apellido;
  mailValido = mail;
  categoriaValido = categoria;
  cantidadValido = cantidad;
  precioTotalValido = precio_total;
  
  showTotalPurchase(precio_total);
  
  showBtnResumen(false);
  showBtnCompra(true);
});

btnDelete.addEventListener("click", (e) => {
  showTotalPurchase(0);
  resetValidation();
  showBtnResumen(true);
  showBtnCompra(false);
});

btnCancelar.addEventListener("click", (e) => {
  showTotalPurchase(0);
  resetValidation();
  showBtnResumen(true);
  showBtnCompra(false)
});

btnCompra.addEventListener("click", (e) => {
  resetValidation();

  nombre = nombreValido;
  apellido = apellidoValido;
  mail = mailValido;
  categoria = categoriaValido;
  cantidad = cantidadValido;
  precio_total = precioTotalValido;
	
  console.log("nombre en comprar-tickets.js, btnCompra: " + nombre);
  console.log("apellido en comprar-tickets.js, btnCompra: " + apellido);
  console.log("mail en comprar-tickets.js, btnCompra: " + mail);
  console.log("cantidad en comprar-tickets.js, btnCompra: " + cantidad);
  console.log("categoria en comprar-tickets.js, btnCompra: " + categoria);
  console.log("precio_total en comprar-tickets.js, btnCompra: " + precio_total);


  showBtnResumen(true);
  showBtnCompra(false);
})
