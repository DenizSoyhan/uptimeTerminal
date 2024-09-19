# uptimeTerminal
This is a script that shows how much time have you spent looking at the screen every time you open the terminal. <br>
1)In order to set it up download the script.<br>
2)Open up your terminal and type:
```
echo $0
```
It will tell you what your shell terminal running. Most likely it is either **bash** or **zsh** Open up the script and change the first line to your shell interpreter.
By default (on my machine) it is set to zsh

3)Then if your terminal is zsh go to the .zshrc file in your home directory.
<br>![image](https://github.com/user-attachments/assets/22e1a56c-bfc7-4e1a-af6f-4840e44f224c)

If you are using bash it is .bashrc for you<br>

4)Add the executable path to the file with $ sign. It should look something like this:

```
$/home/[YOUR PATH]/newUptime.sh

```
and now when you open up your terminal you should be able to see a really lame thing.
<br>
![image](https://github.com/user-attachments/assets/cb8f32ac-4262-49d7-a42e-ed353e2556ad)

You can change 
```shell
 box_width=97
```
to make it fit perfectly to your terminal because window default zoom settings might be different between machines. And also delete or add border lines accordingly. Will make it more readable and customizable in the future. Good enough for now




