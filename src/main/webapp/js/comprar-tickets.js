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

let inputFirstName = document.getElementById("first_name");
let inputLastName = document.getElementById("last_name");
let inputEmail = document.getElementById("email");
let inputQuantity = document.getElementById("quantity");
let inputCategory = document.getElementById("category");

let btnPurchase = document.getElementById("btnPurchase");
let btnDelete = document.getElementById("btnDelete");

let spanTotalPrice = document.getElementById("total");

const showTotalPurchase = (totalPrice) => {
  spanTotalPrice.innerText = `${totalPrice}`;
};

const calcTotalPrice = (quantity, category) => {
  let discount;
  switch (category) {
    case "0":
      discount = 0;
      break;
    case "1":
      discount = studentDiscount;
      break;
    case "2":
      discount = traineeDiscount;
      break;
    case "3":
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

btnPurchase.addEventListener("click", (e) => {
  e.preventDefault();
  resetValidation();

  let first_name = inputFirstName.value;
  let last_name = inputLastName.value;
  let email = inputEmail.value;
  let quantity = parseInt(inputQuantity.value);
  let category = inputCategory.value;

  if (!validData(first_name, last_name, email, quantity, category)) {
    return;
  }
  let totalPrice = calcTotalPrice(quantity, category);
  showTotalPurchase(totalPrice);
});

btnDelete.addEventListener("click", (e) => {
  showTotalPurchase(0);
  resetValidation();
});