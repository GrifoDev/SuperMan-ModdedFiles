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
    .param p1, "this$0"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1220
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

    .line 1221
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1265
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1223
    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    goto :goto_0

    .line 1226
    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    goto :goto_0

    .line 1229
    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->checkKeyguardLocked()V

    goto :goto_0

    .line 1237
    :sswitch_4
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1238
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance()V

    goto :goto_0

    .line 1242
    :sswitch_5
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getSmartCallPopupUI()Lcom/android/incallui/service/ui/SmartCallPopupUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updateSmartCallInfo()V

    .line 1244
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1245
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    .line 1246
    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1247
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

    .line 1248
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    # getter for: Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupService;->access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V

    .line 1250
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

    .line 1257
    :sswitch_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1258
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$7;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForShow()V

    goto/16 :goto_0

    .line 1221
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x67 -> :sswitch_3
        0x69 -> :sswitch_0
        0x6b -> :sswitch_2
        0x6c -> :sswitch_6
        0x78 -> :sswitch_5
        0xa5 -> :sswitch_4
    .end sparse-switch
.end method
