1. Go to <https://console.developers.google.com> and login to any Google account. This doesn't need to be the account you want to access from rclone.
2. Create a project and go into it.
3. Enable APIs and services > Google Drive API > Enable.
4. Sidebar > Credentials
5. Configure consent screen.
6. Get started.
7. App name can be anything. User Support Email can be your own Gmail.
8. Audience > External.
9. Sidebar > Data Access > Add or remove scopes.
10. Manually add scopes > paste `https://www.googleapis.com/auth/docs` > Add to table.
11. Manually add scopes > paste `https://www.googleapis.com/auth/drive` > Add to table.
12. Update.
13. Save.
14. Sidebar > Audience > Add users.
15. Add your own Gmail > Save.
16. Sidebar > Overview > Create OAuth client.
17. Application type: Desktop app.
18. Create.
19. Copy and backup Client ID and Client secret. They will be used in rclone.
20. Sidebar > Audience > Publish app.
21. Paste Client ID and secret to rclone.
22. Scope: drive.
23. Login and grant access. The confirmation screens will warn about that the app hasn't been verified by Google. Don't care about it.
