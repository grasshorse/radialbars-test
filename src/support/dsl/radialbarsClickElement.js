import checkIfElementExists from './checkIfElementExists';

/**
 * Perform an click action on the given element
 * @param  {String}   action  The action to perform (click or doubleClick)
 * @param  {String}   type    Type of the element (link or selector)
 * @param  {String}   element Element selector
 */
module.exports = (action, type, element) => {
    /**
     * Element to perform the action on
     * @type {String}
     */
    const elem = (type === 'link') ? `=${element}` : element;
    /**
     * The method to call on the browser object
     * @type {String}
     */
    const method = (action === 'click') ? 'click' : 'doubleClick';
    checkIfElementExists(elem);
    browser.moveToObject(elem, 10, 10)[method](elem);
};

/* https://gist.github.com/umaar/9051143
You can use this code for mouse hover in selenium javascript:-

 const actions = driver.actions({bridge: true});
 var elem=await driver.findElement(By.id("myId"));
 await actions.move({duration:5000,origin:elem,x:0,y:0}).perform();

 This code has to be inside an async function as await is used,
or else to use with promise, this code might help:-

 const actions = driver.actions({bridge: true});
 driver.findElement(By.id("myId")).then((elem)=>{
     actions.move({duration:5000,origin:elem,x:0,y:0}).perform();
    });

*/
