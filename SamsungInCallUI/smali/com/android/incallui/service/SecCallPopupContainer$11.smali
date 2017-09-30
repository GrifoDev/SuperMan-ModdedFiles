.class Lcom/android/incallui/service/SecCallPopupContainer$11;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

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

    invoke-static {v2, v3, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2400(Lcom/android/incallui/service/SecCallPopupContainer;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, v0, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupService;->setHeadUpNotificationWindowFocusable()V

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_answerVoiceByTap()V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleUserEvent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    goto :goto_0

    :cond_1
    const-string v0, "smart_auto_answering"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStopAutoAnswerTimer()V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->toggleRejectMsgContent()V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_declineByTap()V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->handleUserEvent(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->endCallClicked()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "smart_auto_answering"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->rejectCallClicked()V

    goto/16 :goto_0

    :sswitch_4
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupDuringCall_Resume(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    const-string v0, "PIVO"

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Maximize"

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_MaximizeToFullScreenButton()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_8

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    :cond_8
    const-string v0, "POVO"

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v6, :cond_5

    :cond_a
    const-string v0, "PDVO"

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v6}, Lcom/android/incallui/service/SecCallPopupUtils;->isAudio(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090297

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2500(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->toggleSpeaker(Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2600(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->toggleMute(Z)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->endCallClicked()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->videoCallClicked()V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_MakeVideoCall()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->voiceCallClicked()V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->animateForShowBackground()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_MakeVoiceCall()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->messageClicked()V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$11;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupCall_SendMessage()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1001ec -> :sswitch_1
        0x7f1001ed -> :sswitch_3
        0x7f1001f1 -> :sswitch_6
        0x7f1001f3 -> :sswitch_7
        0x7f1001f5 -> :sswitch_8
        0x7f1001f8 -> :sswitch_a
        0x7f1001fa -> :sswitch_9
        0x7f1001fc -> :sswitch_b
        0x7f1001ff -> :sswitch_4
        0x7f100201 -> :sswitch_8
        0x7f100202 -> :sswitch_9
        0x7f100276 -> :sswitch_3
        0x7f100277 -> :sswitch_1
        0x7f100279 -> :sswitch_0
        0x7f10027a -> :sswitch_2
        0x7f100290 -> :sswitch_5
    .end sparse-switch
.end method
