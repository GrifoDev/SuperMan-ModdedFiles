.class public final Lcom/android/systemui/qs/QSTile$H;
.super Landroid/os/Handler;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$H;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V

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

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/QSTile;->-wrap0(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V

    :goto_0
    return-void

    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    const-string/jumbo v2, "handleRemoveCallbacks"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile;->-wrap3(Lcom/android/systemui/qs/QSTile;)V
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

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, v0, v3}, Lcom/android/systemui/qs/QSTile$Host;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    const-string/jumbo v2, "handleRemoveCallback"

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/qs/QSTile$Callback;

    invoke-static {v5, v4}, Lcom/android/systemui/qs/QSTile;->-wrap2(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V

    goto :goto_0

    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const-string/jumbo v2, "handleClick"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-boolean v4, v4, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v5, v5, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/systemui/qs/QSTile;->-set0(Lcom/android/systemui/qs/QSTile;Z)Z

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleClick()V

    goto :goto_0

    :cond_4
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    const-string/jumbo v2, "handleSecondaryClick"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleSecondaryClick()V

    goto/16 :goto_0

    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    const-string/jumbo v2, "handleLongClick"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleLongClick()V

    goto/16 :goto_0

    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    const-string/jumbo v2, "handleRefreshState"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9

    const-string/jumbo v2, "handleShowDetail"

    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_8

    :goto_1
    invoke-static {v6, v4}, Lcom/android/systemui/qs/QSTile;->-wrap5(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_1

    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_a

    const-string/jumbo v2, "handleUserSwitch"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    goto/16 :goto_0

    :cond_a
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    const-string/jumbo v2, "handleToggleStateChanged"

    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_b

    :goto_2
    invoke-static {v6, v4}, Lcom/android/systemui/qs/QSTile;->-wrap6(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2

    :cond_c
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_e

    const-string/jumbo v2, "handleScanStateChanged"

    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_d

    :goto_3
    invoke-static {v6, v4}, Lcom/android/systemui/qs/QSTile;->-wrap4(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_3

    :cond_e
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_f

    const-string/jumbo v2, "handleDestroy"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    goto/16 :goto_0

    :cond_f
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_10

    const-string/jumbo v2, "handleClearState"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile;->handleClearState()V

    goto/16 :goto_0

    :cond_10
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xf

    if-ne v6, v7, :cond_12

    const-string/jumbo v2, "handleDisableStateChanged"

    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_11

    :goto_4
    invoke-static {v6, v4}, Lcom/android/systemui/qs/QSTile;->-wrap1(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_11
    move v4, v5

    goto :goto_4

    :cond_12
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_13

    const-string/jumbo v2, "handleUpdateDetail"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-static {v4}, Lcom/android/systemui/qs/QSTile;->-wrap7(Lcom/android/systemui/qs/QSTile;)V

    goto/16 :goto_0

    :cond_13
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_15

    const-string/jumbo v2, "setListening"

    iget-object v6, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_14

    :goto_5
    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    goto/16 :goto_0

    :cond_14
    move v4, v5

    goto :goto_5

    :cond_15
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
