.class Lcom/android/incallui/service/SecCallPopupService$7;
.super Landroid/os/Handler;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecCallPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received: what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v4}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;Z)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->checkKeyguardLocked()V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getSmartCallPopupUI()Lcom/android/incallui/service/ui/SmartCallPopupUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updateSmartCallInfo()V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForShow()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x67 -> :sswitch_3
        0x69 -> :sswitch_0
        0x6b -> :sswitch_2
        0x6c -> :sswitch_5
        0x78 -> :sswitch_4
    .end sparse-switch
.end method
