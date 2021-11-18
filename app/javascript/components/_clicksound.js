const clicksound = () => {
  const audio = new Audio('https://res.cloudinary.com/dmxqtfszw/video/upload/v1637151113/sound-cat_wqplvt.mp3');

  const btn = document.querySelector(".sound");
  if (btn) {
    btn.addEventListener("click", (event) => {
      event.preventDefault();
      audio.load();
      audio.play();
    });
  }
}

export {clicksound}
