# kernel
> Linux kernel analysis
>
> [Linux Kernel Official Document](https://www.kernel.org/doc/html/latest/)

## Version

> Folder 'linux kernel version' saves some old versions of linux  kernel.

- [x] linux-0.11
- [x] linux-0.12

## Guide

* `Dr.Mu` : 我的建议是你们分析内核里面某些机制的实现方法。`KMEMLEAK`，`KConfig`和`KBuild`，`KCOV`你们几个可以选择

  * `KMEMLEAK` : Kernel Memory Leak Detector  是linux kernel中用于**检测内存泄露**的一种机制。其类似于垃圾收集器，但是与垃圾收集器不同的是，侦测到的孤儿对象不会被free掉，而是通过 kmemleak 显示出来。

    Kmemleak provides a way of detecting possible kernel memory leaks in a way similar to a tracing garbage collector

  * `KConfig` : 内核构造系统最关键的组成元素就是各个目录下的`Kconfig`文件和`Makefile`文件

    The configuration database is a collection of configuration options organized in a tree structure:

    ```shell
    +- Code maturity level options
    |  +- Prompt for development and/or incomplete code/drivers
    +- General setup
    |  +- Networking support
    |  +- System V IPC
    |  +- BSD Process Accounting
    |  +- Sysctl support
    +- Loadable module support
    |  +- Enable loadable module support
    |     +- Set version information on all module symbols
    |     +- Kernel module loader
    +- ...
    ```

    Every entry has its own dependencies. These dependencies are used to determine the visibility of an entry. Any child entry is only visible if its parent entry is also visible.

  * `KBuild` : 递归make 的一个很好的例子。 通过将源文件划分为不同的模块/组件，每个组件都由其自己的makefile 管理。 当你开始构建时，顶级makefile 以正确的顺序调用每个组件的makefile、构建组件，并将它们收集到最终的执行程序中。

  * `KCOV` : Kcov是一个代码覆盖测试工具，最初基于Bcov，它可在FreeBSD、Linux、OSX系统中使用，支持的语言包括编译语言(compiled languages)、Python和Bash。 与Bcov一样，Kcov对编译的程序使用DWARF调试信息，以便无需特殊编译器开关即可收集覆盖信息。
