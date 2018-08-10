.class public Lcom/samsung/android/friends/shell/ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "ShellCommandImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellCmdImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    return-void
.end method

.method private executeCommand(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->getArgList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;

    iget-object v4, p0, Lcom/samsung/android/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/android/friends/shell/-$Lambda$wEefITqlFfKEaJfT5XXYT6IDNj0;

    invoke-direct {v4, v0}, Lcom/samsung/android/friends/shell/-$Lambda$wEefITqlFfKEaJfT5XXYT6IDNj0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->printMsg(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getArgList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "ShellCmdImpl"

    const-string/jumbo v1, "getReplyMsg"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_samsung_android_friends_shell_ShellCommandImpl_1209(Ljava/util/List;Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lcom/samsung/android/friends/cmdsvc/CmdSvc;->command(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private printMsg(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/friends/shell/ShellCommandImpl;->mEnabled:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onHelp()V
    .locals 1

    const-string/jumbo v0, "help"

    invoke-direct {p0, v0}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/friends/shell/ShellCommandImpl;->mEnabled:Z

    return-void
.end method
