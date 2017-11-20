.class public Lcom/android/incallui/util/IMSErrorUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/IMSErrorUtils$Notification;
    }
.end annotation


# static fields
.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final LINE_IN_USE_ON_OTHER_DEVICE:I = 0x96d

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final NOTI_TYPE:Ljava/lang/String; = "noti_type"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SHOW_ENDSCREEN:Ljava/lang/String; = "show_endscreen"

.field public static final TAG:Ljava/lang/String; = "IMSErrorUtils"

.field public static final TOVOLTE:Ljava/lang/String; = "toVoLTE"

.field private static mPSBarringEventReceived:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/IMSErrorUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canDivertToVoLTE()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVolteIconPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static convertForDivertCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingPopupSkip()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/NameNumberUtils;->getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static divertToVoiceCall(Ljava/lang/String;ZI)V
    .locals 6

    const/4 v5, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "IMSErrorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divertToVoiceCall - toVoLTE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/incallui/util/IMSErrorUtils;->convertForDivertCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    const-string v1, "cs_voice_call_outgoing"

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x19f

    if-ne p2, v1, :cond_2

    const-string v1, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "twophone"

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingPopupSkip()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "extra_rad_skip_popup"

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extra_rad_dial_to_korea"

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingToKorea()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string v1, "tel"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "onephone"

    goto :goto_1
.end method

.method public static getDisconnectCauseAction_ATT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 7

    const v0, 0x7f0905ac

    const v1, 0x7f090183

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v5, ""

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    move v1, v4

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toVoLTE"

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "noti_type"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorCode"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v6

    :sswitch_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    const v0, 0x7f090186

    move v1, v3

    goto :goto_0

    :sswitch_2
    move v0, v1

    move v1, v3

    goto :goto_0

    :sswitch_3
    move v0, v1

    move v1, v3

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0905ad

    move v1, v3

    goto :goto_0

    :sswitch_5
    move v1, v3

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0905ab

    move v1, v3

    goto :goto_0

    :sswitch_7
    const v0, 0x7f090181

    move v1, v3

    goto :goto_0

    :sswitch_8
    const v0, 0x7f090694

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_9
    const v0, 0x7f09037b

    move v1, v3

    goto :goto_0

    :cond_0
    move-object v0, v5

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x453 -> :sswitch_8
        0x6a7 -> :sswitch_9
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_1
        0xbbb -> :sswitch_2
        0xbbc -> :sswitch_3
        0xbbd -> :sswitch_4
        0xbbe -> :sswitch_5
        0xbbf -> :sswitch_6
        0xbc0 -> :sswitch_7
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_CellC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 7

    const/4 v1, -0x1

    const/4 v3, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v4, ""

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    move v2, v3

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, "toVoLTE"

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "noti_type"

    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorCode"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :sswitch_0
    const/4 v2, 0x6

    const v0, 0x7f090694

    goto :goto_0

    :cond_0
    move-object v0, v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_0
        0x579 -> :sswitch_0
        0x6a7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 7

    const/4 v1, -0x1

    const/4 v3, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v4, ""

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    move v2, v3

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, "toVoLTE"

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "noti_type"

    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorCode"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v5

    :goto_2
    return-object v0

    :sswitch_0
    if-eqz v0, :cond_0

    const v0, 0x7f090143

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move-object v0, v4

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x1e7 -> :sswitch_0
        0x1e8 -> :sswitch_0
        0x7d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_KTT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 10

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v6, ""

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "videocall_settings"

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v8

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v4, v3

    move v0, v3

    move v5, v1

    :goto_1
    if-eq v0, v3, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    if-eq v4, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toVoLTE"

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "noti_type"

    invoke-virtual {v7, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v7

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_0
    if-eqz v8, :cond_3

    const v0, 0x7f0901fb

    move v4, v3

    move v5, v2

    goto :goto_1

    :cond_3
    const v0, 0x7f09021d

    move v4, v3

    move v5, v2

    goto :goto_1

    :sswitch_1
    if-eqz v8, :cond_4

    const v0, 0x7f0901ae

    move v4, v3

    move v5, v2

    goto :goto_1

    :cond_4
    const v0, 0x7f0901ff

    move v4, v3

    move v5, v2

    goto :goto_1

    :sswitch_2
    if-eqz v8, :cond_5

    const v0, 0x7f0903c7

    move v5, v4

    move v4, v3

    goto :goto_1

    :cond_5
    const v0, 0x7f0901fe

    move v5, v4

    move v4, v3

    goto :goto_1

    :sswitch_3
    if-eqz v8, :cond_6

    const v0, 0x7f0901b7

    move v4, v3

    move v5, v2

    goto :goto_1

    :cond_6
    const v0, 0x7f090200

    move v4, v3

    move v5, v2

    goto :goto_1

    :sswitch_4
    if-eqz v8, :cond_7

    const v0, 0x7f0901a6

    move v4, v3

    move v5, v2

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f0901fc

    move v4, v3

    move v5, v2

    goto/16 :goto_1

    :sswitch_5
    if-eqz v8, :cond_18

    const v0, 0x7f0903c9

    :goto_3
    const/16 v5, 0x17c

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    :sswitch_6
    const/16 v0, 0x193

    move v4, v0

    move v5, v1

    move v0, v3

    goto/16 :goto_1

    :sswitch_7
    if-eqz v8, :cond_17

    const v0, 0x7f0903ca

    :goto_4
    const/16 v5, 0x194

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    :sswitch_8
    const/16 v0, 0x198

    move v4, v0

    move v5, v1

    move v0, v3

    goto/16 :goto_1

    :sswitch_9
    if-eqz v8, :cond_9

    if-eqz v0, :cond_8

    const v0, 0x7f0901d0

    :goto_5
    move v5, v4

    move v4, v3

    goto/16 :goto_1

    :cond_8
    const v0, 0x7f0901d2

    move v4, v5

    goto :goto_5

    :cond_9
    const v0, 0x7f09020f

    goto :goto_5

    :sswitch_a
    move v4, v3

    move v0, v3

    move v5, v1

    goto/16 :goto_1

    :sswitch_b
    if-eqz v8, :cond_a

    const v0, 0x7f0901dd

    :goto_6
    const/16 v4, 0x1e4

    move v5, v2

    goto/16 :goto_1

    :cond_a
    const v0, 0x7f090213

    goto :goto_6

    :sswitch_c
    if-eqz v8, :cond_b

    const v0, 0x7f0903cb

    :goto_7
    const/16 v4, 0x1e6

    move v5, v2

    goto/16 :goto_1

    :cond_b
    const v0, 0x7f090214

    goto :goto_7

    :sswitch_d
    move v4, v3

    move v0, v3

    move v5, v1

    goto/16 :goto_1

    :sswitch_e
    if-eqz v8, :cond_16

    const v0, 0x7f0903cc

    :goto_8
    const/16 v5, 0x1f3

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    :sswitch_f
    if-eqz v8, :cond_15

    const v0, 0x7f0903cd

    move v4, v2

    :goto_9
    const/16 v5, 0x1f4

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    :sswitch_10
    if-eqz v8, :cond_14

    const v0, 0x7f0903ce

    move v4, v2

    :goto_a
    const/16 v5, 0x1f7

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    :sswitch_11
    if-eqz v8, :cond_13

    const v0, 0x7f0903cf

    move v4, v2

    :goto_b
    const/16 v5, 0x1f8

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    :sswitch_12
    if-eqz v8, :cond_c

    const v0, 0x7f0903d0

    :goto_c
    const/16 v4, 0x25b

    move v5, v2

    goto/16 :goto_1

    :cond_c
    const v0, 0x7f09021c

    goto :goto_c

    :sswitch_13
    if-eqz v8, :cond_d

    const v0, 0x7f0903d3

    :goto_d
    const/16 v5, 0x25e

    move v9, v5

    move v5, v4

    move v4, v9

    goto/16 :goto_1

    :cond_d
    const/4 v4, 0x5

    move v0, v3

    goto :goto_d

    :sswitch_14
    if-eqz v8, :cond_0

    if-eqz v0, :cond_e

    const v0, 0x7f0901b3

    move v5, v4

    move v4, v3

    goto/16 :goto_1

    :cond_e
    const v0, 0x7f0901b5

    move v4, v3

    goto/16 :goto_1

    :sswitch_15
    if-eqz v8, :cond_0

    if-eqz v0, :cond_f

    const v0, 0x7f0901b3

    move v5, v4

    move v4, v3

    goto/16 :goto_1

    :cond_f
    const v0, 0x7f0901b5

    move v4, v3

    goto/16 :goto_1

    :sswitch_16
    if-eqz v8, :cond_0

    if-eqz v0, :cond_10

    const v0, 0x7f0901b3

    move v5, v4

    move v4, v3

    goto/16 :goto_1

    :cond_10
    const v0, 0x7f0901b5

    move v4, v3

    goto/16 :goto_1

    :sswitch_17
    if-eqz v8, :cond_0

    if-eqz v0, :cond_11

    const v0, 0x7f0901b3

    move v5, v4

    move v4, v3

    goto/16 :goto_1

    :cond_11
    const v0, 0x7f0901b5

    move v4, v3

    goto/16 :goto_1

    :cond_12
    move-object v0, v6

    goto/16 :goto_2

    :cond_13
    move v0, v3

    move v4, v1

    goto :goto_b

    :cond_14
    move v0, v3

    move v4, v1

    goto :goto_a

    :cond_15
    move v0, v3

    move v4, v1

    goto/16 :goto_9

    :cond_16
    move v0, v3

    move v4, v1

    goto/16 :goto_8

    :cond_17
    move v0, v3

    move v4, v1

    goto/16 :goto_4

    :cond_18
    move v0, v3

    move v4, v1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_LGT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 12

    const v6, 0x7f0901c5

    const v5, 0x7f0901c4

    const/4 v1, 0x1

    const/4 v7, 0x4

    const/4 v3, 0x2

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/incallui/util/IMSErrorUtils;->canDivertToVoLTE()Z

    move-result v8

    const/4 v4, 0x0

    const-string v9, ""

    const/4 v2, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "videocall_settings"

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v11

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v3, v4

    move v0, v8

    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "1544-0010"

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "toVoLTE"

    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "noti_type"

    invoke-virtual {v10, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "message"

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v10, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v10

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    if-eqz v11, :cond_0

    const v2, 0x7f0901fb

    move v3, v1

    move v0, v8

    goto :goto_1

    :sswitch_1
    if-eqz v11, :cond_2

    const v2, 0x7f0901af

    move v3, v1

    move v0, v8

    goto :goto_1

    :cond_2
    const v2, 0x7f0901ff

    move v3, v1

    move v0, v8

    goto :goto_1

    :sswitch_2
    move v3, v4

    move v0, v8

    goto :goto_1

    :sswitch_3
    if-eqz v11, :cond_0

    const v2, 0x7f0901b7

    move v3, v1

    move v0, v8

    goto :goto_1

    :sswitch_4
    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v11, :cond_3

    const v2, 0x7f0901a7

    move v3, v1

    move v0, v8

    goto :goto_1

    :cond_3
    const v2, 0x7f0901fd

    move v3, v7

    move v0, v1

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_0

    const v2, 0x7f0901a5

    move v3, v1

    move v0, v8

    goto :goto_1

    :sswitch_5
    if-eqz v11, :cond_2d

    const v0, 0x7f0901ba

    move v2, v3

    :goto_3
    move v3, v2

    move v2, v0

    move v0, v8

    goto :goto_1

    :sswitch_6
    move v3, v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_7
    if-eqz v11, :cond_2c

    if-eqz v0, :cond_5

    move v2, v5

    :goto_4
    move v0, v8

    goto/16 :goto_1

    :cond_5
    move v2, v6

    move v3, v7

    goto :goto_4

    :sswitch_8
    if-eqz v11, :cond_2b

    if-eqz v0, :cond_6

    :goto_5
    move v2, v5

    move v0, v8

    goto/16 :goto_1

    :cond_6
    move v5, v6

    move v3, v7

    goto :goto_5

    :sswitch_9
    if-eqz v11, :cond_2a

    if-eqz v0, :cond_7

    :goto_6
    move v2, v5

    move v0, v8

    goto/16 :goto_1

    :cond_7
    move v5, v6

    move v3, v7

    goto :goto_6

    :sswitch_a
    if-eqz v11, :cond_29

    if-eqz v0, :cond_8

    :goto_7
    move v2, v5

    move v0, v8

    goto/16 :goto_1

    :cond_8
    move v5, v6

    move v3, v7

    goto :goto_7

    :sswitch_b
    if-eqz v11, :cond_28

    if-eqz v0, :cond_9

    const v2, 0x7f0901c8

    :goto_8
    move v0, v8

    goto/16 :goto_1

    :cond_9
    const v2, 0x7f0901c9

    move v3, v7

    goto :goto_8

    :sswitch_c
    if-eqz v11, :cond_27

    const v2, 0x7f0901ca

    :goto_9
    move v0, v8

    goto/16 :goto_1

    :sswitch_d
    if-eqz v11, :cond_26

    const v2, 0x7f0901cb

    :goto_a
    move v0, v8

    goto/16 :goto_1

    :sswitch_e
    if-eqz v11, :cond_a

    const v2, 0x7f0901cd

    move v4, v1

    :cond_a
    move v3, v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_f
    if-eqz v11, :cond_25

    if-eqz v0, :cond_b

    const v2, 0x7f0901d0

    :goto_b
    move v0, v8

    goto/16 :goto_1

    :cond_b
    const v2, 0x7f0901d2

    move v3, v7

    goto :goto_b

    :sswitch_10
    if-eqz v11, :cond_24

    if-eqz v0, :cond_c

    const v2, 0x7f0901d4

    :goto_c
    move v0, v8

    goto/16 :goto_1

    :cond_c
    const v2, 0x7f0901d5

    move v3, v7

    goto :goto_c

    :sswitch_11
    if-eqz v11, :cond_23

    if-eqz v0, :cond_d

    const v2, 0x7f0901d6

    :goto_d
    move v0, v8

    goto/16 :goto_1

    :cond_d
    const v2, 0x7f0901d7

    move v3, v7

    goto :goto_d

    :sswitch_12
    if-eqz v11, :cond_22

    if-eqz v0, :cond_e

    const v2, 0x7f0901db

    :goto_e
    move v0, v8

    goto/16 :goto_1

    :cond_e
    const v2, 0x7f0901dc

    move v3, v7

    goto :goto_e

    :sswitch_13
    if-eqz v11, :cond_f

    const v2, 0x7f0901dd

    move v4, v1

    :cond_f
    move v3, v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_14
    if-eqz v11, :cond_10

    const v2, 0x7f0901df

    move v4, v1

    :cond_10
    move v3, v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_15
    if-eqz v11, :cond_11

    const v2, 0x7f0901e1

    move v4, v1

    :cond_11
    move v3, v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_16
    if-eqz v11, :cond_21

    if-eqz v0, :cond_12

    const v2, 0x7f0901e2

    :goto_f
    move v0, v8

    goto/16 :goto_1

    :cond_12
    const v2, 0x7f0901e3

    move v3, v7

    goto :goto_f

    :sswitch_17
    if-eqz v11, :cond_20

    if-eqz v0, :cond_13

    const v2, 0x7f0901e6

    :goto_10
    move v0, v8

    goto/16 :goto_1

    :cond_13
    const v2, 0x7f0901e7

    move v3, v7

    goto :goto_10

    :sswitch_18
    if-eqz v11, :cond_1f

    if-eqz v0, :cond_14

    const v2, 0x7f0901e9

    :goto_11
    move v0, v8

    goto/16 :goto_1

    :cond_14
    const v2, 0x7f0901ea

    move v3, v7

    goto :goto_11

    :sswitch_19
    if-eqz v11, :cond_1e

    if-eqz v0, :cond_15

    const v2, 0x7f0901ed

    :goto_12
    move v0, v8

    goto/16 :goto_1

    :cond_15
    const v2, 0x7f0901ee

    move v3, v7

    goto :goto_12

    :sswitch_1a
    if-eqz v11, :cond_1d

    if-eqz v0, :cond_16

    const v2, 0x7f0901f1

    :goto_13
    move v0, v8

    goto/16 :goto_1

    :cond_16
    const v2, 0x7f0901f2

    move v3, v7

    goto :goto_13

    :sswitch_1b
    if-eqz v11, :cond_17

    const v2, 0x7f0901f5

    move v4, v1

    :cond_17
    move v3, v4

    move v0, v8

    goto/16 :goto_1

    :sswitch_1c
    if-eqz v11, :cond_1c

    if-eqz v0, :cond_18

    const v2, 0x7f0901f6

    :goto_14
    move v0, v8

    goto/16 :goto_1

    :cond_18
    const v2, 0x7f0901f7

    move v3, v7

    goto :goto_14

    :sswitch_1d
    if-eqz v11, :cond_1b

    if-eqz v0, :cond_19

    const v2, 0x7f0901f8

    :goto_15
    move v0, v8

    goto/16 :goto_1

    :cond_19
    const v2, 0x7f0901f9

    move v3, v7

    goto :goto_15

    :cond_1a
    move-object v2, v9

    goto/16 :goto_2

    :cond_1b
    move v3, v4

    goto :goto_15

    :cond_1c
    move v3, v4

    goto :goto_14

    :cond_1d
    move v3, v4

    goto :goto_13

    :cond_1e
    move v3, v4

    goto :goto_12

    :cond_1f
    move v3, v4

    goto :goto_11

    :cond_20
    move v3, v4

    goto :goto_10

    :cond_21
    move v3, v4

    goto :goto_f

    :cond_22
    move v3, v4

    goto/16 :goto_e

    :cond_23
    move v3, v4

    goto/16 :goto_d

    :cond_24
    move v3, v4

    goto/16 :goto_c

    :cond_25
    move v3, v4

    goto/16 :goto_b

    :cond_26
    move v3, v4

    goto/16 :goto_a

    :cond_27
    move v3, v4

    goto/16 :goto_9

    :cond_28
    move v3, v4

    goto/16 :goto_8

    :cond_29
    move v5, v2

    move v3, v4

    goto/16 :goto_7

    :cond_2a
    move v5, v2

    move v3, v4

    goto/16 :goto_6

    :cond_2b
    move v5, v2

    move v3, v4

    goto/16 :goto_5

    :cond_2c
    move v3, v4

    goto/16 :goto_4

    :cond_2d
    move v0, v2

    move v2, v4

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x195 -> :sswitch_c
        0x196 -> :sswitch_d
        0x198 -> :sswitch_e
        0x19f -> :sswitch_f
        0x1a0 -> :sswitch_10
        0x1a4 -> :sswitch_11
        0x1e0 -> :sswitch_12
        0x1e4 -> :sswitch_13
        0x1e6 -> :sswitch_14
        0x1e7 -> :sswitch_15
        0x1e8 -> :sswitch_16
        0x1f4 -> :sswitch_18
        0x1f7 -> :sswitch_19
        0x1f8 -> :sswitch_1a
        0x25b -> :sswitch_1b
        0x25c -> :sswitch_1c
        0x25e -> :sswitch_1d
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x836 -> :sswitch_17
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_SKT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 11

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/incallui/util/IMSErrorUtils;->canDivertToVoLTE()Z

    move-result v0

    :goto_0
    const-string v7, ""

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v9, "videocall_settings"

    invoke-static {v2, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v9

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v2, v4

    move v5, v1

    move v1, v4

    :goto_2
    if-eq v1, v4, :cond_1d

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    if-eq v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "toVoLTE"

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "noti_type"

    invoke-virtual {v8, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "message"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v8

    :cond_2
    move v2, v3

    goto :goto_1

    :sswitch_0
    if-eqz v9, :cond_3

    const v1, 0x7f0901fb

    move v2, v4

    move v5, v3

    goto :goto_2

    :cond_3
    const v1, 0x7f09021d

    move v2, v4

    move v5, v3

    goto :goto_2

    :sswitch_1
    if-eqz v9, :cond_4

    const v1, 0x7f0903c8

    move v2, v4

    move v5, v3

    goto :goto_2

    :cond_4
    const v1, 0x7f0901ff

    move v2, v4

    move v5, v3

    goto :goto_2

    :sswitch_2
    if-eqz v9, :cond_6

    if-eqz v2, :cond_5

    const v1, 0x7f0901a9

    move v2, v4

    goto :goto_2

    :cond_5
    const v1, 0x7f0901aa

    move v2, v4

    move v5, v6

    goto :goto_2

    :cond_6
    const/4 v5, 0x5

    move v2, v4

    move v1, v4

    goto :goto_2

    :sswitch_3
    if-eqz v9, :cond_7

    const v1, 0x7f0901b7

    move v2, v4

    move v5, v3

    goto :goto_2

    :cond_7
    const v1, 0x7f090200

    move v2, v4

    move v5, v3

    goto/16 :goto_2

    :sswitch_4
    if-eqz v9, :cond_8

    const v1, 0x7f0901a5

    move v2, v4

    move v5, v3

    goto/16 :goto_2

    :cond_8
    const v1, 0x7f0901fc

    move v2, v4

    move v5, v3

    goto/16 :goto_2

    :sswitch_5
    if-eqz v9, :cond_20

    if-eqz v2, :cond_9

    const v1, 0x7f0901b9

    move v2, v5

    :goto_4
    const/16 v5, 0x17c

    move v10, v5

    move v5, v2

    move v2, v10

    goto/16 :goto_2

    :cond_9
    const v1, 0x7f0901b8

    move v2, v6

    goto :goto_4

    :sswitch_6
    const/16 v2, 0x193

    move v5, v1

    move v1, v4

    goto/16 :goto_2

    :sswitch_7
    if-eqz v9, :cond_b

    if-eqz v2, :cond_a

    const v1, 0x7f0901c7

    :goto_5
    const/16 v2, 0x194

    goto/16 :goto_2

    :cond_a
    const v1, 0x7f0901c6

    move v5, v6

    goto :goto_5

    :cond_b
    const v1, 0x7f09020b

    goto :goto_5

    :sswitch_8
    if-eqz v9, :cond_c

    const v1, 0x7f0901cc

    :goto_6
    const/16 v2, 0x198

    move v5, v3

    goto/16 :goto_2

    :cond_c
    const v1, 0x7f09020c

    goto :goto_6

    :sswitch_9
    if-eqz v9, :cond_e

    if-eqz v2, :cond_d

    const v1, 0x7f0901cf

    :goto_7
    const/16 v2, 0x19f

    goto/16 :goto_2

    :cond_d
    const v1, 0x7f0901ce

    move v5, v6

    goto :goto_7

    :cond_e
    const v1, 0x7f09020d

    goto :goto_7

    :sswitch_a
    if-eqz v9, :cond_10

    if-eqz v2, :cond_f

    const v1, 0x7f0901da

    :goto_8
    const/16 v2, 0x1e0

    goto/16 :goto_2

    :cond_f
    const v1, 0x7f0901d9

    move v5, v6

    goto :goto_8

    :cond_10
    const v1, 0x7f0905bf

    goto :goto_8

    :sswitch_b
    if-eqz v9, :cond_11

    const v1, 0x7f0901dd

    :goto_9
    const/16 v2, 0x1e4

    move v5, v3

    goto/16 :goto_2

    :cond_11
    const v1, 0x7f090213

    goto :goto_9

    :sswitch_c
    if-eqz v9, :cond_12

    const v1, 0x7f0901de

    :goto_a
    const/16 v2, 0x1e6

    move v5, v3

    goto/16 :goto_2

    :cond_12
    const v1, 0x7f090214

    goto :goto_a

    :sswitch_d
    const/16 v2, 0x1e7

    move v5, v1

    move v1, v4

    goto/16 :goto_2

    :sswitch_e
    if-eqz v9, :cond_14

    if-eqz v2, :cond_13

    const v1, 0x7f0901e5

    :goto_b
    const/16 v2, 0x1f3

    goto/16 :goto_2

    :cond_13
    const v1, 0x7f0901e4

    move v5, v6

    goto :goto_b

    :cond_14
    const v1, 0x7f090215

    goto :goto_b

    :sswitch_f
    if-eqz v9, :cond_15

    const v1, 0x7f0901e8

    move v5, v3

    :goto_c
    const/16 v2, 0x1f4

    goto/16 :goto_2

    :cond_15
    const v1, 0x7f090216

    goto :goto_c

    :sswitch_10
    if-eqz v9, :cond_1f

    const v1, 0x7f0901ec

    move v2, v3

    :goto_d
    const/16 v5, 0x1f7

    move v10, v5

    move v5, v2

    move v2, v10

    goto/16 :goto_2

    :sswitch_11
    if-eqz v9, :cond_1e

    const v1, 0x7f0901f0

    move v2, v3

    :goto_e
    const/16 v5, 0x1f8

    move v10, v5

    move v5, v2

    move v2, v10

    goto/16 :goto_2

    :sswitch_12
    if-eqz v9, :cond_16

    const v1, 0x7f0901f4

    :goto_f
    const/16 v2, 0x25b

    move v5, v3

    goto/16 :goto_2

    :cond_16
    const v1, 0x7f09021c

    goto :goto_f

    :sswitch_13
    if-eqz v9, :cond_18

    if-eqz v2, :cond_17

    const v1, 0x7f0903d2

    :goto_10
    const/16 v2, 0x25e

    goto/16 :goto_2

    :cond_17
    const v1, 0x7f0903d1

    move v5, v6

    goto :goto_10

    :cond_18
    const v1, 0x7f0905c0

    goto :goto_10

    :sswitch_14
    if-eqz v9, :cond_0

    if-eqz v2, :cond_19

    const v1, 0x7f0901b4

    move v2, v4

    goto/16 :goto_2

    :cond_19
    const v1, 0x7f0901b6

    move v2, v4

    move v5, v6

    goto/16 :goto_2

    :sswitch_15
    if-eqz v9, :cond_0

    if-eqz v2, :cond_1a

    const v1, 0x7f0901b4

    move v2, v4

    goto/16 :goto_2

    :cond_1a
    const v1, 0x7f0901b6

    move v2, v4

    move v5, v6

    goto/16 :goto_2

    :sswitch_16
    if-eqz v9, :cond_0

    if-eqz v2, :cond_1b

    const v1, 0x7f0901b4

    move v2, v4

    goto/16 :goto_2

    :cond_1b
    const v1, 0x7f0901b6

    move v2, v4

    move v5, v6

    goto/16 :goto_2

    :sswitch_17
    if-eqz v9, :cond_0

    if-eqz v2, :cond_1c

    const v1, 0x7f0901b4

    move v2, v4

    goto/16 :goto_2

    :cond_1c
    const v1, 0x7f0901b6

    move v2, v4

    move v5, v6

    goto/16 :goto_2

    :cond_1d
    move-object v1, v7

    goto/16 :goto_3

    :cond_1e
    move v2, v1

    move v1, v4

    goto :goto_e

    :cond_1f
    move v2, v1

    move v1, v4

    goto/16 :goto_d

    :cond_20
    move v2, v1

    move v1, v4

    goto/16 :goto_4

    :cond_21
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_TMO(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 7

    const/4 v1, -0x1

    const/4 v3, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v4, ""

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    packed-switch p1, :pswitch_data_0

    move v0, v1

    move v2, v3

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v4, "toVoLTE"

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "noti_type"

    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorCode"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :pswitch_0
    const/4 v2, 0x3

    const v0, 0x7f0905ac

    goto :goto_0

    :cond_0
    move-object v0, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x96d
        :pswitch_0
    .end packed-switch
.end method

.method public static getDisconnectCauseAction_VZW(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 9

    const v1, 0x7f090184

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v6, ""

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    move v3, v5

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getMSISDN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f090185

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getMSISDN()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toVoLTE"

    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "noti_type"

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorCode"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v7

    :sswitch_0
    const v0, 0x7f0900c7

    move v3, v4

    goto :goto_0

    :sswitch_1
    move v0, v1

    move v3, v4

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0903a6

    move v3, v4

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v6

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x6a7 -> :sswitch_2
        0x9ca -> :sswitch_0
        0x9ce -> :sswitch_1
    .end sparse-switch
.end method

.method private static getError(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-lez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getErrorCodeString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CALL_SESSION_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CALL_INVITE_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RTP_TIME_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DATA_CONNECTION_LOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ALTERNATIVE_SERVICES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CALL_FORBIDDEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NOT_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "METHOD_NOT_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NOT_ACCEPTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "REQUEST_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UNSUPPORTED_URI_SCHEME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BAD_EXTENSION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CALL_TEMP_UNAVAILABLE_WITH_380_CAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CALL_TEMP_UNAVAILABLE_WITH_415_CAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ADDRESS_INCOMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BUSY_HERE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "REQUEST_TERMINATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NOT_ACCEPTABLE_HERE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NETWORK_UNREACHABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SERVER_INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SERVICE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SERVER_TIME_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DECLINE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DOES_NOT_EXIST_ANYWHERE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NOT_ACCEPTABLE2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CALL_NOT_ACCEPTABLE_DIVERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MAKECALL_REG_FAILURE_TIMER_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MAKECALL_REG_FAILURE_REG_403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MAKECALL_REG_FAILURE_REG_423"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LINE_IN_USE_ON_OTHER_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MAKECALL_REG_FAILURE_GENERAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x195 -> :sswitch_8
        0x196 -> :sswitch_9
        0x198 -> :sswitch_a
        0x19f -> :sswitch_b
        0x1a0 -> :sswitch_c
        0x1a4 -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1e8 -> :sswitch_14
        0x1f4 -> :sswitch_16
        0x1f7 -> :sswitch_17
        0x1f8 -> :sswitch_18
        0x25b -> :sswitch_19
        0x25c -> :sswitch_1a
        0x25e -> :sswitch_1b
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_1d
        0x7d3 -> :sswitch_1e
        0x7d4 -> :sswitch_1f
        0x7d5 -> :sswitch_21
        0x835 -> :sswitch_1c
        0x836 -> :sswitch_15
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x96d -> :sswitch_20
    .end sparse-switch
.end method

.method public static getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;
    .locals 8

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v5, ""

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "videocall_settings"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "dcm_volte_popup_message"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v0, 0x7f090143

    const/4 v4, 0x3

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    if-eq v0, v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v5, "toVoLTE"

    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "noti_type"

    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "show_endscreen"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v6

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f0901b9

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const v0, 0x7f0901b8

    const/4 v4, 0x4

    goto :goto_1

    :cond_3
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    move v4, v0

    move v0, v3

    goto :goto_1

    :cond_4
    move-object v0, v5

    goto :goto_2

    :cond_5
    move v0, v3

    move v4, v1

    goto :goto_1
.end method

.method public static getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 4

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v0, "IMSErrorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisconnectCause, reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    if-eqz v1, :cond_0

    const-string v2, "\\, "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->translateDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 1

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/IMSErrorUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/wrapper/DisconnectCauseWrapper;->disconnectCauseId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    :cond_0
    return-object p0
.end method

.method public static handleCallFailError(Landroid/os/Bundle;)V
    .locals 8

    if-eqz p0, :cond_0

    const-string v0, "noti_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "message"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toVoLTE"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "errorCode"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "IMSErrorUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCallFailError - errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/incallui/util/IMSErrorUtils;->getErrorCodeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Notification="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/incallui/util/IMSErrorUtils$Notification;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", toVoLTE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "IMSErrorUtils"

    const-string v1, "handleCallFailError - not handle this error"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/incallui/util/AudioUtils;->setAudioMode(I)V

    :cond_3
    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "IMSErrorUtils"

    const-string v1, "handleCallFailError - not handle this error"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialogDivert(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_4
    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_5
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialog_WiFi(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static handleDisconnectCause(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/IMSErrorUtils;->isPSBarringEventReceived()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/incallui/util/IMSErrorUtils;->getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/util/IMSErrorUtils;->setPSBarringEventReceived(Z)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->handleCallFailError(Landroid/os/Bundle;)V

    :cond_3
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/android/incallui/util/IMSErrorUtils;->handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    if-lez v2, :cond_2

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "feature_kor_open"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_SKT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_KTT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_LGT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_8
    const-string v3, "feature_dcm"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_9
    const-string v3, "jansky_info_for_tmo"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_TMO(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCellC()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_CellC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    const-string v3, "feature_att"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_ATT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_VZW(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public static handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "noti_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/IMSErrorUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :sswitch_0
    const-string v1, "IMSErrorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVideoEndScreen - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DisconnectCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0

    :pswitch_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x25 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2b -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPSBarringEventReceived()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/util/IMSErrorUtils;->mPSBarringEventReceived:Z

    return v0
.end method

.method public static setPSBarringEventReceived(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/util/IMSErrorUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public static showIMSErrorDialog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "IMSErrorUtils"

    const-string v1, "showIMSErrorDialog "

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showIMSErrorDialogDivert(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    const-string v0, "IMSErrorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIMSErrorDialogDivert - toVoLTE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "number"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "to_volte"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19f

    if-ne p3, v2, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showIMSErrorDialog_WiFi(Ljava/lang/String;)V
    .locals 4

    const-string v0, "IMSErrorUtils"

    const-string v1, "showIMSErrorDialog_WiFi "

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showIMSErrorToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;I)V

    return-void
.end method
