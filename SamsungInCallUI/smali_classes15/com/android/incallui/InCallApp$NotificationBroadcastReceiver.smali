.class public Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "action":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Broadcast from Notification: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    const-string v18, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 196
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string v18, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 199
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    goto :goto_0

    .line 201
    :cond_2
    const-string v18, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 202
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->declineIncomingCall(Landroid/content/Context;)V

    goto :goto_0

    .line 203
    :cond_3
    const-string v18, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 204
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto :goto_0

    .line 205
    :cond_4
    const-string v18, "com.android.incallui.ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 206
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 207
    :cond_5
    const-string v18, "com.android.incallui.ACTION_DECLINE_VIDEO_UPGRADE_REQUEST"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 208
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    .line 209
    :cond_6
    const-string v18, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "com.samsung.rcs.android.incallui.ACTION_SHOW_INCALL"

    .line 210
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 211
    :cond_7
    const-string v18, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "com.samsung.rcs.android.incallui.ACTION_SHOW_INCALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 212
    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 213
    .local v5, "call":Lcom/android/incallui/Call;
    if-eqz v5, :cond_9

    invoke-static {v5}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_maximize(Lcom/android/incallui/Call;)V

    .line 216
    .end local v5    # "call":Lcom/android/incallui/Call;
    :cond_9
    const-string v18, "ims_rcs"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 217
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->stopOverlayService(Landroid/content/Context;)V

    .line 220
    :cond_a
    const-string v18, "sem_statusbar"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SemStatusBarManager;

    .line 221
    .local v11, "mStatusBarManager":Landroid/app/SemStatusBarManager;
    if-eqz v11, :cond_b

    .line 222
    invoke-virtual {v11}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 225
    :cond_b
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallPresenter;->getTargetClass()Ljava/lang/Class;

    move-result-object v6

    .line 226
    .local v6, "cls":Ljava/lang/Class;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 230
    .local v4, "activityIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 231
    .end local v4    # "activityIntent":Landroid/content/Intent;
    .end local v6    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v8

    .line 232
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startActivity() failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    .end local v11    # "mStatusBarManager":Landroid/app/SemStatusBarManager;
    :cond_c
    const-string v18, "com.samsung.incallui.ACTION_CALL_MUTE"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 235
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 236
    .restart local v5    # "call":Lcom/android/incallui/Call;
    if-eqz v5, :cond_d

    invoke-static {v5}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_mute(Lcom/android/incallui/Call;)V

    .line 238
    :cond_d
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->toggleMute()V

    .line 239
    const-string v18, "ims_rcs"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 240
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->updateAudioState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 242
    .end local v5    # "call":Lcom/android/incallui/Call;
    :cond_e
    const-string v18, "com.samsung.incallui.ACTION_CALL_SPEAKER"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 243
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 244
    .restart local v5    # "call":Lcom/android/incallui/Call;
    if-eqz v5, :cond_f

    invoke-static {v5}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_speaker(Lcom/android/incallui/Call;)V

    .line 246
    :cond_f
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->toggleSpeaker()V

    .line 247
    const-string v18, "ims_rcs"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 248
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->updateAudioState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 250
    .end local v5    # "call":Lcom/android/incallui/Call;
    :cond_10
    const-string v18, "com.android.incallui.ACTION_CALL_ANSWER"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 251
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_answer()V

    .line 252
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 253
    .restart local v5    # "call":Lcom/android/incallui/Call;
    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    .line 254
    .end local v5    # "call":Lcom/android/incallui/Call;
    :cond_11
    const-string v18, "com.android.incallui.ACTION_CALL_RESUME"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 255
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 256
    .restart local v5    # "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_resume()V

    .line 257
    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v18

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v5    # "call":Lcom/android/incallui/Call;
    :cond_12
    const-string v18, "com.samsung.incallui.ACTION_CALL_END"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 259
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 260
    .restart local v5    # "call":Lcom/android/incallui/Call;
    if-eqz v5, :cond_13

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/incallui/CallList;->updateNotUpdatingCalls(Lcom/android/incallui/Call;)V

    .line 261
    :cond_13
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_endCall()V

    .line 262
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    .line 263
    const v18, 0x7f09009d

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 264
    .end local v5    # "call":Lcom/android/incallui/Call;
    :cond_14
    const-string v18, "com.android.incallui.ACTION_CALL_REJECT"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 265
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_reject()V

    .line 266
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->declineIncomingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 267
    :cond_15
    const-string v18, "com.samsung.android.incallui.ACTION_BLOCK_SMART_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 268
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_blockNumber()V

    .line 269
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallPresenter;->removeRejectCallNotification()V

    .line 270
    const-string v18, "number"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 271
    .local v15, "number":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v10, "mIntent":Landroid/content/Intent;
    const-string v18, "com.android.server.telecom"

    const-string v19, "com.android.server.telecom.smartcall.SmartCallBlockActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    const-string v18, "number"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 277
    :catch_1
    move-exception v8

    .line 278
    .restart local v8    # "e":Landroid/content/ActivityNotFoundException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startActivity() failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    .end local v10    # "mIntent":Landroid/content/Intent;
    .end local v15    # "number":Ljava/lang/String;
    :cond_16
    const-string v18, "com.samsung.android.incallui.ACTION_REPORT_SMART_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 281
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->miniCall_reportNumber()V

    .line 282
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallPresenter;->removeRejectCallNotification()V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 284
    .local v9, "extras":Landroid/os/Bundle;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 285
    .restart local v10    # "mIntent":Landroid/content/Intent;
    const-string v18, "com.android.server.telecom"

    const-string v19, "com.android.server.telecom.smartcall.SmartCallHiyaReportActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    invoke-virtual {v10, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 289
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 290
    :catch_2
    move-exception v8

    .line 291
    .restart local v8    # "e":Landroid/content/ActivityNotFoundException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "startActivity() failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "mIntent":Landroid/content/Intent;
    :cond_17
    const-string v18, "com.samsung.android.incallui.ACTION_VOICE_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 294
    const-string v18, "com.android.incallui"

    const-string v19, "RCNC"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallPresenter;->removeRejectCallNotification()V

    .line 296
    const-string v18, "number"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 297
    .restart local v15    # "number":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 298
    const-string v18, "telecom"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telecom/TelecomManager;

    .line 299
    .local v17, "tm":Landroid/telecom/TelecomManager;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 300
    .restart local v9    # "extras":Landroid/os/Bundle;
    const-string v18, "roaming_auto_dial"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 301
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v18

    if-eqz v18, :cond_18

    const-string v18, "feature_lgt"

    .line 302
    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 303
    const-string v19, "RADDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCallNumberConverted()Z

    move-result v18

    if-eqz v18, :cond_1a

    const-string v18, "korea"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_18
    const-string v18, "feature_multisim"

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 306
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 308
    :cond_19
    const-string v18, "tel"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 303
    :cond_1a
    const-string v18, "abroad"

    goto :goto_1

    .line 310
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v15    # "number":Ljava/lang/String;
    .end local v17    # "tm":Landroid/telecom/TelecomManager;
    :cond_1b
    const-string v18, "com.samsung.android.incallui.ACTION_CANCEL_RECORD_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 311
    const-string v18, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 313
    .local v14, "notificationMgr":Landroid/app/NotificationManager;
    const-string v18, "notificationId"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 314
    .local v13, "notificationId":I
    if-eqz v13, :cond_0

    invoke-virtual {v14, v13}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 315
    .end local v13    # "notificationId":I
    .end local v14    # "notificationMgr":Landroid/app/NotificationManager;
    :cond_1c
    const-string v18, "com.samsung.android.incallui.ACTION_DELETE_REJECT_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 316
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->dismissRejectedCallNotification()V

    goto/16 :goto_0

    .line 317
    :cond_1d
    const-string v18, "com.samsung.nsds.action.DEVICE_CONFIG_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 318
    const-string v18, "nsds_service_previous_status"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 319
    .local v16, "prevState":I
    const-string v18, "nsds_service_new_status"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 320
    .local v12, "newState":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "DEVICE_CONFIG_CHANGED prev : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", new : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string v19, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, "cscFeature":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v18, "Jansky"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 323
    if-nez v16, :cond_1e

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_1e

    .line 324
    const-string v18, "jansky_info_for_tmo"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/InCallUIFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 325
    :cond_1e
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 326
    const-string v18, "jansky_info_for_tmo"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/incallui/InCallUIFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 329
    .end local v7    # "cscFeature":Ljava/lang/String;
    .end local v12    # "newState":I
    .end local v16    # "prevState":I
    :cond_1f
    const-string v18, "com.samsung.android.incallui.ACTION_CLEAR_REJECT_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 330
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallPresenter;->removeRejectCallNotification()V

    goto/16 :goto_0
.end method
