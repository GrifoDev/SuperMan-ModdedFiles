.class final Lcom/android/internal/os/ZygoteInit$1;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/BootTimingsTraceLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    const/16 v5, 0x1388

    const/16 v2, 0x28

    const/16 v0, 0x7d

    :goto_0
    sget-boolean v6, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    if-nez v6, :cond_0

    const-wide/16 v6, 0x28

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7d

    if-le v3, v6, :cond_1

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "!@TOPrldRstrtZgt"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "persist.sys.ppr"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    move v3, v4

    :cond_0
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Monitor End"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0
.end method
