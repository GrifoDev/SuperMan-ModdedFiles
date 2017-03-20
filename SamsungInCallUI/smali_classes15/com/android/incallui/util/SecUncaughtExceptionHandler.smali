.class public Lcom/android/incallui/util/SecUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SecUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field PREF_KEY_OUTOFMEMORY:Ljava/lang/String;

.field dirPath:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field mOutOfMemoryGuideString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uncaughtExceptionHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "SecUncaughtExceptionHandler"

    iput-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    .line 17
    const-string v0, "/sdcard/log"

    iput-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->dirPath:Ljava/lang/String;

    .line 18
    const-string v0, "call_dump.hprof"

    iput-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->fileName:Ljava/lang/String;

    .line 22
    const-string v0, "pref_key_outofmemory"

    iput-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->PREF_KEY_OUTOFMEMORY:Ljava/lang/String;

    .line 24
    const-string v0, "Out Of Memory Error Occured. \nHprof data saved in /sdcard/log/call_dump.hprof\nPlease attach this log in PLM"

    iput-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mOutOfMemoryGuideString:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "create"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->PREF_KEY_OUTOFMEMORY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->getUncaughtExceptionOccured(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->PREF_KEY_OUTOFMEMORY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->setUncaughtExceptionOccured(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    const-string v0, "Exception Occured"

    iget-object v1, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mOutOfMemoryGuideString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->showGuideDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method private dumpHprofData()V
    .locals 5

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->dirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->dirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpHprofData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getUncaughtExceptionOccured(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setUncaughtExceptionOccured(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefStr"    # Ljava/lang/String;
    .param p3, "flag"    # Z

    .prologue
    .line 69
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    return-void
.end method

.method private showGuideDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/util/SecUncaughtExceptionDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    .line 39
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uncaughtException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/OutOfMemoryError;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "OutOfMemoryError"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->dumpHprofData()V

    .line 45
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->PREF_KEY_OUTOFMEMORY:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->setUncaughtExceptionOccured(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 47
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncaughtException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/incallui/util/SecUncaughtExceptionHandler;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 55
    :cond_1
    return-void
.end method
