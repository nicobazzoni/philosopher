let addPhilosopher = false;
const dom = new DomService()
const api = new ApiService("http://localhost:3000")
Philosopher.getAll()
Philosopher.addEventListeners()

dom.addBtn.addEventListener("click", () => {
  // hide & seek with the form
  addPhilosopher = !addPhilosopher;
  if (addPhilosopher) {
    dom.philosopherFormContainer.style.display = "block";
  } else {
    dom.philosopherFormContainer.style.display = "none";
  }
});