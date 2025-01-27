import { ClarityPluginX } from 'capacitor-clarity-x';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    ClarityPluginX.echo({ value: inputValue })
}
