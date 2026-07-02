# yara.zed
Yara language extension for Zed.

Example (using the `Ayu Mirage` theme):
![Yara syntax highlighting in Zed](example.png)

Before installing this extension, install a YARA Language Server and ensure that it is on your PATH.

This extension supports:
1. **Official YARA-X LSP (Recommended):** Install `yara-x-ls` from the [VirusTotal/yara-x](https://github.com/VirusTotal/yara-x) repository:
   ```bash
   cargo install --git https://github.com/VirusTotal/yara-x yara-x-ls --locked
   ```
   This installs the `yr-ls` binary.
2. **YLS (Legacy):** Install the [Yara Language Server](https://avast.github.io/yls/) (`yls` binary).
