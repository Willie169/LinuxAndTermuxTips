## Alias and Function
For Unix-like Systems (Linux, macOS), you can use a shell alias or a function for a long command to simplify your workflow. For example, in your .bashrc or .zshrc file:
```
nano ~/.bashrc
```
or
```
nano ~/.zshrc
```
### Alias (for simple commands):
```
alias mvfile='mv /path/to/long/source/directory/ /path/to/long/destination/directory/'
```
Usage:
```
mvfile filename
```
### Function (for more complex operations):
```
mvfile() {
    mv "/path/to/long/source/directory/$1" "/path/to/long/destination/directory/"
}
```
Usage:
```
mvfile filename
```
### Reload
After adding the alias or function, reload your shell configuration with 
```
source ~/.bashrc
```
or
```
source ~/.zshrc
```