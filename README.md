# tag-based-email

## The Problem

+ user with lots of email seeking upgrade from IMAP-folder-only email management
+ existing (2015-05-17) +
  environment
    + Primary [MUA](http://en.wikipedia.org/wiki/Email_client) =
      Mozilla Thunderbird 17.0.11
    + OS = Mac OS 10.9.5
    + no tagging
    + ~4300 IMAP-based email folders with ~1MM mail msgs
      from multiple servers/accounts
        + doesn't include pruned/archived emails, whose indexing/searching
          also desired
    

### Problem Details (not required reading)

OS X is great, but TB is difficult. Thunderbird is old, buggy,
troublesome, slow, basically inextensible (for me, anyway), and as
I understand it, feature frozen. I'm tired of debating with the
Mozillazine support team about TB's bugs and limitations. Among other
things, it's IMAP sync is slow and unreliable. It literally (and
unfortunately, inconsistently) deletes IMAP folders on it's own whim,
asynchronously, sometimes when I least expect it. Sometimes it loses
track of the folders it didn't delete, and simply creates new ones,
bloating my mbox (TB only reliably support mbox) files terribly over
time. Or simply spot-use TB or Outlook where I have to send formatted
email.

Additionally, the TB text/formatting editor is legendarily bad/buggy.
I'd desperately prefer to simply edit in vim, and edit rich/html text in
markdown or asciidoc and convert to html with a rednering engine, and I
suspect I could script-integrate such capability... if I had an MUA that
could play nicely with external scripts.

Further, I'm a keyboard jockey--eg: vim lover--and Python programmer.
I've maxed out TB's keyboard-shortcut-ness best I can tell, and it's
still limiting. I have external tools (some developed by me and/or my
team) to parse and perform "magic" (like task-tracking and bug-report
inegration) on email folders and individual messages, and TB--with it's
lack of proper maildir support and difficult extensibility--makes it if
not close-to-impossible to integrate with the external tools.

In short, it's time to move on from Thunderbird.

## The Solutions

I'm currently, as of 2015-05-16, seeking:

1. fast search on my entire maildir collection (my "email database"),
2. leverage tag-based categorization, and
3. integrate with external-to-MUA text-process tools.

This probably means a a tag-based-message-classification,
fast-index-search toolset that integrates with a
lower-level/text-primitive MUA (read mutt vs TB). The only
reasonbly-available, competitive mechanisms that I've yet found to
provide this (core) functionality appear to be:

1. [notmuch](http://notmuch.org)
2. [mu (maildir-utils)](http://www.djcbsoftware.nl/code/mu/)
