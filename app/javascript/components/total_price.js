
const totPrice = function(startDateinput,endDateinput, priceTot) {

  endDateinput.addEventListener("change", (event) => {
    // which event ?

    if (endDateinput.value != "") {

      let startA = startDateinput.value.split("-");
      let endA = endDateinput.value.split("-");

      let startDate = Date.parse(startA[1] + "-" + startA[0] + "-" + startA[2]);
      let endDate = Date.parse(endA[1] + "-" + endA[0] + "-" + endA[2]);

      let duration = parseInt((endDate - startDate) / (24 * 60 * 60 *1000));
      let priceA = document.querySelector(".book-details-price").innerText.split("€");
      let price = parseInt(priceA[0]);
      let priceTotal = duration * price;

      let priceText = priceTotal.toString() + " €";
      priceTot.append(priceText);


      priceTot.style.visibility = 'visible';

    }
});

};

export default totPrice;
