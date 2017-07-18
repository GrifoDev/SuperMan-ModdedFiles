.class public Lcom/android/incallui/operator/dcm/AnswerMemoTimer;
.super Landroid/os/CountDownTimer;
.source "AnswerMemoTimer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnswerMemoTimer"

.field public static final TYPE_AUTO_ANSWER:I = 0x0

.field public static final TYPE_MAX:I = 0x3

.field public static final TYPE_SET_ANSWERING_MODE_FALSE:I = 0x2

.field public static final TYPE_SET_CALL_MEMO_ENABLED_FALSE:I = 0x1


# instance fields
.field private mTimerType:I


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput p1, p0, Lcom/android/incallui/operator/dcm/AnswerMemoTimer;->mTimerType:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    iget v2, p0, Lcom/android/incallui/operator/dcm/AnswerMemoTimer;->mTimerType:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "AnswerMemoTimer"

    const-string v3, "onFinish : type - TYPE_AUTO_ANSWER"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getAnswerMemoController()Lcom/android/incallui/operator/dcm/AnswerMemoController;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "AnswerMemoTimer"

    const-string v3, "onFinish : controller is null. Returning..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->resetAutoAnsTimer()V

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AnswerMemoTimer"

    const-string v3, "KDI operator : Voice party call"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->isLiveCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AnswerMemoTimer"

    const-string v3, "hangUpOngoingCall: set DISCONNECTING voice memo"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setState(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/operator/dcm/AnswerMemoController;->answeringMode()V

    goto :goto_0

    :pswitch_1
    const-string v2, "AnswerMemoTimer"

    const-string v3, "onFinish : type - TYPE_SET_CALL_MEMO_ENABLED_FALSE"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "false"

    invoke-static {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAudioParameters(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "AnswerMemoTimer"

    const-string v3, "onFinish : type - TYPE_SET_ANSWERING_MODE_FALSE"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "isAutoAnsweringMode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
