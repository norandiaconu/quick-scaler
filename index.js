#!/usr/bin/env node
var proc = require("child_process");
const sendkeys = require("sendkeys-js");

main();
function main() {
    var param = process.argv.slice(2).join(" ");
    if (param === "up") {
        upscale();
    }
    if (param === "down") {
        downscale();
    }
    if (param === "laptop") {
        laptop();
    }
    if (param === "monitor") {
        monitor();
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
    proc.exec("explorer ms-settings:display");
    await sleep();
    sendkeys.send("+{TAB 16}{ }{END}{UP}{ENTER}");
    await sleep();
    sendkeys.send("+{TAB}{ENTER}");
    await sleep();
    sendkeys.send("%{F4}");
}

async function monitor() {
    proc.exec("explorer ms-settings:display");
    await sleep();
    sendkeys.send("+{TAB 11}{ }{END}{ENTER}");
    await sleep();
    sendkeys.send("+{TAB}{ENTER}");
    await sleep();
    sendkeys.send("%{F4}");
}

async function sleep() {
    return new Promise((res) => setTimeout(res, 900));
}
