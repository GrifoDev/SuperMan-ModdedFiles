.class public Lcom/android/incallui/util/IMSErrorUtils;
.super Ljava/lang/Object;
.source "IMSErrorUtils.java"


# static fields
.field public static final BT_COMMAND_STARTUP_ERROR:Ljava/lang/String; = "SERR"

.field public static final DIALOG:I = 0x3

.field public static final DIALOG_DIVERT:I = 0x4

.field public static final DIALOG_WIFI:I = 0x6

.field public static final LINE_IN_USE_ON_OTHER_DEVICE:I = 0x96d

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final NONE:I = 0x0

.field public static final NOTI_TYPE:Ljava/lang/String; = "noti_type"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SHOW_ENDSCREEN:Ljava/lang/String; = "show_endscreen"

.field public static final SILENT_DIVERT:I = 0x5

.field public static final TAG:Ljava/lang/String; = "SECVT-IMSErrorUtils"

.field public static final TOAST:I = 0x1

.field public static final TOAST_DIVERT:I = 0x2

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
    .locals 2

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "roaming_auto_dial"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingPopupSkip()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static divertToVoiceCall(Ljava/lang/String;ZI)V
    .locals 7

    const/4 v6, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "SECVT-IMSErrorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "divertToVoiceCall: toVoLTE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/incallui/util/IMSErrorUtils;->convertForDivertCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    const-string v3, "cs_voice_call_outgoing"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x19f

    if-ne p2, v3, :cond_2

    const-string v3, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "twophone"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingPopupSkip()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "extra_rad_skip_popup"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "extra_rad_dial_to_korea"

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isRADDialingToKorea()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "onephone"

    goto :goto_1
.end method

.method public static getDisconnectCauseAction_ATT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 12

    const-string v10, "getDisconnectCauseAction_ATT"

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    const/4 v5, -0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_1
    return-object v6

    :sswitch_0
    const/4 v3, 0x1

    const v5, 0x7f0904f2

    goto/16 :goto_0

    :sswitch_1
    const/4 v3, 0x1

    const v5, 0x7f09012c

    goto/16 :goto_0

    :sswitch_2
    const/4 v3, 0x1

    const v5, 0x7f090129

    goto/16 :goto_0

    :sswitch_3
    const/4 v3, 0x1

    const v5, 0x7f090129

    goto/16 :goto_0

    :sswitch_4
    const/4 v3, 0x1

    const v5, 0x7f0904f3

    goto/16 :goto_0

    :sswitch_5
    const/4 v3, 0x1

    const v5, 0x7f0904f2

    goto/16 :goto_0

    :sswitch_6
    const/4 v3, 0x1

    const v5, 0x7f0904f1

    goto/16 :goto_0

    :sswitch_7
    const/4 v3, 0x1

    const v5, 0x7f090127

    goto/16 :goto_0

    :sswitch_8
    const v5, 0x7f0905c5

    const/4 v3, 0x6

    goto/16 :goto_0

    :sswitch_9
    const/4 v3, 0x1

    const v5, 0x7f0905b0

    goto/16 :goto_0

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
    .locals 11

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    const/4 v4, -0x1

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v9, "toVoLTE"

    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "noti_type"

    invoke-virtual {v5, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "message"

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "number"

    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "show_endscreen"

    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "errorCode"

    invoke-virtual {v5, v9, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TOVOLTE        : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NOTI_TYPE      : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT 6:DIALOG_WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MESSAGE        : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NUMBER         : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "errorCode      : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   SIP_ERROR : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SHOW_ENDSCREEN : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_1
    return-object v5

    :sswitch_0
    const/4 v2, 0x6

    const v4, 0x7f0905c5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_0
        0x579 -> :sswitch_0
        0x6a7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 12

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    const/4 v5, -0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v6

    :sswitch_0
    if-eqz v1, :cond_2

    const v5, 0x7f0900f4

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

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

.method public static getDisconnectCauseAction_KTT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 16

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    const-string v5, ""

    const/4 v8, -0x1

    const/4 v11, -0x1

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    const/4 v13, -0x1

    if-eq v8, v13, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    const/4 v13, -0x1

    if-eq v3, v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    const-string v13, "toVoLTE"

    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v9, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v9, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v9, v13, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v9, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SIP_ERROR EVENT ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v9

    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_0
    if-eqz v4, :cond_5

    const v8, 0x7f0901a0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_5
    const v8, 0x7f0901c2

    const/4 v6, 0x1

    goto/16 :goto_1

    :sswitch_1
    if-eqz v4, :cond_6

    const v8, 0x7f090153

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_6
    const v8, 0x7f0901a4

    const/4 v6, 0x1

    goto/16 :goto_1

    :sswitch_2
    if-eqz v4, :cond_7

    const v8, 0x7f090336

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_7
    const v8, 0x7f0901a3

    const/4 v6, 0x2

    goto/16 :goto_1

    :sswitch_3
    if-eqz v4, :cond_8

    const v8, 0x7f09015c

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_8
    const v8, 0x7f0901a5

    const/4 v6, 0x1

    goto/16 :goto_1

    :sswitch_4
    if-eqz v4, :cond_9

    const v8, 0x7f09014b

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_9
    const v8, 0x7f0901a1

    const/4 v6, 0x1

    goto/16 :goto_1

    :sswitch_5
    if-eqz v4, :cond_a

    const v8, 0x7f090338

    const/4 v6, 0x2

    :cond_a
    const/16 v11, 0x17c

    move v3, v11

    goto/16 :goto_1

    :sswitch_6
    const/16 v11, 0x193

    move v3, v11

    goto/16 :goto_1

    :sswitch_7
    if-eqz v4, :cond_b

    const v8, 0x7f090339

    const/4 v6, 0x2

    :cond_b
    const/16 v11, 0x194

    move v3, v11

    goto/16 :goto_1

    :sswitch_8
    const/16 v11, 0x198

    move v3, v11

    goto/16 :goto_1

    :sswitch_9
    if-eqz v4, :cond_d

    if-eqz v1, :cond_c

    const v8, 0x7f090175

    const/4 v6, 0x2

    :goto_2
    const/16 v11, 0x19f

    goto/16 :goto_1

    :cond_c
    const v8, 0x7f090177

    const/4 v6, 0x4

    goto :goto_2

    :cond_d
    const v8, 0x7f0901b4

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_a
    const/16 v11, 0x1e0

    goto/16 :goto_1

    :sswitch_b
    if-eqz v4, :cond_e

    const v8, 0x7f090182

    const/4 v6, 0x1

    :goto_3
    const/16 v11, 0x1e4

    move v3, v11

    goto/16 :goto_1

    :cond_e
    const v8, 0x7f0901b8

    const/4 v6, 0x1

    goto :goto_3

    :sswitch_c
    if-eqz v4, :cond_f

    const v8, 0x7f09033a

    const/4 v6, 0x1

    :goto_4
    const/16 v11, 0x1e6

    move v3, v11

    goto/16 :goto_1

    :cond_f
    const v8, 0x7f0901b9

    const/4 v6, 0x1

    goto :goto_4

    :sswitch_d
    const/16 v11, 0x1e7

    goto/16 :goto_1

    :sswitch_e
    if-eqz v4, :cond_10

    const v8, 0x7f09033b

    const/4 v6, 0x2

    :cond_10
    const/16 v11, 0x1f3

    move v3, v11

    goto/16 :goto_1

    :sswitch_f
    if-eqz v4, :cond_11

    const v8, 0x7f09033c

    const/4 v6, 0x1

    :cond_11
    const/16 v11, 0x1f4

    move v3, v11

    goto/16 :goto_1

    :sswitch_10
    if-eqz v4, :cond_12

    const v8, 0x7f09033d

    const/4 v6, 0x1

    :cond_12
    const/16 v11, 0x1f7

    move v3, v11

    goto/16 :goto_1

    :sswitch_11
    if-eqz v4, :cond_13

    const v8, 0x7f09033e

    const/4 v6, 0x1

    :cond_13
    const/16 v11, 0x1f8

    move v3, v11

    goto/16 :goto_1

    :sswitch_12
    if-eqz v4, :cond_14

    const v8, 0x7f09033f

    const/4 v6, 0x1

    :goto_5
    const/16 v11, 0x25b

    move v3, v11

    goto/16 :goto_1

    :cond_14
    const v8, 0x7f0901c1

    const/4 v6, 0x1

    goto :goto_5

    :sswitch_13
    if-eqz v4, :cond_15

    const v8, 0x7f090342

    const/4 v6, 0x2

    :goto_6
    const/16 v11, 0x25e

    move v3, v11

    goto/16 :goto_1

    :cond_15
    const/4 v6, 0x5

    goto :goto_6

    :sswitch_14
    if-eqz v4, :cond_0

    if-eqz v1, :cond_16

    const v8, 0x7f090158

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_16
    const v8, 0x7f09015a

    const/4 v6, 0x4

    goto/16 :goto_1

    :sswitch_15
    if-eqz v4, :cond_0

    if-eqz v1, :cond_17

    const v8, 0x7f090158

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_17
    const v8, 0x7f09015a

    const/4 v6, 0x4

    goto/16 :goto_1

    :sswitch_16
    if-eqz v4, :cond_0

    if-eqz v1, :cond_18

    const v8, 0x7f090158

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_18
    const v8, 0x7f09015a

    const/4 v6, 0x4

    goto/16 :goto_1

    :sswitch_17
    if-eqz v4, :cond_0

    if-eqz v1, :cond_19

    const v8, 0x7f090158

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_19
    const v8, 0x7f09015a

    const/4 v6, 0x4

    goto/16 :goto_1

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

.method public static getDisconnectCauseAction_LGT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 14

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/incallui/util/IMSErrorUtils;->canDivertToVoLTE()Z

    move-result v10

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v6, -0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_settings"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    :sswitch_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "1544-0010"

    aput-object v13, v11, v12

    invoke-virtual {v1, v6, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIP_ERROR EVENT ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   SIP_ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_2
    return-object v7

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1
    if-eqz v2, :cond_0

    const v6, 0x7f0901a0

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_2
    if-eqz v2, :cond_4

    const v6, 0x7f090154

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_4
    const v6, 0x7f0901a4

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_3
    if-eqz v2, :cond_0

    const v6, 0x7f09015c

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v11, "single_lte"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v2, :cond_5

    const v6, 0x7f09014c

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    const v6, 0x7f0901a2

    const/4 v4, 0x4

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v2, :cond_0

    const v6, 0x7f09014a

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_5
    if-eqz v2, :cond_7

    const v6, 0x7f09015f

    const/4 v4, 0x2

    :cond_7
    const/16 v9, 0x17c

    goto/16 :goto_1

    :sswitch_6
    const/16 v9, 0x193

    goto/16 :goto_1

    :sswitch_7
    if-eqz v2, :cond_8

    if-eqz v0, :cond_9

    const v6, 0x7f090169

    const/4 v4, 0x2

    :cond_8
    :goto_2
    const/16 v9, 0x193

    goto/16 :goto_1

    :cond_9
    const v6, 0x7f09016a

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_8
    if-eqz v2, :cond_a

    if-eqz v0, :cond_b

    const v6, 0x7f090169

    const/4 v4, 0x2

    :cond_a
    :goto_3
    const/16 v9, 0x193

    goto/16 :goto_1

    :cond_b
    const v6, 0x7f09016a

    const/4 v4, 0x4

    goto :goto_3

    :sswitch_9
    if-eqz v2, :cond_c

    if-eqz v0, :cond_d

    const v6, 0x7f090169

    const/4 v4, 0x2

    :cond_c
    :goto_4
    const/16 v9, 0x193

    goto/16 :goto_1

    :cond_d
    const v6, 0x7f09016a

    const/4 v4, 0x4

    goto :goto_4

    :sswitch_a
    if-eqz v2, :cond_e

    if-eqz v0, :cond_f

    const v6, 0x7f090169

    const/4 v4, 0x2

    :cond_e
    :goto_5
    const/16 v9, 0x193

    goto/16 :goto_1

    :cond_f
    const v6, 0x7f09016a

    const/4 v4, 0x4

    goto :goto_5

    :sswitch_b
    if-eqz v2, :cond_10

    if-eqz v0, :cond_11

    const v6, 0x7f09016d

    const/4 v4, 0x2

    :cond_10
    :goto_6
    const/16 v9, 0x194

    goto/16 :goto_1

    :cond_11
    const v6, 0x7f09016e

    const/4 v4, 0x4

    goto :goto_6

    :sswitch_c
    if-eqz v2, :cond_12

    const v6, 0x7f09016f

    const/4 v4, 0x2

    :cond_12
    const/16 v9, 0x195

    goto/16 :goto_1

    :sswitch_d
    if-eqz v2, :cond_13

    const v6, 0x7f090170

    const/4 v4, 0x2

    :cond_13
    const/16 v9, 0x196

    goto/16 :goto_1

    :sswitch_e
    if-eqz v2, :cond_14

    const v6, 0x7f090172

    const/4 v4, 0x1

    :cond_14
    const/16 v9, 0x198

    goto/16 :goto_1

    :sswitch_f
    if-eqz v2, :cond_15

    if-eqz v0, :cond_16

    const v6, 0x7f090175

    const/4 v4, 0x2

    :cond_15
    :goto_7
    const/16 v9, 0x19f

    goto/16 :goto_1

    :cond_16
    const v6, 0x7f090177

    const/4 v4, 0x4

    goto :goto_7

    :sswitch_10
    if-eqz v2, :cond_17

    if-eqz v0, :cond_18

    const v6, 0x7f090179

    const/4 v4, 0x2

    :cond_17
    :goto_8
    const/16 v9, 0x1a0

    goto/16 :goto_1

    :cond_18
    const v6, 0x7f09017a

    const/4 v4, 0x4

    goto :goto_8

    :sswitch_11
    if-eqz v2, :cond_19

    if-eqz v0, :cond_1a

    const v6, 0x7f09017b

    const/4 v4, 0x2

    :cond_19
    :goto_9
    const/16 v9, 0x1a4

    goto/16 :goto_1

    :cond_1a
    const v6, 0x7f09017c

    const/4 v4, 0x4

    goto :goto_9

    :sswitch_12
    if-eqz v2, :cond_1b

    if-eqz v0, :cond_1c

    const v6, 0x7f090180

    const/4 v4, 0x2

    :cond_1b
    :goto_a
    const/16 v9, 0x1e0

    goto/16 :goto_1

    :cond_1c
    const v6, 0x7f090181

    const/4 v4, 0x4

    goto :goto_a

    :sswitch_13
    if-eqz v2, :cond_1d

    const v6, 0x7f090182

    const/4 v4, 0x1

    :cond_1d
    const/16 v9, 0x1e4

    goto/16 :goto_1

    :sswitch_14
    if-eqz v2, :cond_1e

    const v6, 0x7f090184

    const/4 v4, 0x1

    :cond_1e
    const/16 v9, 0x1e6

    goto/16 :goto_1

    :sswitch_15
    if-eqz v2, :cond_1f

    const v6, 0x7f090186

    const/4 v4, 0x1

    :cond_1f
    const/16 v9, 0x1e7

    goto/16 :goto_1

    :sswitch_16
    if-eqz v2, :cond_20

    if-eqz v0, :cond_21

    const v6, 0x7f090187

    const/4 v4, 0x2

    :cond_20
    :goto_b
    const/16 v9, 0x1e8

    goto/16 :goto_1

    :cond_21
    const v6, 0x7f090188

    const/4 v4, 0x4

    goto :goto_b

    :sswitch_17
    if-eqz v2, :cond_22

    if-eqz v0, :cond_23

    const v6, 0x7f09018b

    const/4 v4, 0x2

    :cond_22
    :goto_c
    const/16 v9, 0x1f3

    goto/16 :goto_1

    :cond_23
    const v6, 0x7f09018c

    const/4 v4, 0x4

    goto :goto_c

    :sswitch_18
    if-eqz v2, :cond_24

    if-eqz v0, :cond_25

    const v6, 0x7f09018e

    const/4 v4, 0x2

    :cond_24
    :goto_d
    const/16 v9, 0x1f4

    goto/16 :goto_1

    :cond_25
    const v6, 0x7f09018f

    const/4 v4, 0x4

    goto :goto_d

    :sswitch_19
    if-eqz v2, :cond_26

    if-eqz v0, :cond_27

    const v6, 0x7f090192

    const/4 v4, 0x2

    :cond_26
    :goto_e
    const/16 v9, 0x1f7

    goto/16 :goto_1

    :cond_27
    const v6, 0x7f090193

    const/4 v4, 0x4

    goto :goto_e

    :sswitch_1a
    if-eqz v2, :cond_28

    if-eqz v0, :cond_29

    const v6, 0x7f090196

    const/4 v4, 0x2

    :cond_28
    :goto_f
    const/16 v9, 0x1f8

    goto/16 :goto_1

    :cond_29
    const v6, 0x7f090197

    const/4 v4, 0x4

    goto :goto_f

    :sswitch_1b
    if-eqz v2, :cond_2a

    const v6, 0x7f09019a

    const/4 v4, 0x1

    :cond_2a
    const/16 v9, 0x25b

    goto/16 :goto_1

    :sswitch_1c
    if-eqz v2, :cond_2b

    if-eqz v0, :cond_2c

    const v6, 0x7f09019b

    const/4 v4, 0x2

    :cond_2b
    :goto_10
    const/16 v9, 0x25c

    goto/16 :goto_1

    :cond_2c
    const v6, 0x7f09019c

    const/4 v4, 0x4

    goto :goto_10

    :sswitch_1d
    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2e

    const v6, 0x7f09019d

    const/4 v4, 0x2

    :cond_2d
    :goto_11
    const/16 v9, 0x25e

    goto/16 :goto_1

    :cond_2e
    const v6, 0x7f09019e

    const/4 v4, 0x4

    goto :goto_11

    nop

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
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
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

.method public static getDisconnectCauseAction_SKT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 14

    const/4 v0, 0x0

    const/4 v13, -0x1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v6, -0x1

    const/4 v9, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_settings"

    invoke-static {v11, v12, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_4

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    if-eq v6, v13, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    if-eq v9, v13, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIP_ERROR EVENT ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   SIP_ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v7

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_0
    if-eqz v2, :cond_5

    const v6, 0x7f0901a0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    const v6, 0x7f0901c2

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_1
    if-eqz v2, :cond_6

    const v6, 0x7f090337

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_6
    const v6, 0x7f0901a4

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_2
    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    const v6, 0x7f09014e

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_7
    const v6, 0x7f09014f

    const/4 v4, 0x4

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_3
    if-eqz v2, :cond_9

    const v6, 0x7f09015c

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_9
    const v6, 0x7f0901a5

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_4
    if-eqz v2, :cond_a

    const v6, 0x7f09014a

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    const v6, 0x7f0901a1

    const/4 v4, 0x1

    goto/16 :goto_1

    :sswitch_5
    if-eqz v2, :cond_b

    if-eqz v0, :cond_c

    const v6, 0x7f09015e

    const/4 v4, 0x2

    :cond_b
    :goto_2
    const/16 v9, 0x17c

    goto/16 :goto_1

    :cond_c
    const v6, 0x7f09015d

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_6
    const/16 v9, 0x193

    goto/16 :goto_1

    :sswitch_7
    if-eqz v2, :cond_e

    if-eqz v0, :cond_d

    const v6, 0x7f09016c

    const/4 v4, 0x2

    :goto_3
    const/16 v9, 0x194

    goto/16 :goto_1

    :cond_d
    const v6, 0x7f09016b

    const/4 v4, 0x4

    goto :goto_3

    :cond_e
    const v6, 0x7f0901b0

    const/4 v4, 0x2

    goto :goto_3

    :sswitch_8
    if-eqz v2, :cond_f

    const v6, 0x7f090171

    const/4 v4, 0x1

    :goto_4
    const/16 v9, 0x198

    goto/16 :goto_1

    :cond_f
    const v6, 0x7f0901b1

    const/4 v4, 0x1

    goto :goto_4

    :sswitch_9
    if-eqz v2, :cond_11

    if-eqz v0, :cond_10

    const v6, 0x7f090174

    const/4 v4, 0x2

    :goto_5
    const/16 v9, 0x19f

    goto/16 :goto_1

    :cond_10
    const v6, 0x7f090173

    const/4 v4, 0x4

    goto :goto_5

    :cond_11
    const v6, 0x7f0901b2

    const/4 v4, 0x2

    goto :goto_5

    :sswitch_a
    if-eqz v2, :cond_13

    if-eqz v0, :cond_12

    const v6, 0x7f09017f

    const/4 v4, 0x2

    :goto_6
    const/16 v9, 0x1e0

    goto/16 :goto_1

    :cond_12
    const v6, 0x7f09017e

    const/4 v4, 0x4

    goto :goto_6

    :cond_13
    const v6, 0x7f090504

    const/4 v4, 0x2

    goto :goto_6

    :sswitch_b
    if-eqz v2, :cond_14

    const v6, 0x7f090182

    const/4 v4, 0x1

    :goto_7
    const/16 v9, 0x1e4

    goto/16 :goto_1

    :cond_14
    const v6, 0x7f0901b8

    const/4 v4, 0x1

    goto :goto_7

    :sswitch_c
    if-eqz v2, :cond_15

    const v6, 0x7f090183

    const/4 v4, 0x1

    :goto_8
    const/16 v9, 0x1e6

    goto/16 :goto_1

    :cond_15
    const v6, 0x7f0901b9

    const/4 v4, 0x1

    goto :goto_8

    :sswitch_d
    const/16 v9, 0x1e7

    goto/16 :goto_1

    :sswitch_e
    if-eqz v2, :cond_17

    if-eqz v0, :cond_16

    const v6, 0x7f09018a

    const/4 v4, 0x2

    :goto_9
    const/16 v9, 0x1f3

    goto/16 :goto_1

    :cond_16
    const v6, 0x7f090189

    const/4 v4, 0x4

    goto :goto_9

    :cond_17
    const v6, 0x7f0901ba

    const/4 v4, 0x2

    goto :goto_9

    :sswitch_f
    if-eqz v2, :cond_18

    const v6, 0x7f09018d

    const/4 v4, 0x1

    :goto_a
    const/16 v9, 0x1f4

    goto/16 :goto_1

    :cond_18
    const v6, 0x7f0901bb

    const/4 v4, 0x2

    goto :goto_a

    :sswitch_10
    if-eqz v2, :cond_19

    const v6, 0x7f090191

    const/4 v4, 0x1

    :cond_19
    const/16 v9, 0x1f7

    goto/16 :goto_1

    :sswitch_11
    if-eqz v2, :cond_1a

    const v6, 0x7f090195

    const/4 v4, 0x1

    :cond_1a
    const/16 v9, 0x1f8

    goto/16 :goto_1

    :sswitch_12
    if-eqz v2, :cond_1b

    const v6, 0x7f090199

    const/4 v4, 0x1

    :goto_b
    const/16 v9, 0x25b

    goto/16 :goto_1

    :cond_1b
    const v6, 0x7f0901c1

    const/4 v4, 0x1

    goto :goto_b

    :sswitch_13
    if-eqz v2, :cond_1d

    if-eqz v0, :cond_1c

    const v6, 0x7f090341

    const/4 v4, 0x2

    :goto_c
    const/16 v9, 0x25e

    goto/16 :goto_1

    :cond_1c
    const v6, 0x7f090340

    const/4 v4, 0x4

    goto :goto_c

    :cond_1d
    const v6, 0x7f090505

    const/4 v4, 0x2

    goto :goto_c

    :sswitch_14
    if-eqz v2, :cond_0

    if-eqz v0, :cond_1e

    const v6, 0x7f090159

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_1e
    const v6, 0x7f09015b

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_15
    if-eqz v2, :cond_0

    if-eqz v0, :cond_1f

    const v6, 0x7f090159

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_1f
    const v6, 0x7f09015b

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_16
    if-eqz v2, :cond_0

    if-eqz v0, :cond_20

    const v6, 0x7f090159

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_20
    const v6, 0x7f09015b

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_17
    if-eqz v2, :cond_0

    if-eqz v0, :cond_21

    const v6, 0x7f090159

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_21
    const v6, 0x7f09015b

    const/4 v4, 0x4

    goto/16 :goto_1

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
    .locals 12

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    const/4 v5, -0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_1
    return-object v6

    :pswitch_0
    const/4 v3, 0x3

    const v5, 0x7f0904f2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x96d
        :pswitch_0
    .end packed-switch
.end method

.method public static getDisconnectCauseAction_VZW(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 14

    const-string v10, "getDisconnectCauseAction_VZW"

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    const/4 v5, -0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v10, 0x7f09012a

    if-ne v5, v10, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getMSISDN()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const v10, 0x7f09012b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getInstance()Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getMSISDN()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v10, "toVoLTE"

    invoke-virtual {v6, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "noti_type"

    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "message"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "number"

    invoke-virtual {v6, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "show_endscreen"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "errorCode"

    invoke-virtual {v6, v10, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "eng"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall    : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TOVOLTE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOTI_TYPE      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE        : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NUMBER         : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode      : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   SIP_ERROR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SHOW_ENDSCREEN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_1
    return-object v6

    :sswitch_0
    const/4 v3, 0x1

    const v5, 0x7f090090

    goto/16 :goto_0

    :sswitch_1
    const/4 v3, 0x1

    const v5, 0x7f09012a

    goto/16 :goto_0

    :sswitch_2
    const/4 v3, 0x1

    const v5, 0x7f09031f

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6a7 -> :sswitch_2
        0x9ca -> :sswitch_0
        0x9ce -> :sswitch_1
    .end sparse-switch
.end method

.method private static getError(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-lez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;
    .locals 13

    const/4 v0, 0x0

    const-string v11, "getPSBaringAction"

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v6, -0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocall_settings"

    invoke-static {v11, v12, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_4

    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v11, "dcm_volte_popup_message"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const v6, 0x7f0900f4

    const/4 v4, 0x3

    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, -0x1

    if-eq v6, v11, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcom/android/incallui/util/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v11, "toVoLTE"

    invoke-virtual {v7, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "noti_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "message"

    invoke-virtual {v7, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "number"

    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "show_endscreen"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "autoDivertSettings : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v7

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_6

    const v6, 0x7f09015e

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_6
    const v6, 0x7f09015d

    const/4 v4, 0x4

    goto/16 :goto_1

    :cond_7
    const-string v11, "feature_lgt"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v4, 0x5

    goto/16 :goto_1
.end method

.method public static getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 5

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSIPErrorFromDisconnectCause reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    const-string v2, "0"

    if-eqz v0, :cond_0

    const-string v3, "\\, "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtils;->translateDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v2, v1, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private static getSIPErrorString(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_SESSION_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_INVITE_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RTP_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DATA_CONNECTION_LOST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ALTERNATIVE_SERVICES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_FORBIDDEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_FOUND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "METHOD_NOT_ALLOWED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_MEDIA_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_URI_SCHEME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BAD_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_380_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_415_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADDRESS_INCOMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BUSY_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TERMINATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NETWORK_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_INTERNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DECLINE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DOES_NOT_EXIST_ANYWHERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_NOT_ACCEPTABLE_DIVERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_TIMER_F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_403"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_423"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LINE_IN_USE_ON_OTHER_DEVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_GENERAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method public static getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/wrapper/DisconnectCauseWrapper;->disconnectCauseId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-object p0, v0, v2

    :cond_0
    return-object p0
.end method

.method public static handleCallFailError(Landroid/os/Bundle;)V
    .locals 7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCallFailError "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v5, "noti_type"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "message"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "number"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "toVoLTE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "errorCode"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->getAudioMode()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/incallui/util/AudioUtils;->setAudioMode(I)V

    :cond_3
    invoke-static {v3, v4, v0}, Lcom/android/incallui/util/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isLGTSIM()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    invoke-static {v1, v3, v4, v0}, Lcom/android/incallui/util/IMSErrorUtils;->showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_4
    invoke-static {v3, v4, v0}, Lcom/android/incallui/util/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

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
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDisconnectCause call = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDisconnectCause sipError : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/IMSErrorUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/IMSErrorUtils;->isPSBarringEventReceived()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/util/IMSErrorUtils;->getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->setPSBarringEventReceived(Z)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/incallui/util/IMSErrorUtils;->handleCallFailError(Landroid/os/Bundle;)V

    :cond_3
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, v0}, Lcom/android/incallui/util/IMSErrorUtils;->handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z

    move-result v3

    goto :goto_0

    :cond_4
    if-lez v2, :cond_2

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_SKT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_KTT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_LGT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v4, "handle_sip_error_code_dcm"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string v4, "jansky_info_for_tmo"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_TMO(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isCellC()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_CellC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_b
    const-string v4, "feature_att"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_ATT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_c
    const-string v4, "feature_vzw"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, v2}, Lcom/android/incallui/util/IMSErrorUtils;->getDisconnectCauseAction_VZW(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, "noti_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/IMSErrorUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :pswitch_0
    const-string v3, "SECVT-IMSErrorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVideoEndScreen : noti_type("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const-string v3, "SECVT-IMSErrorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVideoEndScreen : DisconnectCause("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

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

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SECVT-IMSErrorUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setPSBarringEventReceived(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/util/IMSErrorUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public static showIMSErrorDialog(Ljava/lang/String;)V
    .locals 5

    const-string v2, "SECVT-IMSErrorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIMSErrorDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v2, "SECVT-IMSErrorUtils"

    const-string v3, "sendStartUpErrorViaATCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    const-string v2, "SECVT-IMSErrorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIMSErrorDialog_Divert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v2, "SECVT-IMSErrorUtils"

    const-string v3, "sendStartUpErrorViaATCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showIMSErrorDialog_WiFi(Ljava/lang/String;)V
    .locals 5

    const-string v2, "SECVT-IMSErrorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showIMSErrorDialog_WiFi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
