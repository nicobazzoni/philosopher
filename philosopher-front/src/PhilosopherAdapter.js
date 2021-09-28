class PhilosopherAdapter {
    constructor(port) {
      this.baseUrl = `${port}/philosophers`;
    }
    getPhilosophers= () => fetch(this.baseUrl + "/philosophers").then(res => res.json())
    // static because they are easier to call, static function get referred to their class and then I call the name
    getPhilosophers() {
      fetch(this.baseUrl)
        // always after a fetch request we must handle our response with a .then. We need to convert it so that it is readable and usable! That is why we parse the JSON. string value > data we can use
        .then((res) => res.json())
        // => can be written as a function, either way is fine! it is just faster with =>
        // magic
        .then((json) => {
          json["data"].forEach((element) => {
            const i = new Philosopher({ id: element.id, ...element.attributes });
            i.attachDOM();
          });
        });
    }
    PhilosopherCreation() {
      const PhilosopherDetails = {
        name: nameInput.value,
        idea: ideaInput.value,
        image: imageInput.value,
      
        branch_id: dropdown.value,
      };
      // sending the fetch request to
      const configObj = {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Accept: "application/json",
        },
        // send in the meat of what our backend needs in a format that is safe to send across the internet and is correct
        body: JSON.stringify(PhilosopherDetails),
      };
      // to baseURL it will take in the extra information coming through, this is also pessimistic rendering where it will only display IF the fetch request goes through
      fetch(this.baseUrl, configObj)
        .then((res) => res.json())
        // .then(json => alert(json.error)) errors display correctly
        .then((json) => {
          const i = new Philosopher({ id: json.data.id, ...json.data.attributes });
          i.attachDOM();
          //  renderPhilosopher(json.data)) // not having to refresh each time
  
          if (!Branch.all.find((c) => c.id == i.branchId)) {
            let branchObj = new Branch({
              id: i.branchId,
              name: json.data.attributes.branch_name,
            });
            branchObj.attachDOM();
            branchObj.addToDropDown();
          }
        });
    }
  
    deletePhilosopher = (id) => {
      const configObj = {
        method: "DELETE",
        headers: {
          "Content-Type": "application/json",
          Accept: "application/json",
        },
      };
  
      fetch(`${port}/philosophers/${id}`, configObj)
        .then((r) => r.json())
        .then((json) => alert(json.message));
    };
  }