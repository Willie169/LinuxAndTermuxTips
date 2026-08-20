1. Go to <https://console.developers.google.com> and login.
2. Create a project.
3. Enable APIs and services > Google Drive API > Enable.
4. Sidebar > Credentials
5. Configure consent screen.
6. Get started.
7. User Support Email can be your own Gmail.
8. Audience > External.
9. Sidebar > Data Access > Add or remove scopes.
10. Manually add scopes > `https://www.googleapis.com/auth/docs` > Add to table.
11. Manually add scopes > `https://www.googleapis.com/auth/drive` > Add to table.
12. Update.
13. Save.
14. Sidebar > Audience > Add users.
15. Add your own Gmail.
16. Sidebar > Overview > Create OAuth client.
17. Application type: Desktop app.
18. Create.
19. Copy Client secret. This will be used in rclone.
20. Copy Client ID. This will be used in rclone.
21. Sidebar > Audience > Publish app.
22. Provide Client ID and secret to rclone.
23. Scope: drive.
24. Login and allow access.
