﻿/*filename：myls.c*/
#include<myls.h>

void error_print(const char * ptr)/*错误处理*/
{
    perror(ptr);
    exit(EXIT_FAILURE);
}

void mylist_dir(const char * pathname) /*读取目录中的文件*/
{   
    DIR * ret_opendir = opendir(pathname);/*打开传递的目录pathname*/
    if(ret_opendir == NULL) /*判断错误并处理*/
        error_print("opendir");

    int ret_chdir = chdir(pathname);/*先change dir到需要list的目录中*/
    if(ret_chdir == -1) /*判断错误并处理*/
        error_print("chdir");

    struct dirent * ret_readdir = NULL;/*定义接收readdir函数返回的结构体变量*/
    while(ret_readdir = readdir(ret_opendir)){/*判断读取是否到目录尾*/
        char * filename = ret_readdir->d_name;
        struct stat get_message = {};
        int ret_stat = stat(filename,&get_message);/*用stat函数读取filenmae文件的信息，并将结果写到get_message结构体中*/
        if(ret_stat == -1)/*stat函数不出错则进行信息输出*/
            error("stat %s",filename);
        else if(strcmp(filename,".") && strcmp(filename,".."))/*ls -l 不会输出当期那目录与上一级目录*/
            list_message(filename,&get_message);
    }
}
void list_message(const char * filename,const struct stat * get_message)/*处理读取到的文件*/
{
    file_type(get_message);/*判断并打印文件类型*/
    file_power(get_message);/*判断并打印文件权限*/
    printf("%d ",get_message->st_nlink);/*打印硬链接数*/
    id_to_string(get_message);/*用户id与组id转换成用户名与组名并打印*/
    printf("%d\t",get_message->st_size);/*打印所占空间文件大小*/
    timet_to_tm(get_message);/*将GMT时间的秒数转换成标准时间格式输出*/
    printf("%s\n",filename);/*输出文件名*/
}

void file_type(const struct stat * get_message)
{
    mode_t mode = (*get_message).st_mode;
    if(S_ISREG(mode))
        printf("-");/*普通文件*/
    else if(S_ISDIR(mode))
        printf("d");/*目录文件*/
#if 0
    else if(S_ISCHR(mode))
        printf("c");/*字符设备文件*/
    else if(S_ISBLK(mode))
        printf("b");/*块设备文件*/
    else if(S_ISFIFO(mode))
        printf("p");/*管道文件*/
    else if(S_ISLNK(mode))
        printf("l");/*链接文件*/
    else if(S_ISSOCK(mode))
        printf("s");/*socket文件*/
#endif
}
void file_power(const struct stat * get_message)
{
    mode_t mode = (*get_message).st_mode & 07777;/*取后四位*/

    file_power_char(mode,S_IRUSR,'r');/*判断user有无读权限*/
    file_power_char(mode,S_IWUSR,'w');/*判断user有无写权限*/
    file_power_char(mode,S_IXUSR,'x');/*判断user有无可执行权限*/

    file_power_char(mode,S_IRGRP,'r');/*判断group有无读权限*/
    file_power_char(mode,S_IWGRP,'w');/*判断group有无写权限*/
    file_power_char(mode,S_IXGRP,'x');/*判断group有无可执行权限*/

    file_power_char(mode,S_IROTH,'r');/*判断other有无读权限*/
    file_power_char(mode,S_IWOTH,'w');/*判断other有无写权限*/
    file_power_char(mode,S_IXOTH,'x');/*判断other有无可执行权限*/

    printf(" ");
}
void file_power_char(mode_t mode,mode_t type,const char ch)
{
    if((mode & type) == type)
        printf("%c",ch);
    else
        printf("-");
}

void id_to_string(const struct stat * get_message)
{
    struct passwd * pwd;/*根据用户id获取用户名*/
    pwd = getpwuid(get_message->st_uid);
    printf("%s ",pwd->pw_name);

    struct group * grp;/*根据组id获取组名*/
    grp = getgrgid(get_message->st_gid);
    printf("%s ",grp->gr_name);

}
void timet_to_tm(const struct stat * get_message)
{
    struct tm * chtm = localtime(&(get_message->st_mtime));
    if(chtm == NULL){
        printf("localtime is error");
        exit(EXIT_FAILURE);
    }
    else
        printf("%d月 %d  ",chtm->tm_mon+1,chtm->tm_mday);/*tm_mon属于[0,11]*/

    if(chtm->tm_hour < 10)/*0~9的数要写成0X格式*/
        printf("0");/*先打印0*/
    printf("%d:",chtm->tm_hour);/*再打印X*/
    if(chtm->tm_min < 10)
        printf("0");
    printf("%d  ",chtm->tm_min);
}