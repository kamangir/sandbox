#! /usr/bin/env bash

function sandbox() {
    local task=$(abcli_unpack_keyword $1 help)

    if [ $task == "help" ] ; then
        sandbox_docker $@
        return
    fi

    local function_name=sandbox_$task
    if [[ $(type -t $function_name) == "function" ]] ; then
        $function_name ${@:2}
        return
    fi

    abcli_log_error "-sandbox: $task: command not found."
}