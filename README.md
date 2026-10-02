# Bonjour

Bon's morning routine app: an iPhone-style timer that walks through the whole morning, from the Gospel of the day to drying hair, with a calm voice, hands-free shower steps and an animated stretch guide.

## Files

| File | What it is |
| --- | --- |
| `index.html` | The app. This is the version published as the Claude artifact. |
| `phone/Bonjour.html` | The same app wrapped as a full web page, for hosting on its own (Home Screen name: Bonjour). Rebuild it with `./build-phone.sh` after changing `index.html`. |

## Using it on iPhone

Open the app link in Safari, tap **Share → Add to Home Screen**, and name it **Bonjour**. Keep the volume up and the ringer on so the voice can be heard.

## Credits

- Voice lines recorded with [Kokoro](https://github.com/thewh1teagle/kokoro-onnx) (Apache 2.0), voice "Heart".
- Gospel of the day from [dailygospel.org](https://dailygospel.org) (Evangelizo). Scripture text © Confraternity of Christian Doctrine, USCCB. For personal use.
- Keep-screen-on video technique from [NoSleep.js](https://github.com/richtr/NoSleep.js) (MIT, Rich Tibbett).
- NIKI album covers © their respective owners; the app links to them on Apple Music.
