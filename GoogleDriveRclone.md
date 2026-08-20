1. Go to <https://console.developers.google.com> and login. This account theoretically doesn't need to be the account you want to access from rclone, but sometimes it may stuck at the confirmation screen later when using a different account.
3. Create a project and go into it.
4. Enable APIs and services > Google Drive API > Enable.
5. Sidebar > Credentials
6. Configure consent screen.
7. Get started.
8. App name can be anything. User Support Email can be your own Gmail.
9. Audience > External.
10. Sidebar > Data Access > Add or remove scopes.
11. Manually add scopes > paste `https://www.googleapis.com/auth/docs` > Add to table.
12. Manually add scopes > paste `https://www.googleapis.com/auth/drive` > Add to table.
13. Update.
14. Save.
15. Sidebar > Audience > Add users.
16. Add your own Gmail > Save.
17. Sidebar > Overview > Create OAuth client.
18. Application type: Desktop app.
19. Create.
20. Copy and backup Client ID and Client secret. They will be used in rclone.
21. Sidebar > Audience > Publish app.
22. Paste Client ID and secret to rclone.
23. Scope: drive.
24. Login and allow access. The confirmation screens will warn about that the app hasn't been verified by Google. Don't care about it.
