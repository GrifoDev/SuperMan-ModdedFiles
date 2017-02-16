.class Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;
.source "LibraryStressTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest$1;
    }
.end annotation


# instance fields
.field private final mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field private final mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayTime"    # I

    .prologue
    .line 45
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/CmdProcessStressTest;-><init>(I)V

    .line 51
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 47
    const-string/jumbo v0, "context_aware"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/ContextAwareManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 44
    return-void
.end method


# virtual methods
.method protected final clear()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V

    .line 111
    return-void
.end method

.method protected final getType()I
    .locals 4

    .prologue
    .line 127
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 128
    .local v0, "random":I
    const/4 v1, 0x0

    .line 130
    .local v1, "type":I
    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return v1

    .line 132
    :pswitch_0
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    goto :goto_0

    .line 135
    :pswitch_1
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    goto :goto_0

    .line 138
    :pswitch_2
    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final registerListener()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    if-nez v1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->getType()I

    move-result v0

    .line 78
    .local v0, "type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[TYPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 72
    return-void
.end method

.method protected final unregisterListener()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    if-nez v1, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->getType()I

    move-result v0

    .line 97
    .local v0, "type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[TYPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] unregister"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mContextAwareManagerForTest:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 100
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;->mCaListenerForTest:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 99
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 91
    return-void
.end method
