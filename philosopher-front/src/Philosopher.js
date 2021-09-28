class Philosopher {
    // static is a class variable, each time a Philosopher is instantiated coming through the constructor things will be PUSHED into the static all variable /empty array
    static all = [];
    static PhilosopherContainer = document.getElementById("Philosophers");
    // constructor is my initalizer and is where I will put the properies of the Philosophers
    // deconstructing the id, title, year, rating etc.. the KEYS are going to match what is coming in ({id: element.id, ...element}) then give variables back with the same names
    constructor({
      id,
      name,
      image,
      idea,
      
      branch_id,
    }) {
      this.name = name
      this.idea = idea
      this.image =image 
     
      this.id = id;
      this.branchId = branch_id;
  
      // properties - the HTML element that has the Philosopher
      // if I go into another  instance function inside of this class, I have access to this li and later I could attach it to the DOM. this li/this element
      this.li = document.createElement("li");
      this.li.dataset["id"] = id;
      this.li.id = `philosopherid-${id}`; // gives what Philosopher it is when I inspect it on the page to help organize it
      this.li.addEventListener("click", this.handleLiClick);
  
      // no code gets left behind
      Philosopher.all.push(this);
    }
  
    static filterByPhilosopherBranch(filteredBranch) {
      if (filteredBranch) {
        for (const Philosopher of Philosopher.all) {
          if (Philosopher.branchId === parseInt(filteredBranch.id)) {
            Philosopher.li.style.display = "";
          } else {
            Philosopher.li.style.display = "none";
          }
        }
      } else {
        for (const Philosopher of Philosopher.all) {
          Philosopher.li.style.display = "";
        }
      }
    }
    handleLiClick = (li) => {
      if (li.target.innerText === "Delete Philosopher") {
        this.deletePhilosopher(li);
      }
    };
    // we are removing it before the fetch request, it is not pessimistic rendering; it is optimistic!
    deletePhilosopher = (li) => {
      this.li.remove(); // remove it before the fetch request
      PhilosopherAdapter.deletePhilosopher(this.id);
    };
  
    render() {
      this.li.innerHTML = `
                  <div data-id="${this.id}">
                      <strong class="title">${this.name}</strong>
                  
                      <span class="year">${this.image}</span>,
                      <span class="rating">${this.idea}</span>,
                      
                      
                     
                      
                     
                  </div>
                  <button class="Delete" data-id="${this.id}"> Delete Philosopher </button>
              `;
      return this.li;
    }
  
    attachDOM() {
      // it is going to return the .li, still attaching to the DOM and load all of the inner html
      Philosopher.philosopherContainer.appendChild(this.render());
      // class level
    }
  }