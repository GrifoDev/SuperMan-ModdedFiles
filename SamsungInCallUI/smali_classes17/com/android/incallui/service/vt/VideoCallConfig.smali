.class public Lcom/android/incallui/service/vt/VideoCallConfig;
.super Ljava/lang/Object;
.source "VideoCallConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallConfig$CapabilityType;,
        Lcom/android/incallui/service/vt/VideoCallConfig$UXType;
    }
.end annotation


# static fields
.field public static ALLOW_VIDEO_CALL_LOW_BATT:Z

.field public static CAMERA_EFFECT:Z

.field public static CAN_EXCHANGE_VIEW:Z

.field public static CAN_VIDEO_DRAG_SMALL_VIEW:Z

.field public static CAN_VIDEO_PAUSE:Z

.field public static CONFERENCE_HIDE_PREVIEW:Z

.field public static DEVICE_ROTATION:Z

.field public static DEVICE_ROTATION_ACCELEROMETER:Z

.field public static final ENG:Z

.field public static EPDG_ERROR_EVENT:Z

.field public static FAKE_VIDEO_CALL:Z

.field public static OVERLAY_POPUP_PLAY:Z

.field public static PICK_GALLERY_IMAGE:Z

.field public static PIP_TYPE_PREVIEW:Z

.field public static PROHIBIT_CANDID_SHOT:Z

.field public static RESIZE_SCREEN:Z

.field public static TEST_MODE:Z

.field public static UI_ANSWER_OPTION:Z

.field public static UI_DATA_USAGE_LIMITED_CDMA:Z

.field public static UI_DATA_USAGE_LIMITED_GSM:Z

.field public static UI_MENU_ADD_CALL:Z

.field public static UI_MODIFY_SWITCH_REJECT_POPUP:Z

.field public static UI_MULTIPARTY_SECONDARY_ICON:Z

.field public static UI_MULTIPARTY_SECONDARY_PANNEL:Z

.field public static UI_MULTIPARTY_SECONDARY_PHOTO:Z

.field public static UI_NOTIFY_VIDEO_QUALITY:Z

.field public static UI_PRIMARY_VIDEO_TYPE_ICON:Z

.field public static UI_SOFTPHONE:Z

.field private static mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

.field private static mUXType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->ENG:Z

    sput v1, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    const/4 v2, 0x0

    sput-object v2, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_NOTIFY_VIDEO_QUALITY:Z

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_ICON:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PHOTO:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_ADD_CALL:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_SOFTPHONE:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION_ACCELEROMETER:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->TEST_MODE:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-nez v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->ALLOW_VIDEO_CALL_LOW_BATT:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PIP_TYPE_PREVIEW:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CONCEPT_AUS_COMMON()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isAus()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_BMC()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_BMC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_COMMON()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_GSM()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_Gsm()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_VMC()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_VMC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_VOLTE()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_VMC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_BMC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_RWC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_FMC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_RWA()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_BMA()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CONCEPT_HKTW_COMMON()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isHkTw()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_IND_INS()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INS()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_IND_INU()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INU()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_IND_SWC()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_SWC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_JPN_DCM()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isJpn_DCM()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_COMMON()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_KTT()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor_KTT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_LGU()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor_LGU()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_SKT()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor_SKT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_ATT()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_CAN_GSM()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_Gsm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_Gsm()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CONCEPT_USA_CCT()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_CDMA()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_Cdma()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_COMMON()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_GSM()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_Gsm()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_MPCS()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_MPCS()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_TMO()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_TMO()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_USC()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_VZW()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    return v0
.end method

.method public static dump()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig$UXType;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->config(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCapability;->dump()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->dumpExtraConfig()V

    return-void
.end method

.method public static dumpExtraConfig()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extra -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->getExtraConfigString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->config(Ljava/lang/String;)V

    return-void
.end method

.method public static getExtraConfigString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig$UXType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v1, :cond_0

    const-string v1, "UI_PRIMARY_VIDEO_TYPE_ICON"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_NOTIFY_VIDEO_QUALITY:Z

    if-eqz v1, :cond_1

    const-string v1, "UI_NOTIFY_VIDEO_QUALITY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_ICON:Z

    if-eqz v1, :cond_2

    const-string v1, "UI_MULTIPARTY_SECONDARY_ICON"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_2
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PHOTO:Z

    if-eqz v1, :cond_3

    const-string v1, "UI_MULTIPARTY_SECONDARY_PHOTO"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    if-eqz v1, :cond_4

    const-string v1, "UI_MULTIPARTY_SECONDARY_PANNEL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_4
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    if-eqz v1, :cond_5

    const-string v1, "UI_MODIFY_SWITCH_REJECT_POPUP"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_5
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_ADD_CALL:Z

    if-eqz v1, :cond_6

    const-string v1, "UI_MENU_ADD_CALL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_6
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v1, :cond_7

    const-string v1, "UI_ANSWER_OPTION"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_7
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_SOFTPHONE:Z

    if-eqz v1, :cond_8

    const-string v1, "UI_SOFTPHONE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_8
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v1, :cond_9

    const-string v1, "UI_DATA_USAGE_LIMITED_GSM"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_9
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-eqz v1, :cond_a

    const-string v1, "UI_DATA_USAGE_LIMITED_CDMA"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_a
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_b

    const-string v1, "PROHIBIT_CANDID_SHOT"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_b
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    if-eqz v1, :cond_c

    const-string v1, "EPDG_ERROR_EVENT"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_c
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    if-eqz v1, :cond_d

    const-string v1, "CONFERENCE_HIDE_PREVIEW"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_d
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v1, :cond_e

    const-string v1, "DEVICE_ROTATION"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_e
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v1, :cond_f

    const-string v1, "RESIZE_SCREEN"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_f
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v1, :cond_10

    const-string v1, "CAMERA_EFFECT"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_10
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v1, :cond_11

    const-string v1, "OVERLAY_POPUP_PLAY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_11
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    if-eqz v1, :cond_12

    const-string v1, "PICK_GALLERY_IMAGE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHandoverNotificationType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static isChnUX()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGlobalUX_Ind()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isGloblaUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGloblaUX()Z
    .locals 1

    sget v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJpnUX()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKorUX()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsaUX()Z
    .locals 2

    sget v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static loadCSC()V
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCSC;->getInstance()Lcom/android/incallui/service/vt/VideoCallCSC;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Why does CSC load again ?"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCSC;->forceUpdate()Lcom/android/incallui/service/vt/VideoCallCSC;

    goto :goto_0
.end method

.method public static makeConfig()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->loadCSC()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setOperator()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setUXType()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setCapability()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setExtraConfig()V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->ENG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->dump()V

    :cond_0
    return-void
.end method

.method private static setCapability()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    const-string v1, "rx_held"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_1
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->SUPPORT_CVO:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_2
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CONFERENCE_ADD_USER:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_3
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->EARLY_MEDIA:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EARLY_MEDIA:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_4
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_5
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CALL_STATE_LABEL:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_6
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->EPDG_CALL:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_7
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->PRIVACY_CAPTURE:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->PRIVACY_CAPTURE:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_9
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    const-string v1, "three_widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "incoming_call_widget_for_volte"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    :cond_b
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    const-string v1, "pip_preview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    const-string v1, "pip_peerview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->MULTITASKING_PIP:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    const-string v1, "pip_preview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PIP_TYPE_PREVIEW:Z

    :cond_d
    return-void
.end method

.method private static setExtraConfig()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PHOTO:Z

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_SOFTPHONE:Z

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    :cond_7
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_TMO()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_Gsm()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INU()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INS()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isTelstra()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_ADD_CALL:Z

    :cond_9
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_TMO()Z

    move-result v0

    if-eqz v0, :cond_a

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_NOTIFY_VIDEO_QUALITY:Z

    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VOLTE()Z

    move-result v0

    if-nez v0, :cond_b

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    :cond_b
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    :cond_d
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_BMC()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_VMC()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_TMO()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    :cond_f
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isGloblaUX()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_JPN_DCM()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INS()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INU()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_HKTW_COMMON()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_AUS_COMMON()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    :cond_11
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_COMMON()Z

    move-result v0

    if-eqz v0, :cond_12

    sput-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    :cond_12
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_COMMON()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION_ACCELEROMETER:Z

    :cond_13
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_COMMON()Z

    move-result v0

    if-nez v0, :cond_14

    move v2, v1

    :cond_14
    sput-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_MPCS()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INS()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INU()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->ALLOW_VIDEO_CALL_LOW_BATT:Z

    :cond_16
    return-void

    :cond_17
    move v0, v2

    goto :goto_0
.end method

.method private static setOperator()V
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->SALES_CODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallOperator;->set(Ljava/lang/String;)V

    return-void
.end method

.method public static setUXType()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isChn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isJpn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    goto :goto_0
.end method
