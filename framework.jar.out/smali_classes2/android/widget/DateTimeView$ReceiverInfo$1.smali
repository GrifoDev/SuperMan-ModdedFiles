.class Landroid/widget/DateTimeView$ReceiverInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/DateTimeView$ReceiverInfo;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView$ReceiverInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/DateTimeView$ReceiverInfo;

    .prologue
    .line 399
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const-string/jumbo v1, "DateTimeView"

    const-string/jumbo v2, "DateTimeView received ACTION_TIME_TICK : start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-virtual {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->getSoonestUpdateTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 409
    const-string/jumbo v1, "DateTimeView"

    const-string/jumbo v2, "DateTimeView received ACTION_TIME_TICK : end early"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo$1;->this$1:Landroid/widget/DateTimeView$ReceiverInfo;

    invoke-virtual {v1}, Landroid/widget/DateTimeView$ReceiverInfo;->updateAll()V

    .line 420
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    const-string/jumbo v1, "DateTimeView"

    const-string/jumbo v2, "DateTimeView received ACTION_TIME_TICK : end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    return-void
.end method
