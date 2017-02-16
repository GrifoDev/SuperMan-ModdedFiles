.class final Lcom/android/internal/os/ZygoteInit$1;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 263
    const/4 v3, 0x0

    .line 264
    .local v3, "waitCnt":I
    const/16 v5, 0x7530

    .line 265
    .local v5, "waitTimeMs":I
    const/16 v2, 0x28

    .line 266
    .local v2, "sleepSlot":I
    const/16 v0, 0x2ee

    .line 267
    .local v0, "MaxWaitSlot":I
    :goto_0
    sget-boolean v6, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    if-nez v6, :cond_0

    .line 269
    const-wide/16 v6, 0x28

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "waitCnt":I
    .local v4, "waitCnt":I
    const/16 v6, 0x2ee

    if-le v3, v6, :cond_1

    .line 273
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "!@TOPrldRstrtZgt"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 276
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    move v3, v4

    .line 280
    .end local v4    # "waitCnt":I
    .restart local v3    # "waitCnt":I
    :cond_0
    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Monitor End"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 270
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "waitCnt":I
    .restart local v4    # "waitCnt":I
    :cond_1
    move v3, v4

    .end local v4    # "waitCnt":I
    .restart local v3    # "waitCnt":I
    goto :goto_0
.end method
