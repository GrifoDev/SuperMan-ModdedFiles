.class public Lcom/android/incallui/widget/InCallQuickPanel;
.super Landroid/widget/RemoteViews;


# static fields
.field protected static final ACTION_CALL_ANSWER:Ljava/lang/String; = "com.android.incallui.ACTION_CALL_ANSWER"

.field protected static final ACTION_CALL_ANSWER_VIDEO:Ljava/lang/String; = "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

.field protected static final ACTION_CALL_END:Ljava/lang/String; = "com.samsung.incallui.ACTION_CALL_END"

.field protected static final ACTION_CALL_MUTE:Ljava/lang/String; = "com.samsung.incallui.ACTION_CALL_MUTE"

.field protected static final ACTION_CALL_REJECT:Ljava/lang/String; = "com.android.incallui.ACTION_CALL_REJECT"

.field protected static final ACTION_CALL_RESUME:Ljava/lang/String; = "com.android.incallui.ACTION_CALL_RESUME"

.field protected static final ACTION_CALL_SPEAKER:Ljava/lang/String; = "com.samsung.incallui.ACTION_CALL_SPEAKER"

.field protected static final ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER:Ljava/lang/String; = "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER"

.field protected static final LOG_TAG:Ljava/lang/String; = "InCallQuickPanel"


# instance fields
.field protected isEmergencyNumber:Z

.field protected mContext:Landroid/content/Context;

.field protected mEmergencyMode:Z

.field protected mUserType:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    return-void
.end method


# virtual methods
.method public clone()Landroid/widget/RemoteViews;
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "InCallQuickPanel"

    const-string v2, "clone RuntimeException : "

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/widget/InCallQuickPanel;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method protected getAMRecordBaseTime()J
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected getQuickPanelDescription(I)Ljava/lang/String;
    .locals 4

    const v3, 0x7f090108

    const v2, 0x7f09001f

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f090196

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f090198

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRecordBaseTime(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)J
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getTTS(J)Ljava/lang/String;
    .locals 11

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v1, 0x1

    const/4 v2, 0x0

    div-long v4, p1, v8

    long-to-int v3, v4

    rem-long v4, p1, v8

    div-long/2addr v4, v6

    long-to-int v4, v4

    rem-long v6, p1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "%d"

    aput-object v7, v6, v2

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    iget-object v4, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v8, 0x7f090365

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    iget-object v5, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v8, 0x7f090367

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f090364

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v6, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected updateHoldState(Z)V
    .locals 3

    const v2, 0x7f100350

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    goto :goto_0
.end method

.method public updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)V
    .locals 16

    const-string v2, "InCallQuickPanel"

    const-string v3, "updateInCallQuickPanel"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v3, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    if-eqz p2, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    :goto_1
    const-string v3, "InCallQuickPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- contentTitle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "InCallQuickPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x4

    move v12, v3

    :goto_2
    const/16 v3, 0x8

    if-ne v12, v3, :cond_9

    const/4 v3, 0x1

    move v11, v3

    :goto_3
    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    move v10, v2

    :goto_4
    const/4 v2, 0x3

    if-ne v12, v2, :cond_b

    const/4 v2, 0x1

    move v8, v2

    :goto_5
    const v2, 0x7f100345

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f100345

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    const v2, 0x7f10034f

    const v3, 0x7f02042b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    :cond_0
    :goto_6
    const v2, 0x7f10034f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInPhoneTypeIcon()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->updateName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInCallQuickPanelButton(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->updateJanskyInfo()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/incallui/widget/InCallQuickPanel;->updateHoldState(Z)V

    if-nez v8, :cond_1

    if-eqz v11, :cond_f

    :cond_1
    const/4 v2, 0x1

    move v9, v2

    :goto_8
    const v3, 0x7f100354

    if-eqz v9, :cond_10

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v14

    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-lez v2, :cond_11

    const v3, 0x7f100354

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    const v2, 0x7f100354

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/widget/InCallQuickPanel;->getTTS(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_a
    if-nez v9, :cond_12

    const/4 v2, 0x1

    :goto_b
    const v3, 0x7f100353

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f100353

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/incallui/widget/InCallQuickPanel;->getQuickPanelDescription(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->getRecordBaseTime(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-lez v3, :cond_15

    const v3, 0x7f100358

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v2

    if-nez v2, :cond_14

    const v3, 0x7f10035c

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    const v2, 0x7f10035a

    const-string v3, "setBackgroundResource"

    const v4, 0x7f0202b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/incallui/widget/InCallQuickPanel;->setInt(ILjava/lang/String;I)V

    const v2, 0x7f10035a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01b6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const v3, 0x7f10035c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    :cond_2
    :goto_d
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Showing AM recording in Status Bar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->getAMRecordBaseTime()J

    move-result-wide v4

    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-lez v2, :cond_16

    const v2, 0x7f100358

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v3, 0x7f10035c

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    :cond_3
    :goto_e
    if-eqz v8, :cond_4

    if-nez v10, :cond_5

    :cond_4
    if-eqz v11, :cond_17

    :cond_5
    const/4 v2, 0x1

    move v3, v2

    :goto_f
    const v4, 0x7f10035d

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v3, :cond_6

    if-eqz v11, :cond_19

    const v2, 0x7f10035f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_6
    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/VideoCallUtils;->hasVideoPauseState(Lcom/android/incallui/Call;)Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v3

    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1a

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    :goto_12
    move v3, v2

    :goto_13
    const v4, 0x7f100355

    if-eqz v3, :cond_1b

    const/4 v2, 0x0

    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v3, :cond_7

    const v2, 0x7f10035d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const v2, 0x7f10034f

    const v3, 0x7f020425

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const v2, 0x7f10034f

    const v3, 0x7f020429

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_6

    :cond_e
    const v2, 0x7f10034f

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_7

    :cond_f
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_8

    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_9

    :cond_11
    const v3, 0x7f100354

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_a

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_c

    :cond_14
    const v3, 0x7f10035c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    const v2, 0x7f10035a

    const-string v3, "setBackgroundResource"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/incallui/widget/InCallQuickPanel;->setInt(ILjava/lang/String;I)V

    const v2, 0x7f10035a

    const v3, 0x7f02047e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01ba

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const v3, 0x7f10035c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    goto/16 :goto_d

    :cond_15
    const v2, 0x7f100358

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v3, 0x7f10035c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_d

    :cond_16
    const v2, 0x7f100358

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v3, 0x7f10035c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_e

    :cond_17
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_f

    :cond_18
    const/16 v2, 0x8

    goto/16 :goto_10

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090318

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f10035f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_11

    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_1b
    const/16 v2, 0x8

    goto/16 :goto_14

    :cond_1c
    move v3, v2

    goto/16 :goto_13

    :cond_1d
    move v12, v4

    goto/16 :goto_2

    :cond_1e
    move v2, v3

    goto/16 :goto_1
.end method

.method public updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;JZJ)V
    .locals 6

    iput-boolean p6, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    iput-wide p7, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)V

    return-void

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method protected updateInCallQuickPanelButton(I)V
    .locals 10

    const v9, 0x7f10034a

    const v8, 0x7f100349

    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    const-string v0, "InCallQuickPanel"

    const-string v3, "updateInCallQuickPanelButton"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v4, :cond_6

    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v5

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    const v6, 0x7f100347

    if-eqz v3, :cond_7

    move v3, v2

    :goto_1
    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v6

    const v7, 0x7f10034b

    if-eqz v6, :cond_8

    move v3, v2

    :goto_2
    invoke-virtual {p0, v7, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-nez v6, :cond_9

    move v3, v1

    :goto_3
    const v6, 0x7f10034c

    if-eqz v3, :cond_a

    move v3, v2

    :goto_4
    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v6, 0x7f100348

    if-eqz v0, :cond_b

    move v3, v2

    :goto_5
    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-nez v0, :cond_c

    if-nez v5, :cond_c

    iget-boolean v3, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    if-nez v3, :cond_c

    move v3, v1

    :goto_6
    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v5, :cond_d

    move v0, v1

    :goto_7
    const-string v5, "support_nsri_secure"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v0, v2

    move v3, v2

    :cond_2
    const-string v5, "tablet_device"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    move v5, v2

    :goto_8
    if-eqz v3, :cond_e

    move v0, v2

    :goto_9
    invoke-virtual {p0, v9, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_3
    const v0, 0x7f020438

    invoke-virtual {p0, v9, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_4
    :goto_a
    if-eqz v5, :cond_12

    move v0, v2

    :goto_b
    invoke-virtual {p0, v8, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f02043e

    invoke-virtual {p0, v8, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_5
    :goto_c
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto/16 :goto_1

    :cond_8
    move v3, v4

    goto/16 :goto_2

    :cond_9
    move v3, v2

    goto/16 :goto_3

    :cond_a
    move v3, v4

    goto/16 :goto_4

    :cond_b
    move v3, v4

    goto/16 :goto_5

    :cond_c
    move v3, v2

    goto/16 :goto_6

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_e
    move v0, v4

    goto :goto_9

    :cond_f
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-eqz v3, :cond_10

    const v0, 0x7f02043a

    :goto_d
    invoke-virtual {p0, v9, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    if-eqz v3, :cond_11

    const v0, 0x7f09032c

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_a

    :cond_10
    const v0, 0x7f020439

    goto :goto_d

    :cond_11
    const v0, 0x7f09032b

    goto :goto_e

    :cond_12
    move v0, v4

    goto :goto_b

    :cond_13
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    if-ne v4, v0, :cond_14

    :goto_f
    if-eqz v1, :cond_15

    const v0, 0x7f020440

    :goto_10
    invoke-virtual {p0, v8, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    if-eqz v1, :cond_16

    const v0, 0x7f09032c

    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_14
    move v1, v2

    goto :goto_f

    :cond_15
    const v0, 0x7f02043f

    goto :goto_10

    :cond_16
    const v0, 0x7f09032b

    goto :goto_11

    :cond_17
    move v5, v0

    goto/16 :goto_8
.end method

.method protected updateInPhoneTypeIcon()V
    .locals 4

    const v1, 0x7f020436

    const-string v0, "InCallQuickPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInPhoneTypeIcon() - VideoCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f020443

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020441

    :cond_0
    :goto_0
    const-string v2, "support_twophone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    :goto_1
    const v1, 0x7f100344

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    return-void

    :cond_2
    const v0, 0x7f020442

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const v0, 0x7f020435

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v1, "feature_usa"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "feature_can"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const v0, 0x7f0204a3

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_9
    const v0, 0x7f020069

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_b
    const v0, 0x7f0204a2

    goto :goto_1

    :cond_c
    if-eqz v1, :cond_1

    const-string v0, "mini_controller_"

    invoke-static {v0, v1}, Lcom/android/incallui/util/InCallUtils;->getIconName(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_1
.end method

.method protected updateJanskyInfo()V
    .locals 0

    return-void
.end method

.method protected updateName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
