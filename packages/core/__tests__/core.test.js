const { isOdd } = require("../dist/core.js");

test("isOdd", () => {
  expect(isOdd(1)).toBe(false);
  expect(isOdd(2)).toBe(true);
  expect(isOdd(3)).toBe(false);
  expect(isOdd(4)).toBe(true);
  expect(isOdd(5)).toBe(false);
});
