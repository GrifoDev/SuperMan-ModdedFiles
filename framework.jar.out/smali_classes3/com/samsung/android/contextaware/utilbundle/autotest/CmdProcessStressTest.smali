.class abstract Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;
.source "CmdProcessStressTest.java"


# instance fields
.field private mChange:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "delayTime"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected abstract getType()I
.end method

.method protected abstract registerListener()V
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->getDelayTime()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 61
    iget-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->registerListener()V

    .line 69
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->clear()V

    .line 56
    :goto_1
    return-void

    .line 65
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;->unregisterListener()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected abstract unregisterListener()V
.end method
