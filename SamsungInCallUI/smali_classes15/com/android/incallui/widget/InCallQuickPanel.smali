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
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-boolean v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    .line 70
    return-void
.end method


# virtual methods
.method protected getAMRecordBaseTime()J
    .locals 6

    .prologue
    .line 305
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v2

    .line 306
    .local v2, "recorder":Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-virtual {v2}, Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;->getRecordTime()J

    move-result-wide v0

    .line 308
    .local v0, "duration":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 310
    .end local v0    # "duration":J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method protected getQuickPanelDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "fgState"    # I

    .prologue
    const v3, 0x7f0900cb

    const v2, 0x7f09001f

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "description":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 316
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f09013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_0
    :goto_0
    return-object v0

    .line 319
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f09013c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f09013d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 330
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 331
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 332
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f0900f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRecordBaseTime()J
    .locals 6

    .prologue
    .line 296
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v2

    .line 297
    .local v2, "recorder":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getRecordTime()J

    move-result-wide v0

    .line 299
    .local v0, "duration":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 301
    .end local v0    # "duration":J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getTTS(J)Ljava/lang/String;
    .locals 19
    .param p1, "time"    # J

    .prologue
    .line 343
    const-wide/32 v14, 0x36ee80

    div-long v14, p1, v14

    long-to-int v6, v14

    .line 344
    .local v6, "hours":I
    const-wide/32 v14, 0x36ee80

    rem-long v14, p1, v14

    const-wide/32 v16, 0xea60

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 345
    .local v7, "minutes":I
    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    .line 346
    .local v9, "seconds":I
    if-eqz v6, :cond_1

    const/4 v13, 0x1

    .line 348
    .local v13, "usingHour":Z
    :goto_0
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%d"

    aput-object v15, v2, v14

    .line 350
    .local v2, "SRC_TAGS":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 351
    .local v11, "strMinutes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e4

    .line 352
    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 351
    invoke-static {v14, v2, v11}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 354
    .local v4, "charMinutes":Ljava/lang/CharSequence;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 355
    .local v12, "strSeconds":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e6

    .line 356
    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 355
    invoke-static {v14, v2, v12}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 358
    .local v5, "charSeconds":Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    .local v8, "sb":Ljava/lang/StringBuffer;
    if-eqz v13, :cond_0

    .line 360
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 361
    .local v10, "strHours":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v15, 0x7f0902e3

    .line 362
    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 361
    invoke-static {v14, v2, v10}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 363
    .local v3, "charHours":Ljava/lang/CharSequence;
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 366
    .end local v3    # "charHours":Ljava/lang/CharSequence;
    .end local v10    # "strHours":[Ljava/lang/String;
    :cond_0
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 368
    const-string v14, " "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 346
    .end local v2    # "SRC_TAGS":[Ljava/lang/String;
    .end local v4    # "charMinutes":Ljava/lang/CharSequence;
    .end local v5    # "charSeconds":Ljava/lang/CharSequence;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "strMinutes":[Ljava/lang/String;
    .end local v12    # "strSeconds":[Ljava/lang/String;
    .end local v13    # "usingHour":Z
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method protected updateHoldState(Z)V
    .locals 3
    .param p1, "isFgOnHold"    # Z

    .prologue
    const v2, 0x7f1002c2

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextColor(II)V

    .line 245
    :goto_0
    return-void

    .line 243
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
    .locals 28
    .param p1, "fgCall"    # Lcom/android/incallui/Call;
    .param p2, "bgCall"    # Lcom/android/incallui/Call;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "connectedTime"    # J

    .prologue
    .line 84
    const-string v2, "InCallQuickPanel"

    const-string v3, "updateInCallQuickPanel"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getState()I

    move-result v16

    .line 87
    .local v16, "fgState":I
    const/4 v13, 0x2

    .line 88
    .local v13, "bgState":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    .line 90
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    .line 92
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

    .line 93
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

    .line 95
    const/16 v2, 0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_c

    const/16 v21, 0x1

    .line 96
    .local v21, "isFgOnHold":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v21, 0x0

    .line 97
    :cond_1
    const/16 v2, 0x8

    if-ne v13, v2, :cond_d

    const/16 v20, 0x1

    .line 98
    .local v20, "isBgOnHold":Z
    :goto_2
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_e

    const/16 v19, 0x1

    .line 100
    .local v19, "isActiveCall":Z
    :goto_3
    const v2, 0x7f1002b7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 101
    const/16 v27, 0x0

    .line 102
    .local v27, "userIcon":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_11

    .line 103
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_f

    .line 104
    const v2, 0x7f1002c1

    const v3, 0x7f020368

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    .line 110
    :cond_2
    :goto_4
    const v2, 0x7f1002c1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 114
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInPhoneTypeIcon()V

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->updateName(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInCallQuickPanelButton(I)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->updateJanskyInfo()V

    .line 119
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->updateHoldState(Z)V

    .line 121
    if-nez v19, :cond_3

    if-eqz v21, :cond_12

    :cond_3
    const/16 v22, 0x1

    .line 122
    .local v22, "showConnectTime":Z
    :goto_6
    const v3, 0x7f1002c6

    if-eqz v22, :cond_13

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p4

    .line 124
    .local v14, "duration":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v14

    .line 125
    .local v4, "baseTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-lez v2, :cond_14

    .line 126
    const v3, 0x7f1002c6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 127
    const v2, 0x7f1002c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/incallui/widget/InCallQuickPanel;->getTTS(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 132
    :goto_8
    if-nez v22, :cond_15

    const/16 v23, 0x1

    .line 133
    .local v23, "showDescription":Z
    :goto_9
    const v3, 0x7f1002c5

    if-eqz v23, :cond_16

    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 134
    const v2, 0x7f1002c5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->getQuickPanelDescription(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    const/16 v25, 0x0

    .line 137
    .local v25, "showRecordText":Z
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->getRecordBaseTime()J

    move-result-wide v8

    .line 139
    .local v8, "recordDurationBaseTime":J
    if-eqz v19, :cond_17

    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_17

    .line 140
    const/16 v25, 0x1

    .line 141
    const v2, 0x7f1002cd

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 142
    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 150
    .end local v8    # "recordDurationBaseTime":J
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

    .line 151
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v19, :cond_5

    .line 152
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

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/InCallQuickPanel;->getAMRecordBaseTime()J

    move-result-wide v8

    .line 154
    .restart local v8    # "recordDurationBaseTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-lez v2, :cond_18

    .line 155
    const/16 v25, 0x1

    .line 156
    const v2, 0x7f1002cd

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 157
    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    .line 165
    .end local v8    # "recordDurationBaseTime":J
    :cond_5
    :goto_c
    if-eqz v19, :cond_6

    if-eqz v20, :cond_6

    if-eqz v25, :cond_7

    :cond_6
    if-eqz v21, :cond_19

    :cond_7
    const/16 v24, 0x1

    .line 166
    .local v24, "showHoldText":Z
    :goto_d
    const v3, 0x7f1002ca

    if-eqz v24, :cond_1a

    const/4 v2, 0x0

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 167
    if-eqz v24, :cond_8

    .line 168
    if-eqz v21, :cond_1b

    .line 169
    const v2, 0x7f1002cc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    const v6, 0x7f090021

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 177
    :cond_8
    :goto_f
    if-eqz v19, :cond_1c

    if-eqz v22, :cond_1c

    if-nez v24, :cond_1c

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v26, 0x1

    .line 178
    .local v26, "showVideoPausedText":Z
    :goto_10
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 179
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v12

    .line 180
    .local v12, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v12, :cond_9

    .line 181
    if-eqz v26, :cond_1d

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-nez v2, :cond_1d

    const/16 v26, 0x1

    .line 183
    :cond_9
    :goto_11
    const v3, 0x7f1002c7

    if-eqz v26, :cond_1e

    const/4 v2, 0x0

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 184
    if-eqz v26, :cond_a

    .line 185
    const v2, 0x7f1002ca

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 188
    .end local v12    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_a
    return-void

    .line 88
    .end local v4    # "baseTime":J
    .end local v14    # "duration":J
    .end local v19    # "isActiveCall":Z
    .end local v20    # "isBgOnHold":Z
    .end local v21    # "isFgOnHold":Z
    .end local v22    # "showConnectTime":Z
    .end local v23    # "showDescription":Z
    .end local v24    # "showHoldText":Z
    .end local v25    # "showRecordText":Z
    .end local v26    # "showVideoPausedText":Z
    .end local v27    # "userIcon":I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0

    .line 95
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 97
    .restart local v21    # "isFgOnHold":Z
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 98
    .restart local v20    # "isBgOnHold":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 105
    .restart local v19    # "isActiveCall":Z
    .restart local v27    # "userIcon":I
    :cond_f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x2

    cmp-long v2, v2, v6

    if-nez v2, :cond_10

    .line 106
    const v2, 0x7f1002c1

    const v3, 0x7f020362

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 107
    :cond_10
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    const-wide/16 v6, 0x3

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 108
    const v2, 0x7f1002c1

    const v3, 0x7f020366

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 112
    :cond_11
    const v2, 0x7f1002c1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    goto/16 :goto_5

    .line 121
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 122
    .restart local v22    # "showConnectTime":Z
    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_7

    .line 129
    .restart local v4    # "baseTime":J
    .restart local v14    # "duration":J
    :cond_14
    const v3, 0x7f1002c6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_8

    .line 132
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 133
    .restart local v23    # "showDescription":Z
    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_a

    .line 144
    .restart local v8    # "recordDurationBaseTime":J
    .restart local v25    # "showRecordText":Z
    :cond_17
    const v2, 0x7f1002cd

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 145
    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_b

    .line 159
    :cond_18
    const v2, 0x7f1002cd

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 160
    const v7, 0x7f1002d1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/incallui/widget/InCallQuickPanel;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_c

    .line 165
    .end local v8    # "recordDurationBaseTime":J
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_d

    .line 166
    .restart local v24    # "showHoldText":Z
    :cond_1a
    const/16 v2, 0x8

    goto/16 :goto_e

    .line 171
    :cond_1b
    const/16 v17, 0x1

    .line 172
    .local v17, "holdCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902a7

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

    .line 173
    .local v18, "holdText":Ljava/lang/String;
    const v2, 0x7f1002cc

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/widget/InCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 177
    .end local v17    # "holdCount":I
    .end local v18    # "holdText":Ljava/lang/String;
    :cond_1c
    const/16 v26, 0x0

    goto/16 :goto_10

    .line 181
    .restart local v12    # "activity":Lcom/android/incallui/InCallActivity;
    .restart local v26    # "showVideoPausedText":Z
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_11

    .line 183
    :cond_1e
    const/16 v2, 0x8

    goto/16 :goto_12
.end method

.method public updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;JZJ)V
    .locals 1
    .param p1, "fgCall"    # Lcom/android/incallui/Call;
    .param p2, "bgCall"    # Lcom/android/incallui/Call;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "connectedTime"    # J
    .param p6, "EmergencyMode"    # Z
    .param p7, "userType"    # J

    .prologue
    .line 77
    iput-boolean p6, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    .line 78
    iput-wide p7, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mUserType:J

    .line 79
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 80
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/incallui/widget/InCallQuickPanel;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)V

    .line 81
    return-void
.end method

.method protected updateInCallQuickPanelButton(I)V
    .locals 11
    .param p1, "state"    # I

    .prologue
    .line 248
    const-string v9, "InCallQuickPanel"

    const-string v10, "updateInCallQuickPanelButton"

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/16 v9, 0x8

    if-ne p1, v9, :cond_7

    const/4 v2, 0x1

    .line 251
    .local v2, "isOnHold":Z
    :goto_0
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    .line 253
    .local v0, "isIncoming":Z
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    .line 254
    .local v4, "showAnswerButton":Z
    const v10, 0x7f1002b9

    if-eqz v4, :cond_8

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 256
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    .line 257
    .local v7, "showRejectButton":Z
    const v10, 0x7f1002bd

    if-eqz v7, :cond_9

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 259
    if-nez v7, :cond_a

    const/4 v5, 0x1

    .line 260
    .local v5, "showEndButton":Z
    :goto_3
    const v10, 0x7f1002be

    if-eqz v5, :cond_b

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 262
    const v10, 0x7f1002ba

    if-eqz v2, :cond_c

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 264
    if-nez v2, :cond_d

    if-nez v0, :cond_d

    iget-boolean v9, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mEmergencyMode:Z

    if-nez v9, :cond_d

    const/4 v6, 0x1

    .line 265
    .local v6, "showMuteButton":Z
    :goto_6
    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->isCallForwardingState()Z

    move-result v9

    if-nez v9, :cond_e

    if-nez v0, :cond_e

    const/4 v8, 0x1

    .line 266
    .local v8, "showSpeakerButton":Z
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

    .line 267
    invoke-static {v9}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 268
    :cond_1
    const/4 v6, 0x0

    .line 269
    const/4 v8, 0x0

    .line 271
    :cond_2
    const-string v9, "tablet_device"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "no_receiver_in_call"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 272
    const/4 v8, 0x0

    .line 275
    :cond_3
    const v10, 0x7f1002bc

    if-eqz v6, :cond_f

    const/4 v9, 0x0

    :goto_8
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 276
    if-eqz v6, :cond_5

    .line 277
    invoke-static {p1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/android/incallui/widget/InCallQuickPanel;->isEmergencyNumber:Z

    if-eqz v9, :cond_10

    .line 278
    :cond_4
    const v9, 0x7f1002bc

    const v10, 0x7f020375

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    .line 279
    const v9, 0x7f1002bc

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/incallui/widget/InCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 287
    :cond_5
    :goto_9
    const v10, 0x7f1002bb

    if-eqz v8, :cond_12

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setViewVisibility(II)V

    .line 288
    if-eqz v8, :cond_6

    .line 289
    const/16 v9, 0x8

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v10

    if-ne v9, v10, :cond_13

    const/4 v3, 0x1

    .line 290
    .local v3, "isSpekaerOn":Z
    :goto_b
    const v10, 0x7f1002bb

    if-eqz v3, :cond_14

    const v9, 0x7f02037c

    :goto_c
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    .line 293
    .end local v3    # "isSpekaerOn":Z
    :cond_6
    return-void

    .line 250
    .end local v0    # "isIncoming":Z
    .end local v2    # "isOnHold":Z
    .end local v4    # "showAnswerButton":Z
    .end local v5    # "showEndButton":Z
    .end local v6    # "showMuteButton":Z
    .end local v7    # "showRejectButton":Z
    .end local v8    # "showSpeakerButton":Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 254
    .restart local v0    # "isIncoming":Z
    .restart local v2    # "isOnHold":Z
    .restart local v4    # "showAnswerButton":Z
    :cond_8
    const/16 v9, 0x8

    goto/16 :goto_1

    .line 257
    .restart local v7    # "showRejectButton":Z
    :cond_9
    const/16 v9, 0x8

    goto/16 :goto_2

    .line 259
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 260
    .restart local v5    # "showEndButton":Z
    :cond_b
    const/16 v9, 0x8

    goto/16 :goto_4

    .line 262
    :cond_c
    const/16 v9, 0x8

    goto/16 :goto_5

    .line 264
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 265
    .restart local v6    # "showMuteButton":Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 275
    .restart local v8    # "showSpeakerButton":Z
    :cond_f
    const/16 v9, 0x8

    goto :goto_8

    .line 281
    :cond_10
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v1

    .line 282
    .local v1, "isMuted":Z
    const v10, 0x7f1002bc

    if-eqz v1, :cond_11

    const v9, 0x7f020377

    :goto_d
    invoke-virtual {p0, v10, v9}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    goto :goto_9

    :cond_11
    const v9, 0x7f020376

    goto :goto_d

    .line 287
    .end local v1    # "isMuted":Z
    :cond_12
    const/16 v9, 0x8

    goto :goto_a

    .line 289
    :cond_13
    const/4 v3, 0x0

    goto :goto_b

    .line 290
    .restart local v3    # "isSpekaerOn":Z
    :cond_14
    const v9, 0x7f02037b

    goto :goto_c
.end method

.method protected updateInPhoneTypeIcon()V
    .locals 6

    .prologue
    .line 191
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

    .line 192
    const v2, 0x7f02037f

    .line 193
    .local v2, "phonetypeIcon":I
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-string v3, "feature_chn"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    const v2, 0x7f02037d

    .line 199
    :cond_0
    :goto_0
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    iget-object v3, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_3

    .line 201
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const v2, 0x7f020373

    .line 233
    :cond_1
    :goto_1
    const v3, 0x7f1002b6

    invoke-virtual {p0, v3, v2}, Lcom/android/incallui/widget/InCallQuickPanel;->setImageViewResource(II)V

    .line 234
    return-void

    .line 197
    :cond_2
    const v2, 0x7f02037e

    goto :goto_0

    .line 203
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/widget/InCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    const v2, 0x7f020373

    goto :goto_1

    .line 207
    :cond_4
    const v2, 0x7f020372

    goto :goto_1

    .line 210
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 211
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_1

    .line 212
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->getIconType(Lcom/android/incallui/Call;)I

    move-result v0

    .line 213
    .local v0, "HDiconType":I
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 214
    const-string v3, "feature_usa"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "feature_can"

    .line 215
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 217
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 218
    :cond_7
    const v2, 0x7f0203e2

    goto :goto_1

    .line 219
    :cond_8
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    :cond_9
    const v2, 0x7f020057

    goto :goto_1

    .line 223
    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    :cond_b
    const v2, 0x7f0203e1

    goto :goto_1

    .line 228
    :cond_c
    if-eqz v0, :cond_1

    .line 229
    const-string v3, "mini_controller_"

    invoke-static {v3, v0}, Lcom/android/incallui/util/InCallUtils;->getIconName(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_1
.end method

.method protected updateJanskyInfo()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method protected updateName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    return-void
.end method
