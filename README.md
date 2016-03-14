# SDUThesisLatexTemplate

Latex template for SDU thesis. 修改自天津大学的LaTeX模板

# 说明

本模板适用于 texlive 2015，使用 xelatex 进行编译。在 Window 下进行修改与测试，不保证其它平台的正常使用。
本模板依据山东大学控制科学与工程学院学士学位论文模板进行修改

# 编译

* 在最新的TexLive2015（Windows7）套装下使用自带的编辑器TeXworks能顺利编译通过。
* 方法一：使用TeXworks。手动要执行四次编译，通过xelatex+bibtex+xelatex+xelatex就可以生成带有完整目录和参考文献信息的PDF文档。
* 方法二：快速构建。由于本人水平实在有限，在使用TeXMaker进行编译时一直有问题，使用TeXMaker进行XeLaTeX编译总是会提醒没有找到日志文件，只能使用LaTeX方式勉强编译，但是编译生成的结果和正常结果是有区别的，可能是TeX套装的问题吧，希望有人能够解决！
* 方法三：使用命令行切换到当前目录下，然后执行Python脚本compile.py或者Windows批处理文件compile.bat来一次性完成，该脚本可以实现自动对过程文件的清理以及自动重复编译。

# License

名义上 MIT，实际上 WTFPL – Do What the Fuck You Want to Public License.