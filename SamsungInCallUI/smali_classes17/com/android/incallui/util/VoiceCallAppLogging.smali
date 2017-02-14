.class public Lcom/android/incallui/util/VoiceCallAppLogging;
.super Ljava/lang/Object;
.source "VoiceCallAppLogging.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coverCall_answerVoiceCallBySlide()V
    .locals 5

    const/16 v0, 0x8

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SIVO"

    const-string v3, "Answer voice"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "OIVO"

    const-string v3, "Answer voice"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static coverCall_declineVoiceCallBySlide()V
    .locals 5

    const/16 v0, 0x8

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "ICRB"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SIVO"

    const-string v3, "Decline"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

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

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static coverCall_makeVoiceCallBySlide()V
    .locals 2

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

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static coverCall_mute(Lcom/android/incallui/Call;Z)V
    .locals 5

    const/16 v2, 0x8

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v2, :cond_2

    :cond_1
    const-string v1, "CDVO"

    if-eqz p1, :cond_4

    const-string v0, "Mute on"

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_4
    const-string v0, "Mute off"

    goto :goto_1

    :cond_5
    const v2, 0x7f0903be

    invoke-static {v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static coverCall_speaker(Lcom/android/incallui/Call;Z)V
    .locals 7

    const/4 v2, 0x6

    const/4 v6, 0x1

    const/16 v3, 0x8

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v2, :cond_5

    :cond_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    if-ne v4, v6, :cond_4

    const-string v1, "SOVO"

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eqz p1, :cond_7

    const-string v0, "Speaker on"

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v1, "OOVO"

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v3, :cond_2

    :cond_6
    const-string v1, "CDVO"

    goto :goto_1

    :cond_7
    const-string v0, "Speaker off"

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    const v2, 0x7f0903e7

    invoke-static {v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static fullScreen_addCall(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "ADDC"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Add call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090336

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_addToContact(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090356

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_bluetooth(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "VOCB"

    const-string v5, "BLTH"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "OVOB"

    if-eqz v0, :cond_1

    const-string v2, "Bluetooth off"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    const v1, 0x7f090341

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "Bluetooth on"

    goto :goto_1

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

    :cond_4
    const v1, 0x7f090342

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static fullScreen_callType(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "VOCS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090348

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_camera(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Twoway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090349

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_dialpad(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "VOKP"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "OVOB"

    if-nez v0, :cond_0

    const-string v1, "Keypad show"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_3

    const v1, 0x7f09038f

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Keypad hide"

    goto :goto_0

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

    :cond_3
    const v1, 0x7f09038e

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static fullScreen_endCall(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090376

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_extraVolume(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "EXVL"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-eqz v0, :cond_0

    const-string v1, "Extra volume off"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    const v1, 0x7f09037b

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Extra volume on"

    goto :goto_0

    :cond_1
    const v1, 0x7f09037c

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static fullScreen_holdCall(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "DVOB"

    if-nez v0, :cond_1

    const-string v2, "Hold"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    const v1, 0x7f090386

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "Resume"

    goto :goto_1

    :cond_2
    const v1, 0x7f090385

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static fullScreen_mute(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "MUTE"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-nez v0, :cond_0

    const-string v1, "Mute on"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    const v1, 0x7f0903bf

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Mute off"

    goto :goto_0

    :cond_1
    const v1, 0x7f0903be

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static fullScreen_oneWay(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Oneway video call"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903c2

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_record(Lcom/android/incallui/Call;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "RECG"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "OVOB"

    if-eqz v0, :cond_0

    const-string v1, "Record off"

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    const v1, 0x7f0903d2

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Record on"

    goto :goto_0

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

    :cond_3
    const v1, 0x7f0903d3

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static fullScreen_resumeCall(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "VOCR"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DVOB"

    const-string v2, "Resume"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090385

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_sendMessage(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903df

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_speaker(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.incallui"

    const-string v4, "VOCB"

    const-string v5, "SPKR"

    invoke-static {v2, v3, v4, v5}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "OVOB"

    if-eqz v0, :cond_1

    const-string v2, "Speaker off"

    :goto_1
    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {p0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    const v1, 0x7f0903e7

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v2, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "Speaker on"

    goto :goto_1

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

    :cond_4
    const v1, 0x7f0903e8

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static fullScreen_upgradeVT(Lcom/android/incallui/Call;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VOCB"

    const-string v3, "VOCS"

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090400

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_viewContact(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090357

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCoverClosed(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090352

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

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

    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903a5

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_answerVoiceByTap()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "POPA"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVA"

    const-string v2, "Answer voice"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09033e

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_coverClosed()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090352

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_declineByTap()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "POPR"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVD"

    const-string v2, "Decline"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090367

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_sendCustomMessage()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VPRN"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVD"

    const-string v2, "Decline custom"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903de

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_sendMessage()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.incallui"

    const-string v2, "VPRD"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PIVD"

    const-string v2, "Decline message"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0903d0

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e0

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
