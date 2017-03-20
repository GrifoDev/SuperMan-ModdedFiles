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
    .param p1, "secCallPopupService"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    .line 32
    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 35
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    .line 36
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    .line 39
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "automatic_answering_machine"

    .line 40
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-direct {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    .line 43
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startService(Landroid/content/Context;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)Lcom/android/incallui/service/SecCallPopupService;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/service/SecCallPopupAnswerMemo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupAnswerMemo;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/incallui/service/SecCallPopupAnswerMemo;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    return v0
.end method

.method private startAutoAnsTimer(I)V
    .locals 6
    .param p1, "limit"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 122
    const-string v0, "startAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->resetAutoAnsTimer()V

    .line 124
    new-instance v0, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    int-to-long v2, p1

    mul-long/2addr v2, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;-><init>(Lcom/android/incallui/service/SecCallPopupAnswerMemo;JJ)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    .line 125
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method


# virtual methods
.method public checkAndStartAnswerMemo()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 67
    const-string v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v8, "checkAndStartAnswerMemo - popup!"

    invoke-static {p0, v8, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 71
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 72
    .local v1, "call":Lcom/android/incallui/Call;
    const/4 v3, 0x0

    .line 74
    .local v3, "hasActiveCall":Z
    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    move v3, v6

    .line 78
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_ring_duration"

    const/16 v10, 0xd

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 82
    .local v5, "limit":I
    iget-object v8, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "callsettings_answer_memo"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "answerMemo":I
    const/4 v4, 0x0

    .line 87
    .local v4, "isVoicePartyCall":Z
    const-string v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 88
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v4

    .line 91
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

    .line 92
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

    .line 93
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

    .line 94
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

    .line 95
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

    .line 96
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

    .line 97
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

    .line 99
    if-eqz v0, :cond_4

    if-ne v0, v6, :cond_6

    .line 100
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

    .line 102
    .local v2, "canAMStart":Z
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

    .line 104
    if-eqz v2, :cond_0

    .line 105
    const-string v6, "answerMemo  ON "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->checkAvailableStorage()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 107
    invoke-direct {p0, v5}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->startAutoAnsTimer(I)V

    goto/16 :goto_0

    .end local v0    # "answerMemo":I
    .end local v2    # "canAMStart":Z
    .end local v4    # "isVoicePartyCall":Z
    .end local v5    # "limit":I
    :cond_5
    move v3, v7

    .line 75
    goto/16 :goto_1

    .restart local v0    # "answerMemo":I
    .restart local v4    # "isVoicePartyCall":Z
    .restart local v5    # "limit":I
    :cond_6
    move v2, v7

    .line 100
    goto :goto_2

    .line 109
    .restart local v2    # "canAMStart":Z
    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto/16 :goto_0
.end method

.method public clear(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 181
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
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

    .line 183
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 185
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->clearAmViews()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopService(Landroid/content/Context;)V

    .line 195
    :cond_1
    return-void
.end method

.method public disconnected()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->clearAmViews()V

    .line 169
    :cond_0
    return-void
.end method

.method public getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    return-object v0
.end method

.method public isAutoAnswered()Z
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "isAutoAnswered":Z
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
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

    .line 152
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 156
    :cond_0
    return v0
.end method

.method resetAutoAnsTimer()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "resetAutoAnsTimer "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;->cancel()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAutoAnsTimer:Lcom/android/incallui/service/SecCallPopupAnswerMemo$AutoAnsTimer;

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    .line 146
    return-void
.end method

.method public setElapsedAMTimetoIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "fromAMPopup"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string v0, "elapsedAMTime"

    iget v1, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->elapsedAMTime:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :cond_0
    return-void
.end method

.method public startRecord()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->startRecord(Lcom/android/incallui/Call;)V

    .line 52
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->setAMView(Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->mAnsMemoRecorderMgr:Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->stopRecord()V

    .line 61
    :cond_0
    return-void
.end method
