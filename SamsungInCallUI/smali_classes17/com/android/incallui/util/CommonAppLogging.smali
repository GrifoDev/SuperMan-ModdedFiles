.class public Lcom/android/incallui/util/CommonAppLogging;
.super Ljava/lang/Object;
.source "CommonAppLogging.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissRejectedCallNotification()V
    .locals 2

    .prologue
    .line 302
    const v0, 0x7f0903d4

    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09036c

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static endCall_addToContact(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 287
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "ECCO"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "Add to contact"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090356

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public static endCall_blockNumber(Lcom/android/incallui/Call;Z)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "isAleadyBlockedNumber"    # Z

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVOC"

    const-string v3, "EBBT"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IDUN"

    const-string v2, "Add to block list"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    if-eqz p1, :cond_1

    .line 250
    invoke-static {p0, v4}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903fc

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_1
    return-void

    .line 243
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "Block number"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartBlockSpamLevelAppLogging(Landroid/content/Context;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {p0, v4}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090344

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static endCall_messageButton(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 221
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EMSG"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 227
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIEB"

    :goto_0
    const-string v2, "Message"

    .line 226
    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903df

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 227
    :cond_0
    const-string v0, "VOEB"

    goto :goto_0
.end method

.method public static endCall_reportNumber(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 257
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVOC"

    const-string v3, "ERBT"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IDUN"

    const-string v2, "Add to block list"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903d5

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "Report number"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartReportSpamLevelAppLogging(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static endCall_videoCallButton(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 208
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EVIC"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIEB"

    :goto_0
    const-string v2, "Video call"

    .line 213
    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09039e

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void

    .line 214
    :cond_0
    const-string v0, "VOEB"

    goto :goto_0
.end method

.method public static endCall_viewContact(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 276
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EVCO"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VOEB"

    const-string v2, "View contact"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090357

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static endCall_voiceCallButton(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 169
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EVOC"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 175
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIEB"

    :goto_0
    const-string v2, "Voice call"

    .line 174
    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09039f

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :cond_0
    const-string v0, "VOEB"

    goto :goto_0
.end method

.method public static endCall_voiceCallSim1Button(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 182
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EVOC"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIEB"

    :goto_0
    const-string v2, "Voice call"

    .line 187
    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09039f

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 188
    :cond_0
    const-string v0, "VOEB"

    goto :goto_0
.end method

.method public static endCall_voiceCallSim2Button(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 195
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "EVCB"

    const-string v3, "EVOC"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIEB"

    :goto_0
    const-string v2, "Voice call"

    .line 200
    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a0

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void

    .line 201
    :cond_0
    const-string v0, "VOEB"

    goto :goto_0
.end method

.method public static fullScreen_moreOption()V
    .locals 2

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903b9

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static incomingCall_answer()V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    .line 43
    .local v1, "isVideoCall":Z
    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "IVIA"

    const-string v5, "Answer video"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.incallui"

    const-string v5, "ICAB"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "screenId":Ljava/lang/String;
    if-eqz v1, :cond_2

    const v3, 0x7f09033b

    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "eventName":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    if-eqz v1, :cond_3

    const v3, 0x7f09033c

    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1
    :goto_1
    invoke-static {v2, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 51
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_2
    const v3, 0x7f09033d

    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    .restart local v0    # "eventName":Ljava/lang/String;
    :cond_3
    const v3, 0x7f09033e

    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static incomingCall_decline()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IVID"

    const-string v2, "Decline"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "ICRB"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEasyInteraction()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle;->getEasyTouchModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {v3}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090367

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {v3}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090366

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static incomingCall_sendCustomMessage(Lcom/android/incallui/Call;)V
    .locals 3
    .param p0, "mCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IVID"

    const-string v2, "Decline custom"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903de

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static incomingCall_sendMessage(Lcom/android/incallui/Call;)V
    .locals 3
    .param p0, "mCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IVID"

    const-string v2, "Decline message"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "ICRM"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e0

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static miniCall_answer()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "MICA"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MICL"

    const-string v2, "Answer voice"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static miniCall_blockNumber()V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "RCNB"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const v0, 0x7f0903d4

    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090344

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static miniCall_endCall()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/util/AppLogging;->setMiniCallEnd(Z)V

    .line 150
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090376

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static miniCall_maximize(Lcom/android/incallui/Call;)V
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 93
    const-string v0, "MDVO"

    .line 94
    .local v0, "appLoggingFeature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string v0, "MICL"

    .line 101
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Maximize"

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0903a5

    invoke-static {v2}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string v0, "MOCL"

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v0, "MDVT"

    goto :goto_0
.end method

.method public static miniCall_mute(Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 107
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    .line 108
    .local v2, "isMuteOn":Z
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.incallui"

    const-string v5, "MDCM"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "MDVT"

    .line 112
    .local v1, "appLoggingFeature":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "Mute off"

    .line 114
    .local v0, "appLoggingExtra":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_2

    const v3, 0x7f0903be

    .line 117
    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    :goto_2
    invoke-static {v4, v3}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 110
    .end local v0    # "appLoggingExtra":Ljava/lang/String;
    .end local v1    # "appLoggingFeature":Ljava/lang/String;
    :cond_0
    const-string v1, "MDVO"

    goto :goto_0

    .line 112
    .restart local v1    # "appLoggingFeature":Ljava/lang/String;
    :cond_1
    const-string v0, "Mute on"

    goto :goto_1

    .line 117
    .restart local v0    # "appLoggingExtra":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0903bf

    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public static miniCall_reject()V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "MICR"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MICL"

    const-string v2, "Decline"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static miniCall_reportNumber()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "RCNR"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const v0, 0x7f0903d4

    invoke-static {v0}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903d5

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static miniCall_resume()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090385

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static miniCall_speaker(Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 121
    const/16 v3, 0x8

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 123
    .local v2, "isSpeakerOn":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.incallui"

    const-string v5, "MDCS"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "MDVO"

    .line 126
    .local v1, "appLoggingFeature":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v1, "MOCL"

    .line 131
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    const-string v0, "Speaker off"

    .line 133
    .local v0, "appLoggingExtra":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CommonAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_4

    const v3, 0x7f0903e7

    .line 136
    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    :goto_3
    invoke-static {v4, v3}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 121
    .end local v0    # "appLoggingExtra":Ljava/lang/String;
    .end local v1    # "appLoggingFeature":Ljava/lang/String;
    .end local v2    # "isSpeakerOn":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 128
    .restart local v1    # "appLoggingFeature":Ljava/lang/String;
    .restart local v2    # "isSpeakerOn":Z
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string v1, "MDVT"

    goto :goto_1

    .line 131
    :cond_3
    const-string v0, "Speaker on"

    goto :goto_2

    .line 136
    .restart local v0    # "appLoggingExtra":Ljava/lang/String;
    :cond_4
    const v3, 0x7f0903e8

    invoke-static {v3}, Lcom/android/incallui/util/CommonAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method
