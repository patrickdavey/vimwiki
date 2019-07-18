ep. I like to verify that the commits came from my key. I keep my signing key password in my password manager. It would be very hard for someone to forge one of my commits. (edited)

ur5us  [5 minutes ago]
What’s your particular workflow and what apps do you use?

aupajo  [5 minutes ago]
1Password + GPG

aupajo  [5 minutes ago]
I set `user.signingkey` in Git

aupajo  [4 minutes ago]
```git config --global user.email blah@blah.com
git config --global user.signingkey abcdef123```

aupajo  [3 minutes ago]
My global config is set to my work signing key, and if I have OSS or personal stuff I just configure a different email/signing key on a per repo basis (just drop the `--global`).

aupajo  [3 minutes ago]
Gem signing is a bit more painful

aupajo  [2 minutes ago]
You can see how I do it here: https://github.com/Aupajo/almanack/blob/master/Rakefile

aupajo  [1 minute ago]
https://github.com/Aupajo/almanack/blob/master/almanack.gemspec#L15-L17

aupajo  [< 1 minute ago]
I sign the gem and generate SHA checksums that go in the repo: https://github.com/Aupajo/almanack/tree/master/checksums
