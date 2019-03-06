const clickDateTab = () => {
  const tab = document.querySelector('.indextab-wrap');
  if (tab) {
    const params = window.location.search;
    const position = params.search("date");
    const today = params[position + 13] + params[position + 14];
    const tabs = document.getElementsByClassName("indextab-label-content");
    tabs[0].getElementsByTagName('label')[0].click()
    for (let item of tabs) {
      if (item.innerText.search(today) > 0) {
        item.getElementsByTagName('label')[0].click()
      }
    };
  }
};


export { clickDateTab };
