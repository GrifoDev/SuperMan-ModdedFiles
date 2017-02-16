.class public Lcom/android/incallui/util/VoiceCallAppLogging;
.super Ljava/lang/Object;
.source "VoiceCallAppLogging.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coverCall_answerVoiceCallBySlide()V
    .locals 5

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x1

    .line 114
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 115
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SIVO"

    const-string v3, "Answer voice"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x6

    :cond_1
    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09033d

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    .line 116
    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 117
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OIVO"

    const-string v3, "Answer voice"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static coverCall_declineVoiceCallBySlide()V
    .locals 5

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x1

    .line 123
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "ICRB"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 127
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SIVO"

    const-string v3, "Decline"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x6

    :cond_1
    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090366

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 128
    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 129
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 130
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OIVO"

    const-string v3, "Decline"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static coverCall_endCallBySlide()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090376

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 136
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static coverCall_makeVoiceCallBySlide()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09039e

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 140
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static coverCall_mute(Lcom/android/incallui/Call;Z)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "isMuteOn"    # Z

    .prologue
    const/16 v2, 0x8

    .line 102
    if-nez p0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 105
    .local v1, "featureName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 106
    :cond_1
    const-string v1, "CDVO"

    .line 107
    if-eqz p1, :cond_4

    const-string v0, "Mute on"

    .line 108
    .local v0, "extraName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "extraName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v2, 0x6

    :cond_3
    invoke-static {p0, v2}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_5

    const v2, 0x7f0903bf

    invoke-static {v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v3, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_4
    const-string v0, "Mute off"

    goto :goto_1

    .line 110
    :cond_5
    const v2, 0x7f0903be

    invoke-static {v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static coverCall_speaker(Lcom/android/incallui/Call;Z)V
    .locals 7
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "isSpeakerOn"    # Z

    .prologue
    const/4 v2, 0x6

    const/4 v6, 0x1

    const/16 v3, 0x8

    .line 82
    if-nez p0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 85
    .local v1, "featureName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 86
    :cond_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 87
    const-string v1, "SOVO"

    .line 94
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 95
    if-eqz p1, :cond_7

    const-string v0, "Speaker on"

    .line 96
    .local v0, "extraName":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "extraName":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    if-ne v4, v6, :cond_8

    :goto_3
    invoke-static {p0, v2}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_9

    const v2, 0x7f0903e8

    invoke-static {v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v3, v2}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 89
    const-string v1, "OOVO"

    goto :goto_1

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 92
    :cond_6
    const-string v1, "CDVO"

    goto :goto_1

    .line 95
    :cond_7
    const-string v0, "Speaker off"

    goto :goto_2

    :cond_8
    move v2, v3

    .line 98
    goto :goto_3

    :cond_9
    const v2, 0x7f0903e7

    invoke-static {v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static fullScreen_addCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 152
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "ADDC"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Add call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090336

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static fullScreen_addToContact(Lcom/android/incallui/Call;)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090356

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public static fullScreen_bluetooth(Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 199
    .local v0, "isBlueToothOn":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "VOCB"

    const-string v5, "BLTH"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "OVOB"

    if-eqz v0, :cond_1

    const-string v2, "Bluetooth off"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_2
    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    const v1, 0x7f090341

    .line 215
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_3
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void

    .end local v0    # "isBlueToothOn":Z
    :cond_0
    move v0, v1

    .line 198
    goto :goto_0

    .line 205
    .restart local v0    # "isBlueToothOn":Z
    :cond_1
    const-string v2, "Bluetooth on"

    goto :goto_1

    .line 209
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "DVOB"

    if-eqz v0, :cond_3

    const-string v2, "Bluetooth off"

    :goto_4
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "Bluetooth on"

    goto :goto_4

    .line 215
    :cond_4
    const v1, 0x7f090342

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static fullScreen_callType(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 316
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "VOCS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090348

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static fullScreen_camera(Lcom/android/incallui/Call;)V
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 163
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Twoway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090349

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static fullScreen_dialpad(Lcom/android/incallui/Call;)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 240
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v0

    .line 241
    .local v0, "isShowDialpad":Z
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "VOKP"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "OVOB"

    if-nez v0, :cond_0

    const-string v1, "Keypad show"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_3

    const v1, 0x7f09038f

    .line 257
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    :goto_2
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 247
    :cond_0
    const-string v1, "Keypad hide"

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-nez v0, :cond_2

    const-string v1, "Keypad show"

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "Keypad hide"

    goto :goto_3

    .line 257
    :cond_3
    const v1, 0x7f09038e

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static fullScreen_endCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090376

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public static fullScreen_extraVolume(Lcom/android/incallui/Call;)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 177
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    .line 178
    .local v0, "isExtraVolumeOn":Z
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "EXVL"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-eqz v0, :cond_0

    const-string v1, "Extra volume off"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    const v1, 0x7f09037b

    .line 186
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_1
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 182
    :cond_0
    const-string v1, "Extra volume on"

    goto :goto_0

    .line 186
    :cond_1
    const v1, 0x7f09037c

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static fullScreen_holdCall(Lcom/android/incallui/Call;)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 297
    .local v0, "holdState":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "DVOB"

    if-nez v0, :cond_1

    const-string v2, "Hold"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    const v1, 0x7f090386

    .line 301
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_2
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .end local v0    # "holdState":Z
    :cond_0
    move v0, v1

    .line 296
    goto :goto_0

    .line 297
    .restart local v0    # "holdState":Z
    :cond_1
    const-string v2, "Resume"

    goto :goto_1

    .line 301
    :cond_2
    const v1, 0x7f090385

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static fullScreen_mute(Lcom/android/incallui/Call;)V
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 261
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 262
    .local v0, "isMuteOn":Z
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "MUTE"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-nez v0, :cond_0

    const-string v1, "Mute on"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    const v1, 0x7f0903bf

    .line 270
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    :goto_1
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 266
    :cond_0
    const-string v1, "Mute off"

    goto :goto_0

    .line 270
    :cond_1
    const v1, 0x7f0903be

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static fullScreen_oneWay(Lcom/android/incallui/Call;)V
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 170
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Oneway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903c2

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static fullScreen_record(Lcom/android/incallui/Call;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "recorderMgr"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    .line 279
    .local v0, "isRecordOn":Z
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "RECG"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "OVOB"

    if-eqz v0, :cond_0

    const-string v1, "Record off"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    const v1, 0x7f0903d2

    .line 292
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_2
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 284
    :cond_0
    const-string v1, "Record on"

    goto :goto_0

    .line 287
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-eqz v0, :cond_2

    const-string v1, "Record off"

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "Record on"

    goto :goto_3

    .line 292
    :cond_3
    const v1, 0x7f0903d3

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static fullScreen_resumeCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 305
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "VOCR"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Resume"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090385

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public static fullScreen_sendMessage(Lcom/android/incallui/Call;)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903df

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public static fullScreen_speaker(Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 220
    .local v0, "isSpeakerOn":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "VOCB"

    const-string v5, "SPKR"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "OVOB"

    if-eqz v0, :cond_1

    const-string v2, "Speaker off"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_2
    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    const v1, 0x7f0903e7

    .line 236
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_3
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .end local v0    # "isSpeakerOn":Z
    :cond_0
    move v0, v1

    .line 219
    goto :goto_0

    .line 226
    .restart local v0    # "isSpeakerOn":Z
    :cond_1
    const-string v2, "Speaker on"

    goto :goto_1

    .line 230
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "DVOB"

    if-eqz v0, :cond_3

    const-string v2, "Speaker off"

    :goto_4
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "Speaker on"

    goto :goto_4

    .line 236
    :cond_4
    const v1, 0x7f0903e8

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static fullScreen_upgradeVT(Lcom/android/incallui/Call;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 190
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "VOCS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090400

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static fullScreen_viewContact(Lcom/android/incallui/Call;)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090357

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
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
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCoverClosed(Z)V
    .locals 2
    .param p0, "isCoverClosed"    # Z

    .prologue
    .line 144
    if-eqz p0, :cond_0

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090352

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903c3

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public static popupIncomingCall_MaximizeToFullScreen()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a5

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static popupIncomingCall_answerVoiceByTap()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "POPA"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVA"

    const-string v2, "Answer voice"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09033e

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static popupIncomingCall_coverClosed()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090352

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static popupIncomingCall_declineByTap()V
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "POPR"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVD"

    const-string v2, "Decline"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090367

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static popupIncomingCall_sendCustomMessage()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VPRN"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVD"

    const-string v2, "Decline custom"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903de

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static popupIncomingCall_sendMessage()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VPRD"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVD"

    const-string v2, "Decline message"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e0

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
