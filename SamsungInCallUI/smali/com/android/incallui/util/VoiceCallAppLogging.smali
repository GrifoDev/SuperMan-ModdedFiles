.class public Lcom/android/incallui/util/VoiceCallAppLogging;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agifScreen_AgifAvailable()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903d9

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static agifScreen_addAgif()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903dc

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static agifScreen_closePopup()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090400

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static agifScreen_findMore()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09042d

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static agifScreen_receiveAgif()V
    .locals 2

    const v1, 0x7f090491

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static agifScreen_removeAgif()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090495

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static agifScreen_selectAgif(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09049c

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static agifScreen_selectAgif(Ljava/lang/String;Lcom/android/incallui/Call;)V
    .locals 6

    const v5, 0x7f09049c

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTimeAddedMs()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0, v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    return-void

    :cond_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p0, v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public static agifScreen_selectAgifPack(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09049d

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static agifScreen_selectAgifSet(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09049e

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    const v1, 0x7f0903e7

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

    const v1, 0x7f090415

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

    const v1, 0x7f090426

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

    const v1, 0x7f090459

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static coverCall_mute(Lcom/android/incallui/Call;Z)V
    .locals 4

    const/16 v1, 0x8

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v2, "CDVO"

    if-eqz p1, :cond_3

    const-string v0, "Mute on"

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x6

    :goto_2
    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_5

    const v0, 0x7f09047c

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Mute off"

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const v0, 0x7f09047b

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static coverCall_speaker(Lcom/android/incallui/Call;Z)V
    .locals 6

    const/4 v1, 0x6

    const/4 v5, 0x1

    const/16 v2, 0x8

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v1, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v3

    if-ne v3, v5, :cond_3

    const-string v0, "SOVO"

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_2

    if-eqz p1, :cond_6

    const-string v0, "Speaker on"

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    if-ne v0, v5, :cond_7

    move v0, v1

    :goto_3
    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_8

    const v0, 0x7f0904af

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v3

    if-ne v3, v2, :cond_9

    const-string v0, "OOVO"

    move-object v3, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v2, :cond_9

    :cond_5
    const-string v0, "CDVO"

    move-object v3, v0

    goto :goto_1

    :cond_6
    const-string v0, "Speaker off"

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    const v0, 0x7f0904ae

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v3, v0

    goto :goto_1
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

    const v1, 0x7f0903de

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

    const v1, 0x7f090405

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_bluetooth(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

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

    move-result-object v1

    if-eqz v0, :cond_4

    const v0, 0x7f0903eb

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

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
    const v0, 0x7f0903ec

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    const v1, 0x7f0903f3

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

    const v1, 0x7f0903f4

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_dialpad(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "VOKP"

    invoke-static {v0, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "OVOB"

    if-nez v1, :cond_0

    const-string v0, "Keypad show"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_3

    const v0, 0x7f09044a

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Keypad hide"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-nez v1, :cond_2

    const-string v0, "Keypad show"

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Keypad hide"

    goto :goto_3

    :cond_3
    const v0, 0x7f090449

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static fullScreen_emergencyCall()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090425

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_endCall(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090426

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_extraVolume(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "EXVL"

    invoke-static {v0, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-eqz v1, :cond_0

    const-string v0, "Extra volume off"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    const v0, 0x7f09042b

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Extra volume on"

    goto :goto_0

    :cond_1
    const v0, 0x7f09042c

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static fullScreen_holdCall(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

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

    move-result-object v1

    if-nez v0, :cond_2

    const v0, 0x7f090438

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "Resume"

    goto :goto_1

    :cond_2
    const v0, 0x7f090437

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static fullScreen_ivrButtonPage()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090445

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_ivrListPage()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090446

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_ivrSelectFinal()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090448

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_ivrSelectMenu(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090447

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_mute(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "MUTE"

    invoke-static {v0, v2, v3, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-nez v1, :cond_0

    const-string v0, "Mute on"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    const v0, 0x7f09047c

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Mute off"

    goto :goto_0

    :cond_1
    const v0, 0x7f09047b

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    const v1, 0x7f09047f

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_record(Lcom/android/incallui/Call;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.android.incallui"

    const-string v3, "RECG"

    invoke-static {v0, v2, v3}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "OVOB"

    if-eqz v1, :cond_0

    const-string v0, "Record off"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    const v0, 0x7f090492

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Record on"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DVOB"

    if-eqz v1, :cond_2

    const-string v0, "Record off"

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Record on"

    goto :goto_3

    :cond_3
    const v0, 0x7f090493

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    const v1, 0x7f090437

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

    const v1, 0x7f0904a4

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fullScreen_speaker(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

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

    move-result-object v1

    if-eqz v0, :cond_4

    const v0, 0x7f0904ae

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

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
    const v0, 0x7f0904af

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    const v1, 0x7f0904c7

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

    const v1, 0x7f090406

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

    const v1, 0x7f0903ff

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

    const v1, 0x7f090480

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public static ivrDialog_agree()V
    .locals 2

    const v0, 0x7f090439

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090441

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ivrDialog_autoUpdate(J)V
    .locals 4

    const v0, 0x7f090439

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090444

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visual_call_update_type"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/incallui/util/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static ivrDialog_disagree()V
    .locals 2

    const v0, 0x7f090439

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090442

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ivrDialog_show(J)V
    .locals 4

    const v0, 0x7f090439

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090443

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_user_agreement"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/incallui/util/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static popupCall_EndCall(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090426

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupCall_MakeVideoCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090459

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static popupCall_MakeVoiceCall()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09045a

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static popupCall_Mute(Lcom/android/incallui/Call;Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f09047c

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static popupCall_SendMessage()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904a4

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static popupCall_Speaker(Lcom/android/incallui/Call;Z)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0904af

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static popupDuringCall_HideCallPopupBySwipeLeft()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090435

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static popupDuringCall_Resume(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/SALogging;->getScreenId(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090437

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_AddReminder(Z)V
    .locals 4

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0900ae

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static popupIncomingCall_CloseSendMessageByTab()V
    .locals 2

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090401

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_MaximizeToFullScreen()V
    .locals 2

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090460

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_MaximizeToFullScreenButton()V
    .locals 2

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090461

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_SendMessageByTab()V
    .locals 2

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904a6

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

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e8

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

    const v1, 0x7f0903ff

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

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090416

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

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904a3

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupIncomingCall_sendMessage(Ljava/lang/String;)V
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

    const v0, 0x7f09048d

    invoke-static {v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0904a7

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
