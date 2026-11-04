# Bonjr

Bon's morning routine app: an iPhone-style timer that walks through the whole morning, from the Gospel of the day to drying hair, with a calm voice, hands-free shower steps and an animated stretch guide.

## Files

| File | What it is |
| --- | --- |
| `index.html` | The app itself. Edit this one. |
| `docs/` | The installable app: the page, an offline copy for the phone, the manifest and icons. This is the folder to host. |
| `phone/Bonjr.html` | The same app as one standalone page. |
| `pwa/` | Sources for `docs/`: the offline script, the manifest and the icons. |

After changing `index.html` or anything in `pwa/`, run `./build-phone.sh` to rebuild `docs/` and `phone/Bonjr.html`.

## Using it on iPhone

Open the hosted link in Safari, tap **Share → Add to Home Screen**, then open Bonjr from the Home Screen. After the first open it works with no internet. When a new version is hosted, it updates the next time you open it twice.

Keep the volume up and the ringer on so the voice can be heard.

## Credits

- Voice lines recorded with [Kokoro](https://github.com/thewh1teagle/kokoro-onnx) (Apache 2.0), voice "Heart".
- Gospel of the day from [dailygospel.org](https://dailygospel.org) (Evangelizo). Scripture text © Confraternity of Christian Doctrine, USCCB. For personal use.
- Keep-screen-on video technique from [NoSleep.js](https://github.com/richtr/NoSleep.js) (MIT, Rich Tibbett).
