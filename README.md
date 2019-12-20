# A small shell script to generate subliminal messages on Linux

## Summary:

This is a small shell script to flash subliminal messages (text) on a Linux Desktop. It uses osd_cat to flash the messages on the screen, while text is processed using a binary called shuf.
 beat frequency.

## Execution:

```
# Change the settings in settings file
#
# Settings are simple:
#
# inter_message_time: The time between each flash of message
# flash_time: The time for which message is shown on screen (flashed)
# message_file: The message file which consists of affirmations
#
# Then execute the following command:

bash run.sh
```
