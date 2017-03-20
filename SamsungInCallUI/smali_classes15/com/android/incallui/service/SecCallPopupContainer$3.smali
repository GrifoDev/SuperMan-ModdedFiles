.class Lcom/android/incallui/service/SecCallPopupContainer$3;
.super Ljava/lang/Object;
.source "SecCallPopupContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecCallPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1615
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1616
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/incallui/service/SecCallPopupContainer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/incallui/service/SecCallPopupContainer;->access$300(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/String;Z)V

    .line 1618
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1619
    .local v0, "call":Lcom/android/incallui/Call;
    sparse-switch v1, :sswitch_data_0

    .line 1738
    :goto_0
    :sswitch_0
    return-void

    .line 1621
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_answerVoiceByTap()V

    .line 1623
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1624
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1625
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->clearAmViews()V

    .line 1626
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 1627
    invoke-static {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 1628
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 1629
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupService;->stopRecord()V

    goto :goto_0

    .line 1634
    :cond_0
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1635
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1636
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 1637
    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 1641
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStopAutoAnswerTimer()V

    .line 1643
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    .line 1648
    :sswitch_2
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->toggleRejectMsgContent()V

    goto :goto_0

    .line 1651
    :sswitch_3
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_declineByTap()V

    .line 1652
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1653
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1654
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->clearAmViews()V

    .line 1655
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 1656
    invoke-static {v5}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 1657
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 1658
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupService;->endCallClicked()V

    goto/16 :goto_0

    .line 1663
    :cond_2
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1664
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1665
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 1666
    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 1669
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$3;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupService;->rejectCallClicked()V

    goto/16 :goto_0

    .line 1619
    :sswitch_data_0
    .sparse-switch
        0x7f100174 -> :sswitch_1
        0x7f100175 -> :sswitch_3
        0x7f1001fe -> :sswitch_0
        0x7f1001ff -> :sswitch_2
    .end sparse-switch
.end method
