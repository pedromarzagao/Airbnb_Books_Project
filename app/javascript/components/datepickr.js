import flatpickr from 'flatpickr';

const initDate = function(startDateinput, endDateinput) {
if (startDateinput && endDateinput) {
  flatpickr(startDateinput, {
  minDate: 'today',
  dateFormat: 'd-m-Y',
  onChange: function(_, selectedDate) {
    if (selectedDate === '') {
      return endDateinput.disabled = true;
    }
    endDateCalendar.set('minDate', selectedDate);
    endDateinput.disabled = false;
  }
});
  const endDateCalendar =
    flatpickr(endDateinput, {
      dateFormat: 'd-m-Y',
    });
}
};

export default initDate;
