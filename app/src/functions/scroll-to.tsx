
const scrollTo = (anchor: number) => {
  const innerHeight = window.innerHeight;
  window.scrollTo({
    top: innerHeight * anchor,
    behavior: "smooth"
  });
};

export default scrollTo;
