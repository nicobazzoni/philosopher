class DomService {

    get addBtn(){
      return document.querySelector("#new-philosopher-btn");
    }
  
    get philosopherFormContainer(){
      return document.querySelector(".container");
    }
  
    get form(){
      return document.querySelector(".add-philosopher-form")
    }
  
    get philosopherCollection(){
      return document.getElementById("philosopher-collection")
    }
  
  
  }
  