#!/usr/bin/env node
const proc = require("child_process");
const sendkeys = require("sendkeys-js");
const helpMessage = `Please include one of the following:
    up: Upscale to 250% and change to second audio source.
    down: Downscale to 150% and change to first audio source.
    laptop: Change the 'Multiple displays' setting to 'Show only on 1'.
    monitor: Change the 'Multiple displays' setting to 'Show only on 2'.
Example: npx quick-scaler up`;

main();
function main() {
    const param = process.argv.slice(2).join(" ");
    switch (param) {
        case "up":
            upscale();
            break;
        case "down":
            downscale();
            break;
        case "laptop":
            laptop();
            break;
        case "monitor":
            monitor();
            break;
        default:
            console.log(helpMessage);
            break;
    }
}

async function upscale() {
    proc.exec("explorer ms-settings:easeofaccess-display");
    await sleep();
    sendkeys.send("{TAB}{ }{END}{UP 2}{ENTER}");
    await sleep();
    proc.exec("explorer ms-settings:sound");
    await sleep();
    sendkeys.send("{ }{HOME}{DOWN}{ENTER}");
    await sleep();
    sendkeys.send("%{F4}");
}

async function downscale() {
    proc.exec("explorer ms-settings:easeofaccess-display");
    await sleep();
    sendkeys.send("{TAB}{ }{HOME}{DOWN 2}{ENTER}");
    await sleep();
    proc.exec("explorer ms-settings:sound");
    await sleep();
    sendkeys.send("{ }{HOME}{ENTER}");
    await sleep();
    sendkeys.send("%{F4}");
}

async function laptop() {
    proc.exec("displayswitch.exe");
    await sleep();
    sendkeys.send("{HOME}{ENTER}");
    await sleep();
    sendkeys.send("{ESC}");
}

async function monitor() {
    proc.exec("displayswitch.exe");
    await sleep();
    sendkeys.send("{END}{ENTER}");
    await sleep();
    sendkeys.send("{ESC}");
}

function sleep() {
    return new Promise((res) => setTimeout(res, 900));
}
