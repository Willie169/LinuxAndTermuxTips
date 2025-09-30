## Git and GitHub
### Install git:
```
apt install git
```
### Install GitHub CLI:
```
apt install gh
```
### Authorize gh:
1. **Auth login**:
```
gh auth login
```
2. **Auth all**
```
gh auth login --scopes repo,read:org,admin:org,workflow,gist,notifications,delete_repo,write:packages,read:packages
```
3. **Check status**:
```
gh auth status
```
### Git Config:
```
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```
### Create and Push:
```
gh repo create my-org/example-repo --private
mkdir gh
cd gh
gh repo clone my-org/example-repo
cd example-repo
echo "# My Project" > README.md
echo "# GPLv3" > LICENSE.txt
git add README.md
git rm -r LICENSE
git commit -m "commit"
git push origin main
```
### Org:
1. **List**:
```
gh org list
```
2. **Membership**:
```
gh api /orgs/PythonIsSlowOrg/memberships/USERNAME
```
Return JSON
3. **Invite to org**:
```
gh api \
  -X PUT \
  -H "Accept: application/vnd.github.v3+json" \
  /orgs/ORGNAME/memberships/USERNAME\
  -f role=member
```
Return JSON

### Branch management

1. **Create a New Branch**:
   ```sh
   git checkout -b <branch-name>
   ```

2. **Switch to a Branch**:
   ```sh
   git checkout <branch-name>
   ```

3. **List Branches**:
   ```sh
   git branch -a
   ```

4. **Delete a Branch**:
   ```sh
   git branch -d <branch-name>
   ```

   Force deletion:
   ```sh
   git branch -D <branch-name>
   ```

   On remote:
   ```sh
   git push origin --delete <branch-name>
   ```

### Tag management


1. **Create a New Tag**:

   Lightweight tag (just a name pointing to a commit):
   ```sh
   git tag <tag-name>
   ```
   Annotated tag (includes metadata: tagger, date, message, signature):
   ```sh
   git tag -a <tag-name> -m <message>
   ```
   Annotated tag on a specific commit:
   ```sh
   git tag -a <tag-name> <commit-hash> -m <message>
   ```
2. **Push Tags to Remote**:
   ```sh
   git push origin <tag-name>
   ```
   Push all tags:
   ```
   git push --tags
   ```

3. **List Tags**:
   ```sh
   git tag
   ```

   List with filter:
   ```sh
   git tag -l "v1.*"
   ```

4. **Show Tag information***:
   ```
   git show <tag-name>
   ```

5. **Delete a Tag**:
   ```sh
   git tag -d <tag-name>
   ```

   On remote:
   ```sh
   git push origin --delete <tag-name>
   ```

6. **Checkout a tag (detached HEAD)**:
   ```sh
   git checkout <tag-name>
   ```

### Create a Pull Request**:
   ```sh
   gh pr create --base <base-branch> --head <branch-name> --title "<title>" --body "<description>"
   ```
## Use GitHub with SSH

### 1. Generate an SSH Key (if you don’t have one)
1. Open a terminal and generate a new SSH key using the following command:
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```
   Replace `"your_email@example.com"` with the email you use for your GitHub account.

2. When prompted, choose a location to save the key (`~/.ssh/id_ed25519` is the default). You can press `Enter` to confirm the default.

3. (Optional) You can set a passphrase for added security, or press `Enter` to skip.

This will create a private key `id_ed25519` and a public key `id_ed25519.pub` in your `~/.ssh` directory.

### 2. Add the SSH Key to the SSH Agent
1. Start the SSH agent in the background:
   ```bash
   eval "$(ssh-agent -s)"
   ```

2. Add your SSH private key to the agent:
   ```bash
   ssh-add ~/.ssh/id_ed25519
   ```

### 3. Add the SSH Key to Your GitHub Account
1. Copy your public key to the clipboard:
   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```
   Or, if you're on a desktop environment, use:
   ```bash
   xclip -sel clip < ~/.ssh/id_ed25519.pub  # Linux with xclip installed
   pbcopy < ~/.ssh/id_ed25519.pub           # macOS
   ```

2. Go to [GitHub's SSH key settings](https://github.com/settings/keys) in your web browser.

3. Click **New SSH key**, give it a title, and paste your SSH key into the **Key** field.

4. Click **Add SSH key** to save it.

### 4. Test the Connection to GitHub
Run the following command to test your connection to GitHub:
```bash
ssh -T git@github.com
```
If everything is set up correctly, you should see a message like:
```
Hi username! You've successfully authenticated, but GitHub does not provide shell access.
```

### 5. Configure Git to Use SSH for GitHub
Git will use SSH by default if you clone repositories using the `git@github.com` format. Here’s how to clone a repository with SSH:
```bash
git clone git@github.com:username/repository.git
```

Or, if you’re changing an existing repository from HTTPS to SSH:
```bash
git remote set-url origin git@github.com:username/repository.git
```

Now, you should be able to pull, push, and interact with GitHub over SSH using `git@github.com`.
