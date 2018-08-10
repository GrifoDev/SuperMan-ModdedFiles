.class public abstract Lcom/android/internal/os/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BaseCommand$1;
    }
.end annotation


# static fields
.field public static final FATAL_ERROR_CODE:Ljava/lang/String; = "Error type 1"

.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field public static final NO_SYSTEM_ERROR_CODE:Ljava/lang/String; = "Error type 2"


# instance fields
.field protected final mArgs:Landroid/os/ShellCommand;

.field private mRawArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/BaseCommand$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BaseCommand$1;-><init>(Lcom/android/internal/os/BaseCommand;)V

    iput-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    return-void
.end method


# virtual methods
.method public getRawArgs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mRawArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public nextArg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextArgRequired()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextOption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onShowUsage(Ljava/io/PrintStream;)V
.end method

.method public run([Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    if-ge v0, v10, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/os/BaseCommand;->mRawArgs:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BaseCommand;->mArgs:Landroid/os/ShellCommand;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p1

    move-object v6, v1

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->init(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/BaseCommand;->onRun()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catch_1
    move-exception v9

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public showUsage()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BaseCommand;->onShowUsage(Ljava/io/PrintStream;)V

    return-void
.end method
