jQuery(document).ready(function() {
    const cssTitle = [
        "font-weight: bold",
        "font-size: 32px",
        "color: #4d4d4d"
    ];
    const cssSubtitle = [
        "font-size: 16px",
        "color: #8d8d8d"
    ];
    const cssLink = [
        "color: #4078c0"
    ];
    console.log("%cJoão Magalhães\n%cSoftware Engineer 👨‍💻", cssTitle.join(";"), cssSubtitle.join(";"));
    console.log(
        "If you reach this area you're probably interested in getting to know me, let's have a chat at %cjoao@joao.me.",
        cssLink.join(";")
    );

    const menu = jQuery(".menu");
    const handle = jQuery(".menu > h3");
    handle.click(function() {
        menu.toggleClass("collapsed");
    });
});
