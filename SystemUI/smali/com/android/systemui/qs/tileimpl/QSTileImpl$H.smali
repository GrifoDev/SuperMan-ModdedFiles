.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v4, :cond_0

    const-string/jumbo v2, "handleAddCallback"

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    :goto_0
    return-void

    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    const-string/jumbo v2, "handleRemoveCallbacks"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap2(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v4, v0, v3}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    const-string/jumbo v2, "handleRemoveCallback"

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap1(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const-string/jumbo v2, "handleClick"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-get0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-set0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)Z

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto :goto_0

    :cond_4
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    const-string/jumbo v2, "handleSecondaryClick"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_0

    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    const-string/jumbo v2, "handleLongClick"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_0

    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    const-string/jumbo v2, "handleRefreshState"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9

    const-string/jumbo v2, "handleShowDetail"

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_8

    :goto_1
    invoke-static {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap5(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_a

    const-string/jumbo v2, "handleUserSwitch"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_0

    :cond_a
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    const-string/jumbo v2, "handleToggleStateChanged"

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_b

    :goto_2
    invoke-static {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap6(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2

    :cond_c
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_e

    const-string/jumbo v2, "handleScanStateChanged"

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_d

    :goto_3
    invoke-static {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap3(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_3

    :cond_e
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_f

    const-string/jumbo v2, "handleDestroy"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto/16 :goto_0

    :cond_f
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_10

    const-string/jumbo v2, "handleClearState"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClearState()V

    goto/16 :goto_0

    :cond_10
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_12

    const-string/jumbo v2, "setListening"

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_11

    :goto_4
    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setListening(Z)V

    goto/16 :goto_0

    :cond_11
    move v4, v5

    goto :goto_4

    :cond_12
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_13

    const-string/jumbo v2, "handleUpdateDetail"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap7(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V

    goto/16 :goto_0

    :cond_13
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_14

    const-string/jumbo v2, "handleScrollToDetail"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap4(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    goto/16 :goto_0

    :cond_14
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_15

    const-string/jumbo v2, "make current state to string"

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->sendStateString()V

    goto/16 :goto_0

    :cond_15
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_16

    const-string/jumbo v2, "make string to current state"

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->makeStringToCurrentState(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
