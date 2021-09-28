class BranchAdapter {
    constructor(port) {
      this.baseUrl = `${port}/branches`;
    }
  
    getBranches() {
      fetch(this.baseUrl)
        .then((r) => r.json())
        .then((json) => {
          json["data"].forEach((element) => {
            const h = new Branch({ id: element.id, ...element.attributes });
            // attaching to h so that it is being called on a Branch object
            h.attachDOM();
            h.addToDropDown();
          });
        });
    }
  }