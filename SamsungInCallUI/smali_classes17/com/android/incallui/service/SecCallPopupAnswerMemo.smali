.class public Lcom/android/incallui/service/SecCallPopupAnswerMemo;
.super Ljava/lang/Object;
.source "SecCallPopupAnswerMemo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;
    }
.end annotation


# instance fields
.field private elapsedAMTime:I

.field mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

.field private mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

.field private mContext:Landroid/content/Context;

.field private mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mWaitingCallDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)Lcom/android/incallui/service/SecCallPopupService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/SecCallPopupAnswerMemo;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    return v0
.end method

.method private startAutoAnsTimer(I)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->resetAutoAnsTimer()V

    new-instance v0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    int-to-long v2, p1

    mul-long/2addr v2, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;-><init>(Lcom/android/incallui/service/SecCallPopupAnswerMemo;JJ)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method


# virtual methods
.method public checkAndStartAnswerMemo()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "checkAndStartAnswerMemo - popup!"

    invoke-static {p0, v8, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    move v3, v6

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x0

    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "limit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "answerMemo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- all_sound_off == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVoicePartyCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEmergencyMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasHoldCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    if-ne v0, v6, :cond_6

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkPhoneVibrateOrSilentMode()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v6

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "answerMemo  canAMStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v5}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->startAutoAnsTimer(I)V

    goto/16 :goto_0

    :cond_5
    move v3, v7

    goto/16 :goto_1

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto/16 :goto_0
.end method

.method public clear(Lcom/android/incallui/Call;)V
    .locals 2

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy :  isAutoAnswered - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->clearAmViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public disconnected()V
    .locals 1

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->clearAmViews()V

    :cond_0
    return-void
.end method

.method public getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public isAutoAnswered()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange :  isAutoAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method resetAutoAnsTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    if-eqz v0, :cond_0

    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    return-void
.end method

.method public setElapsedAMTimetoIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fromAMPopup"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "elapsedAMTime"

    iget v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public startRecord()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->setAMView(Z)V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    :cond_0
    return-void
.end method
