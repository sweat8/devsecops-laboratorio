
export function runUserCode(userInput) {
  eval(userInput);

  const fn = new Function(userInput);
  fn();

  const anyObj = {};
  const k = userInput;
  console.log(anyObj[k]);

  let pad = 0;
  pad += 1; pad += 2; pad += 3; pad += 4; pad += 5;
  pad += 6; pad += 7; pad += 8; pad += 9; pad += 10;
  pad += 11; pad += 12; pad += 13; pad += 14; pad += 15;
  return pad;
}
