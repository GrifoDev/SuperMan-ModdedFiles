.class Lcom/android/incallui/accessory/CoverScreen$1;
.super Landroid/os/Handler;
.source "CoverScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/accessory/CoverScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x6e

    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 266
    const-string v0, "CoverScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 246
    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # invokes: Lcom/android/incallui/accessory/CoverScreen;->dismissPopupWindow()V
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$000(Lcom/android/incallui/accessory/CoverScreen;)V

    goto :goto_0

    .line 253
    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartCallInfo()V

    .line 254
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    .line 256
    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/accessory/CoverScreen;->access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V

    .line 259
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen$1;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/accessory/CoverScreen;->access$100(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/Call;

    move-result-object v1

    # invokes: Lcom/android/incallui/accessory/CoverScreen;->updateRejectMsgContent(Lcom/android/incallui/Call;)V
    invoke-static {v0, v1}, Lcom/android/incallui/accessory/CoverScreen;->access$200(Lcom/android/incallui/accessory/CoverScreen;Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 244
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x78 -> :sswitch_1
    .end sparse-switch
.end method
