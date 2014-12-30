PlugPlayground
==============

A little project to hold plug middle-ware experiments.

There exists 2 plugs with unit tests; one which simply returns "Hello world" and the `ReversingPlug` which shows how to use `Plug.Builder` to chain functions together passing connection through a pipeline ultimately reversing the body.

Integration test harness which invokes the loaded plugs over http via cowboy.