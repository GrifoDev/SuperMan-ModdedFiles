.class Lcom/android/incallui/StatusBarNotifier$5;
.super Landroid/os/Handler;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$5;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    const-string v1, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    .line 269
    .local v0, "mNoti":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$5;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1, v0}, Lcom/android/incallui/StatusBarNotifier;->notifyRejectCallNotification(Landroid/app/Notification;)V

    goto :goto_0

    .line 272
    .end local v0    # "mNoti":Landroid/app/Notification;
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$5;->this$0:Lcom/android/incallui/StatusBarNotifier;

    # invokes: Lcom/android/incallui/StatusBarNotifier;->handleShowGreenBarMessage()V
    invoke-static {v1}, Lcom/android/incallui/StatusBarNotifier;->access$500(Lcom/android/incallui/StatusBarNotifier;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
