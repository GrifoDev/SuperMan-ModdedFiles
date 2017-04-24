.class public Lcom/android/incallui/widget/InCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "InCallQuickPanel.java"


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
.method protected getAMRecordBaseTime()J
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method protected getQuickPanelDescription(I)Ljava/lang/String;
    .locals 4

    const v3, 0x7f0900cb

    const v2, 0x7f09001f

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f09013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f09013d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRecordBaseTime()J
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getTTS(J)Ljava/lang/String;
    .locals 19

    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    if-eqz v6, :cond_1

    const/4 v13, 0x1

    :goto_0
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e6

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e8

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v13, :cond_0

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e5

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected updateHoldState(Z)V
    .locals 3

    const v2, 0x7f1002c2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    goto :goto_0
.end method

.method public updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)V
    .locals 32

    const-string v2, "InCallQuickPanel"

    const-string v3, "updateInCallQuickPanel"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v16

    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    :cond_0
    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- contentTitle = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- state = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_c

    const/16 v22, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v22, 0x0

    :cond_1
    const/16 v2, 0x8

    if-ne v13, v2, :cond_d

    const/16 v21, 0x1

    :goto_2
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_e

    const/16 v20, 0x1

    :goto_3
    const v2, 0x7f1002b7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_f

    const v2, 0x7f1002c1

    const v3, 0x7f020372

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    :cond_2
    :goto_4
    const v2, 0x7f1002c1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInPhoneTypeIcon()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->updateName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInCallQuickPanelButton(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->updateJanskyInfo()V

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->updateHoldState(Z)V

    if-nez v20, :cond_3

    if-eqz v22, :cond_12

    :cond_3
    const/16 v25, 0x1

    :goto_6
    const v3, 0x7f1002c6

    if-eqz v25, :cond_13

    const/4 v2, 0x0

    :goto_7
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

    if-lez v2, :cond_14

    const v3, 0x7f1002c6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    const v2, 0x7f1002c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/widget/InCallQuickPanel;->getTTS(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_8
    if-nez v25, :cond_15

    const/16 v26, 0x1

    :goto_9
    const v3, 0x7f1002c5

    if-eqz v26, :cond_16

    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v2, 0x7f1002c5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->getQuickPanelDescription(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v28, 0x0

    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->getRecordBaseTime()J

    move-result-wide v8

    if-eqz v20, :cond_18

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_18

    const/16 v28, 0x1

    const v2, 0x7f1002cd

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v24

    if-eqz v24, :cond_17

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v2

    if-nez v2, :cond_17

    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    const v2, 0x7f1002cf

    const-string v3, "setBackgroundResource"

    const v6, 0x7f02022a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/android/incallui/widget/InCallQuickPanel;->setInt(ILjava/lang/String;I)V

    const v2, 0x7f1002cf

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0175

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v23

    const v2, 0x7f1002d1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    :cond_4
    :goto_b
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v20, :cond_5

    const-string v2, "InCallQuickPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- Showing AM recording in Status Bar = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->getAMRecordBaseTime()J

    move-result-wide v8

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_19

    const/16 v28, 0x1

    const v2, 0x7f1002cd

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    :cond_5
    :goto_c
    if-eqz v20, :cond_6

    if-eqz v21, :cond_6

    if-eqz v28, :cond_7

    :cond_6
    if-eqz v22, :cond_1a

    :cond_7
    const/16 v27, 0x1

    :goto_d
    const v3, 0x7f1002ca

    if-eqz v27, :cond_1b

    const/4 v2, 0x0

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v27, :cond_8

    if-eqz v22, :cond_1c

    const v2, 0x7f1002cc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v6, 0x7f090021

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_8
    :goto_f
    if-eqz v20, :cond_1d

    if-eqz v25, :cond_1d

    if-nez v27, :cond_1d

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v29, 0x1

    :goto_10
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v12

    if-eqz v12, :cond_9

    if-eqz v29, :cond_1e

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_1e

    const/16 v29, 0x1

    :cond_9
    :goto_11
    const v3, 0x7f1002c7

    if-eqz v29, :cond_1f

    const/4 v2, 0x0

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v29, :cond_a

    const v2, 0x7f1002ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    :cond_a
    return-void

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0

    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x2

    cmp-long v2, v2, v6

    if-nez v2, :cond_10

    const v2, 0x7f1002c1

    const v3, 0x7f02036c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x3

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    const v2, 0x7f1002c1

    const v3, 0x7f020370

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_4

    :cond_11
    const v2, 0x7f1002c1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_5

    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_7

    :cond_14
    const v3, 0x7f1002c6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_8

    :cond_15
    const/16 v26, 0x0

    goto/16 :goto_9

    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_a

    :cond_17
    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    const v2, 0x7f1002cf

    const-string v3, "setBackgroundResource"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6}, Lcom/android/incallui/widget/InCallQuickPanel;->setInt(ILjava/lang/String;I)V

    const v2, 0x7f1002cf

    const v3, 0x7f0203c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0179

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v19

    const v2, 0x7f1002d1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    goto/16 :goto_b

    :cond_18
    const v2, 0x7f1002cd

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_b

    :cond_19
    const v2, 0x7f1002cd

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_c

    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_d

    :cond_1b
    const/16 v2, 0x8

    goto/16 :goto_e

    :cond_1c
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const v2, 0x7f1002cc

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_1d
    const/16 v29, 0x0

    goto/16 :goto_10

    :cond_1e
    const/16 v29, 0x0

    goto/16 :goto_11

    :cond_1f
    const/16 v2, 0x8

    goto/16 :goto_12
.end method

.method public updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;JZJ)V
    .locals 1

    iput-boolean p6, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    iput-wide p7, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)V

    return-void
.end method

.method protected updateInCallQuickPanelButton(I)V
    .locals 11

    const-string v9, "InCallQuickPanel"

    const-string v10, "updateInCallQuickPanelButton"

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x8

    if-ne p1, v9, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    const v10, 0x7f1002b9

    if-eqz v4, :cond_8

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    const v10, 0x7f1002bd

    if-eqz v7, :cond_9

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-nez v7, :cond_a

    const/4 v5, 0x1

    :goto_3
    const v10, 0x7f1002be

    if-eqz v5, :cond_b

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    const v10, 0x7f1002ba

    if-eqz v2, :cond_c

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-nez v2, :cond_d

    if-nez v0, :cond_d

    iget-boolean v9, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    if-nez v9, :cond_d

    const/4 v6, 0x1

    :goto_6
    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v9

    if-nez v9, :cond_e

    if-nez v0, :cond_e

    const/4 v8, 0x1

    :goto_7
    const-string v9, "support_nsri_secure"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/16 v9, 0x10

    invoke-static {v9}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_2
    const-string v9, "tablet_device"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "no_receiver_in_call"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x0

    :cond_3
    const v10, 0x7f1002bc

    if-eqz v6, :cond_f

    const/4 v9, 0x0

    :goto_8
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v6, :cond_5

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    if-eqz v9, :cond_10

    :cond_4
    const v9, 0x7f1002bc

    const v10, 0x7f02037f

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    const v9, 0x7f1002bc

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/widget/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_5
    :goto_9
    const v10, 0x7f1002bb

    if-eqz v8, :cond_12

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    if-eqz v8, :cond_6

    const/16 v9, 0x8

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v10

    if-ne v9, v10, :cond_13

    const/4 v3, 0x1

    :goto_b
    const v10, 0x7f1002bb

    if-eqz v3, :cond_14

    const v9, 0x7f020386

    :goto_c
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    :cond_6
    return-void

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v9, 0x8

    goto/16 :goto_1

    :cond_9
    const/16 v9, 0x8

    goto/16 :goto_2

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v9, 0x8

    goto/16 :goto_4

    :cond_c
    const/16 v9, 0x8

    goto/16 :goto_5

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_f
    const/16 v9, 0x8

    goto :goto_8

    :cond_10
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v1

    const v10, 0x7f1002bc

    if-eqz v1, :cond_11

    const v9, 0x7f020381

    :goto_d
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto :goto_9

    :cond_11
    const v9, 0x7f020380

    goto :goto_d

    :cond_12
    const/16 v9, 0x8

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    goto :goto_b

    :cond_14
    const v9, 0x7f020385

    goto :goto_c
.end method

.method protected updateInPhoneTypeIcon()V
    .locals 6

    const-string v3, "InCallQuickPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInPhoneTypeIcon() - VideoCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f020389

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "feature_chn"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x7f020387

    :cond_0
    :goto_0
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f02037d

    :cond_1
    :goto_1
    const v3, 0x7f1002b6

    invoke-virtual {p0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    return-void

    :cond_2
    const v2, 0x7f020388

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_4

    const v2, 0x7f02037d

    goto :goto_1

    :cond_4
    const v2, 0x7f02037c

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "feature_usa"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "feature_can"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const v2, 0x7f0203ec

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_9
    const v2, 0x7f020057

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_b
    const v2, 0x7f0203eb

    goto :goto_1

    :cond_c
    if-eqz v0, :cond_1

    const-string v3, "mini_controller_"

    invoke-static {v3, v0}, Lcom/android/incallui/util/InCallUtils;->getIconName(Ljava/lang/String;I)I

    move-result v2

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
