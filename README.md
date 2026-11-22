# WINDIR MODE — starter iOS project

This is a first visual-only iPhone app. It opens a local HTML interface inside a WKWebView. The floating dragon button opens/closes the panel; tabs and switches are visual controls only. It does not connect to or modify Free Fire, and iOS does not permit a normal app to draw an always-on-top overlay over another app.

## Build from GitHub on iPhone
1. Create a new **public or private** GitHub repository named `WINDIR-MODE`.
2. Upload the contents of this folder to the repository root (including the hidden `.github` folder). Keep the folder `WINDIR-MODE` containing the two Swift files and `index.html`.
3. Open the repository's **Actions** tab and run **Build WINDIR MODE IPA** (or wait for the push workflow).
4. When the run succeeds, open it and download the artifact `WINDIR-MODE-unsigned-IPA`.
5. Extract the artifact ZIP to get `WINDIR-MODE-unsigned.ipa`, then import/sign it with Mango using your own valid signing certificate and provisioning profile.

The GitHub workflow creates an **unsigned** IPA. It does not sign it and cannot guarantee installation until it is signed with a profile that matches the bundle ID `com.dnxmodz.windirmode`.
