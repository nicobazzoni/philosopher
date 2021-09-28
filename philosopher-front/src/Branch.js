class Branch {
    static all = [];
  
    static branchContainer = document.getElementById("branch-container");
  
    constructor({ id, name }) {
      this.id = id;
      this.name = name;
      this.active = false;
  
      this.li = document.createElement("button");
  
      Branch.all.push(this);
    }
  
    philosophers() {
      return Philosopher.all.filter((philosopher) => Philosopher.branchId == this.id);
    }
  
    render() {
      this.li.innerText = this.name;
      this.li.id = `branch-${this.id}`;
      return this.li;
    }
  
    attachDOM() {
      Branch.branchContainer.append(this.render());
      this.addListeners();
    }
  
    addListeners() {
      this.li.addEventListener("click", this.setChosenBranch);
    }
  
    setChosenBranch = (e) => {
      let filteredBranch;
      Branch.all.forEach((c) => {
        if (c.li === this.li && !this.active) {
          c.li.classList.add("activated");
          c.active = true;
          filteredBranch = c;
        } else {
          c.li.classList.remove("activated");
          c.active = false;
        }
  
        Philosopher.filterByPhilosopherBranch(filteredBranch);
      });
    };
  
    addToDropDown() {
      const dropdown = document.getElementById("branch-dropdown");
      const option = document.createElement("option");
      option.value = this.id;
      option.innerText = this.name;
      dropdown.append(option);
    }
  }