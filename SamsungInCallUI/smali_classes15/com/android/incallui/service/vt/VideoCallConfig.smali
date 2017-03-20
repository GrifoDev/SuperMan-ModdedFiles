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

.field public static UI_PRIMARY_VIDEO_TYPE_ICON:Z

.field public static UI_SOFTPHONE:Z

.field private static mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

.field private static mUXType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->ENG:Z

    .line 24
    sput v1, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    .line 25
    const/4 v2, 0x0

    sput-object v2, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    .line 27
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    .line 28
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_ICON:Z

    .line 29
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PHOTO:Z

    .line 30
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    .line 32
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    .line 34
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_ADD_CALL:Z

    .line 35
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    .line 37
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_SOFTPHONE:Z

    .line 39
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    .line 40
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    .line 42
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    .line 43
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    .line 44
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    .line 45
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    .line 46
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION_ACCELEROMETER:Z

    .line 47
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->TEST_MODE:Z

    .line 48
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    .line 49
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    .line 50
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    .line 51
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    .line 52
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    .line 53
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    .line 54
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-nez v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    .line 55
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->ALLOW_VIDEO_CALL_LOW_BATT:Z

    .line 57
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CONCEPT_AUS_COMMON()Z
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isAus()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_BMC()Z
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_BMC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_COMMON()Z
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_GSM()Z
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_Gsm()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_VMC()Z
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_VMC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_CAN_VOLTE()Z
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_VMC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_BMC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_RWC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_FMC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
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

    .prologue
    .line 330
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isHkTw()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_IND_INS()Z
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INS()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_IND_INU()Z
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INU()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_IND_SWC()Z
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_SWC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_JPN_DCM()Z
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isJpn_DCM()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_COMMON()Z
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_KTT()Z
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor_KTT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_LGU()Z
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor_LGU()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_KOR_SKT()Z
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor_SKT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_ATT()Z
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_CAN_GSM()Z
    .locals 1

    .prologue
    .line 288
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

    .prologue
    .line 260
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_CDMA()Z
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_Cdma()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_COMMON()Z
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_GSM()Z
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_Gsm()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_MPCS()Z
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_MPCS()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_TMO()Z
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_TMO()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_USC()Z
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    return v0
.end method

.method public static CONCEPT_USA_VZW()Z
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    return v0
.end method

.method public static dump()V
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig$UXType;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->config(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCapability;->dump()V

    .line 344
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->dumpExtraConfig()V

    .line 345
    return-void
.end method

.method public static dumpExtraConfig()V
    .locals 2

    .prologue
    .line 348
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

    .line 349
    return-void
.end method

.method public static getExtraConfigString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig$UXType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 354
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "UI_PRIMARY_VIDEO_TYPE_ICON"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 357
    :cond_0
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_ICON:Z

    if-eqz v1, :cond_1

    .line 358
    const-string v1, "UI_MULTIPARTY_SECONDARY_ICON"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 360
    :cond_1
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PHOTO:Z

    if-eqz v1, :cond_2

    .line 361
    const-string v1, "UI_MULTIPARTY_SECONDARY_PHOTO"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 363
    :cond_2
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    if-eqz v1, :cond_3

    .line 364
    const-string v1, "UI_MULTIPARTY_SECONDARY_PANNEL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 366
    :cond_3
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    if-eqz v1, :cond_4

    .line 367
    const-string v1, "UI_MODIFY_SWITCH_REJECT_POPUP"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 369
    :cond_4
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_ADD_CALL:Z

    if-eqz v1, :cond_5

    .line 370
    const-string v1, "UI_MENU_ADD_CALL"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 372
    :cond_5
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_ANSWER_OPTION:Z

    if-eqz v1, :cond_6

    .line 373
    const-string v1, "UI_ANSWER_OPTION"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 375
    :cond_6
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_SOFTPHONE:Z

    if-eqz v1, :cond_7

    .line 376
    const-string v1, "UI_SOFTPHONE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 378
    :cond_7
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v1, :cond_8

    .line 379
    const-string v1, "UI_DATA_USAGE_LIMITED_GSM"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 381
    :cond_8
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-eqz v1, :cond_9

    .line 382
    const-string v1, "UI_DATA_USAGE_LIMITED_CDMA"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 384
    :cond_9
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_a

    .line 385
    const-string v1, "PROHIBIT_CANDID_SHOT"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 387
    :cond_a
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    if-eqz v1, :cond_b

    .line 388
    const-string v1, "EPDG_ERROR_EVENT"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 390
    :cond_b
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    if-eqz v1, :cond_c

    .line 391
    const-string v1, "CONFERENCE_HIDE_PREVIEW"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 393
    :cond_c
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v1, :cond_d

    .line 394
    const-string v1, "DEVICE_ROTATION"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 396
    :cond_d
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v1, :cond_e

    .line 397
    const-string v1, "RESIZE_SCREEN"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 399
    :cond_e
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v1, :cond_f

    .line 400
    const-string v1, "CAMERA_EFFECT"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 402
    :cond_f
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    if-eqz v1, :cond_10

    .line 403
    const-string v1, "OVERLAY_POPUP_PLAY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 405
    :cond_10
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    if-eqz v1, :cond_11

    .line 406
    const-string v1, "PICK_GALLERY_IMAGE"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallConfig;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 408
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHandoverNotificationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static isChnUX()Z
    .locals 2

    .prologue
    .line 228
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

    .prologue
    .line 232
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

    .prologue
    .line 212
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

    .prologue
    .line 224
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

    .prologue
    const/4 v0, 0x1

    .line 220
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

    .prologue
    .line 216
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
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 413
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    return-void
.end method

.method public static loadCSC()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCSC;->getInstance()Lcom/android/incallui/service/vt/VideoCallCSC;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v0, "Why does CSC load again ?"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCSC;->forceUpdate()Lcom/android/incallui/service/vt/VideoCallCSC;

    goto :goto_0
.end method

.method public static makeConfig()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->loadCSC()V

    .line 84
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setOperator()V

    .line 86
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setUXType()V

    .line 87
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setCapability()V

    .line 88
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->setExtraConfig()V

    .line 89
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->ENG:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->dump()V

    .line 92
    :cond_0
    return-void
.end method

.method private static setCapability()V
    .locals 4

    .prologue
    .line 121
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

    .line 122
    :cond_0
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 124
    :cond_1
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->SUPPORT_CVO:Z

    if-eqz v0, :cond_2

    .line 125
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 127
    :cond_2
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CONFERENCE_ADD_USER:Z

    if-eqz v0, :cond_3

    .line 128
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CONFERENCE_ADD_USER:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 130
    :cond_3
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->EARLY_MEDIA:Z

    if-eqz v0, :cond_4

    .line 131
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EARLY_MEDIA:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 133
    :cond_4
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    .line 134
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->HANDOVER_NOTIFICATION:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 136
    :cond_5
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->CALL_STATE_LABEL:Z

    if-eqz v0, :cond_6

    .line 137
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->CALL_STATE_LABEL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 139
    :cond_6
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->EPDG_CALL:Z

    if-eqz v0, :cond_7

    .line 140
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 142
    :cond_7
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->PRIVACY_CAPTURE:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    :cond_8
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->PRIVACY_CAPTURE:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 145
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

    .line 146
    :cond_a
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->add(I)V

    .line 148
    :cond_b
    return-void
.end method

.method private static setExtraConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    .line 155
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

    .line 156
    :cond_2
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PHOTO:Z

    .line 158
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_SOFTPHONE:Z

    .line 161
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    :cond_5
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->EPDG_ERROR_EVENT:Z

    .line 164
    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    .line 167
    :cond_7
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_TMO()Z

    move-result v0

    if-nez v0, :cond_8

    .line 168
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    if-nez v0, :cond_8

    .line 169
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_Gsm()Z

    move-result v0

    if-nez v0, :cond_8

    .line 170
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INU()Z

    move-result v0

    if-nez v0, :cond_8

    .line 171
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isInd_INS()Z

    move-result v0

    if-nez v0, :cond_8

    .line 172
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isTelstra()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    :cond_8
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MENU_ADD_CALL:Z

    .line 175
    :cond_9
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_VOLTE()Z

    move-result v0

    if-nez v0, :cond_a

    .line 176
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    .line 178
    :cond_a
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_VZW()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_USC()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_CCT()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 179
    :cond_b
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    .line 181
    :cond_c
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_ATT()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_BMC()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan_VMC()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa_TMO()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    :cond_d
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    .line 184
    :cond_e
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v0

    if-nez v0, :cond_f

    .line 185
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v0

    if-nez v0, :cond_f

    .line 186
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_JPN_DCM()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_f

    .line 187
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INS()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INU()Z

    move-result v0

    if-nez v0, :cond_f

    .line 188
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_HKTW_COMMON()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_AUS_COMMON()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 189
    :cond_f
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    .line 191
    :cond_10
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_COMMON()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 192
    sput-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    .line 193
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    .line 194
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    .line 195
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->OVERLAY_POPUP_PLAY:Z

    .line 196
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PICK_GALLERY_IMAGE:Z

    .line 198
    :cond_11
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_12

    .line 199
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_COMMON()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION_ACCELEROMETER:Z

    .line 201
    :cond_12
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_COMMON()Z

    move-result v0

    if-nez v0, :cond_13

    move v2, v1

    :cond_13
    sput-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    .line 203
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-nez v0, :cond_14

    .line 204
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_MPCS()Z

    move-result v0

    if-nez v0, :cond_14

    .line 205
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v0

    if-nez v0, :cond_14

    .line 206
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INS()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_IND_INU()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 207
    :cond_14
    sput-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->ALLOW_VIDEO_CALL_LOW_BATT:Z

    .line 209
    :cond_15
    return-void

    :cond_16
    move v0, v2

    .line 199
    goto :goto_0
.end method

.method private static setOperator()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mCSC:Lcom/android/incallui/service/vt/VideoCallCSC;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallCSC;->SALES_CODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallOperator;->set(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static setUXType()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    .line 109
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isChn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const/4 v0, 0x3

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isJpn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    const/4 v0, 0x4

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    goto :goto_0

    .line 115
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isUsa()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallOperator;->isCan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :cond_4
    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/service/vt/VideoCallConfig;->mUXType:I

    goto :goto_0
.end method
