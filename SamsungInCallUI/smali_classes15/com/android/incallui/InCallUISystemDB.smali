.class public Lcom/android/incallui/InCallUISystemDB;
.super Ljava/lang/Object;
.source "InCallUISystemDB.java"


# static fields
.field public static final DLIVELINK_NAVIGATION:I = 0x2

.field public static final DLIVELINK_NONE:I = 0x0

.field public static final DLIVELINK_ONLY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "InCallUISystemDB"

.field private static final ONEHAND_ANYSCREEN:Ljava/lang/String; = "any_screen_running"

.field public static final SUB_ID_1:I = 0x1

.field public static final SUB_ID_2:I = 0x2

.field public static final SUB_ID_3:I = 0x3

.field public static final VOICECALL_TYPE_CS:I = 0x1

.field public static final VOICECALL_TYPE_HD_CS:I = 0x2

.field public static final VOICECALL_TYPE_VoLTE:I

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName4startIMSConference()Ljava/lang/String;
    .locals 3

    .prologue
    .line 482
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "name4startIMSConf"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public static getNumber4startIMSConference()Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "number4startIMSConf"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method

.method public static getOneHandAnyScreenEnabled()I
    .locals 4

    .prologue
    .line 581
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 582
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "any_screen_running"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPIPVisiblity()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 466
    const-string v0, "show_pip_visibility"

    .line 467
    .local v0, "SHOW_PIP_VISIBILITY":Ljava/lang/String;
    const-string v3, "show_pip_visibility"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 468
    .local v1, "show":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPIPVisiblity() : show = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 469
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSecureSettingDB(Ljava/lang/String;I)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 81
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 82
    .end local p1    # "def":I
    :goto_0
    return p1

    .restart local p1    # "def":I
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getSettingDB(Ljava/lang/String;I)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 69
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 71
    .end local p1    # "def":I
    :goto_0
    return p1

    .restart local p1    # "def":I
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getSettingDB(Ljava/lang/String;II)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 75
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 77
    .end local p1    # "def":I
    :goto_0
    return p1

    .restart local p1    # "def":I
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    goto :goto_0
.end method

.method public static getSubPrefix(IILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "simId"    # I
    .param p1, "subId"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 587
    const-string v0, "InCallUISystemDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";  subNumberId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    packed-switch p1, :pswitch_data_0

    .line 614
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 590
    :pswitch_0
    if-nez p0, :cond_0

    .line 591
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_ONE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_ONE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 598
    :pswitch_1
    if-nez p0, :cond_1

    .line 599
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_TWO"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_TWO_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 606
    :pswitch_2
    if-nez p0, :cond_2

    .line 607
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_THREE"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SUB_NUMBER_PREFIX_THREE_SIM2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSuppService()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "isOnSuppService":I
    const-string v0, "on_supp_service"

    .line 476
    .local v0, "ON_SUPP_SERVICE":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "on_supp_service"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSuppService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 478
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static getTtyNotification()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 446
    const-string v0, "show_tty_notification"

    .line 447
    .local v0, "SHOW_TTY_NOTIFICATION":Ljava/lang/String;
    const-string v4, "show_tty_notification"

    invoke-static {v4, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 448
    .local v1, "show":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTtyNotification, show : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 449
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static getTtySetting()I
    .locals 4

    .prologue
    .line 453
    const-string v0, "preferred_tty_mode"

    .line 454
    .local v0, "TTY_SETTING":Ljava/lang/String;
    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 455
    .local v1, "setting":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTtySetting, setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 456
    return v1
.end method

.method public static getWideBandAMR()I
    .locals 4

    .prologue
    .line 429
    const-string v0, "wb_amr_mode"

    .line 430
    .local v0, "DB_KEY_WB_AMR":Ljava/lang/String;
    const-string v2, "wb_amr_mode"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 431
    .local v1, "wb_amr":I
    return v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sput-object p0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public static isAllowPrivateforNotification()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    const-string v3, "lock_screen_show_notifications"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 355
    .local v0, "isAllowPrivate":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 356
    const-string v3, "lock_screen_allow_private_notifications"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 358
    :cond_0
    :goto_1
    return v0

    .end local v0    # "isAllowPrivate":Z
    :cond_1
    move v0, v2

    .line 354
    goto :goto_0

    .restart local v0    # "isAllowPrivate":Z
    :cond_2
    move v0, v2

    .line 356
    goto :goto_1
.end method

.method public static isCallerInfoCardMode()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 227
    const-string v0, "display_caller_info_card"

    .line 228
    .local v0, "DB_KEY_CALLER_INFO_CARD_MODE":Ljava/lang/String;
    const-string v5, "display_caller_info_card"

    const-string v2, "default_caller_information"

    .line 229
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 228
    :goto_0
    invoke-static {v5, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 231
    .local v1, "callerInfoCardMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallerInfoCardMode : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 232
    if-eqz v1, :cond_2

    :goto_2
    return v3

    .end local v1    # "callerInfoCardMode":I
    :cond_0
    move v2, v4

    .line 229
    goto :goto_0

    .restart local v1    # "callerInfoCardMode":I
    :cond_1
    move v2, v4

    .line 231
    goto :goto_1

    :cond_2
    move v3, v4

    .line 232
    goto :goto_2
.end method

.method public static isCarAppRunning()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    const-string v0, "drive_link_on"

    .line 193
    .local v0, "DB_KEY_DRIVELINK_RUNNING":Ljava/lang/String;
    const-string v4, "drive_link_on"

    invoke-static {v4, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 194
    .local v1, "drivelink_running":I
    if-ne v1, v2, :cond_0

    .line 195
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isCarModeNaviOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v0, "drivelink_mode"

    .line 209
    .local v0, "DB_KEY_DRIVELINK_MODE_ON":Ljava/lang/String;
    const-string v3, "drivelink_mode"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "DriveLinkMode":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isCarModeOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    const-string v0, "drivelink_mode"

    .line 203
    .local v0, "DB_KEY_DRIVELINK_MODE_ON":Ljava/lang/String;
    const-string v3, "drivelink_mode"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 204
    .local v1, "bDrivelinkmode":Z
    :goto_0
    return v1

    .end local v1    # "bDrivelinkmode":Z
    :cond_0
    move v1, v2

    .line 203
    goto :goto_0
.end method

.method public static isCarmodeHome()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    const-string v2, "carmode_home"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 215
    .local v0, "carmodeHome":Z
    :goto_0
    const-string v1, "InCallUISystemDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carmode_home : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return v0

    .end local v0    # "carmodeHome":Z
    :cond_0
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method public static isConnectedMirrorLink()Z
    .locals 2

    .prologue
    .line 162
    const-string v0, "net.mirrorlink.on"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEasyInteraction()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    const-string v3, "easy_interaction"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "isEnabled":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEasyInteraction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 124
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isEnabledShowButtonBackground()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 515
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 516
    .local v0, "isEnabled":Z
    :cond_0
    return v0
.end method

.method public static isFlightMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isGameNoInterruption()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 503
    const-string v2, "game_no_interruption"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 504
    .local v0, "isEnabled":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGameNoInterruption: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 505
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isHDVoicePrefered()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    const-string v0, "voicecall_type"

    .line 255
    .local v0, "VOICECALL_TYPE_KEY":Ljava/lang/String;
    const-string v5, "enabled"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 257
    const/4 v1, 0x1

    .line 258
    .local v1, "default_value":I
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "default_volte"

    .line 259
    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    :cond_0
    const/4 v1, 0x0

    .line 265
    :goto_0
    const-string v5, "voicecall_type"

    invoke-static {v5, v1}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    .line 266
    .local v2, "ret_value":I
    if-ne v2, v3, :cond_2

    move v2, v3

    .line 267
    :goto_1
    if-nez v2, :cond_3

    .line 269
    .end local v1    # "default_value":I
    .end local v2    # "ret_value":I
    :goto_2
    return v3

    .line 262
    .restart local v1    # "default_value":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .restart local v2    # "ret_value":I
    :cond_2
    move v2, v4

    .line 266
    goto :goto_1

    :cond_3
    move v3, v4

    .line 267
    goto :goto_2

    .end local v1    # "default_value":I
    .end local v2    # "ret_value":I
    :cond_4
    move v3, v4

    .line 269
    goto :goto_2
.end method

.method public static isKidsModeCallApp()Z
    .locals 8

    .prologue
    .line 236
    const/4 v3, 0x0

    .line 238
    .local v3, "isKidsMode":Z
    :try_start_0
    sget-object v6, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 239
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v6, 0x10000

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 242
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 243
    .local v0, "currentLauncher":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentLauncher : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 244
    if-eqz v0, :cond_0

    const-string v6, "com.sec.android.app.kidshome"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    const/4 v3, 0x1

    .line 250
    .end local v0    # "currentLauncher":Ljava/lang/String;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return v3

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static isKidsModeRunning()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 574
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 575
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 576
    .local v1, "kidsModeRunning":Z
    :goto_0
    return v1

    .end local v1    # "kidsModeRunning":Z
    :cond_0
    move v1, v2

    .line 575
    goto :goto_0
.end method

.method public static isLabsEnhancedVoiceRecording()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 546
    const-string v0, "galaxylabs_enhanced_voice_recording"

    .line 547
    .local v0, "LABS_ENHANCED_VOICE_RECORDING":Ljava/lang/String;
    const-string v3, "galaxylabs_enhanced_voice_recording"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 548
    .local v1, "isEnabled":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isLabsFloatingMinimodePopup()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 558
    const-string v0, "galaxylabs_floating_minimode_popup"

    .line 559
    .local v0, "LABS_FLOATING_MINIMODE_POPUP":Ljava/lang/String;
    const-string v3, "galaxylabs_floating_minimode_popup"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 560
    .local v1, "isEnabled":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isLostPhoneLock()Z
    .locals 3

    .prologue
    .line 345
    const-string v0, "lost_phone_lock"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "lock"

    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "missing_phone_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMagnificationGestureEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 492
    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, "isEnabled":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMagnificationGestureEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 494
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isMcidBlockedNumber()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    sget-object v3, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mcid_rejected_number"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 364
    .local v0, "McidBlockedNumber":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isMcidDownloadble()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 368
    const-string v2, "mcid_downloadable"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 370
    .local v0, "McidDownloadble":I
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMirrorLinkModeOn()Z
    .locals 2

    .prologue
    .line 184
    const-string v0, "net.mirrorlink.on"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileDataOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 509
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 511
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 509
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileKeyboardCovered()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "mobileKeyboardCovered":Z
    sget-object v3, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 115
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 116
    iget v3, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNsriSecureCallMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 339
    const-string v0, "nsri_secure_call_mode"

    .line 340
    .local v0, "NSRI_SECURE_CALL_MODE":Ljava/lang/String;
    const-string v3, "nsri_secure_call_mode"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 341
    .local v1, "isEnabled":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isOnehandModeOn()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v1, "interactionarea_switch"

    .line 133
    .local v1, "ONEHAND_MODE":Ljava/lang/String;
    const-string v0, "any_screen_running"

    .line 135
    .local v0, "ONEHAND_ANYSCREEN_MODE":Ljava/lang/String;
    const/4 v2, 0x0

    .line 136
    .local v2, "getOnehandMode":I
    const-string v5, "any_screen_running"

    invoke-static {v5, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v3

    .line 138
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMobileKeyboardCovered()Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    const-string v5, "interactionarea_switch"

    invoke-static {v5, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    .line 144
    if-ne v2, v4, :cond_0

    move v3, v4

    .line 145
    goto :goto_0
.end method

.method public static isPhoneNumberLocatorOn()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 416
    const-string v0, "number_region_activation_preference"

    .line 417
    .local v0, "PNL_ON":Ljava/lang/String;
    const-string v5, "number_region_activation_preference"

    const-string v2, "phone_number_locator_tencent"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 418
    .local v1, "isOn":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPhoneNumberLocatorOn : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 419
    if-ne v1, v4, :cond_1

    :goto_1
    return v4

    .end local v1    # "isOn":I
    :cond_0
    move v2, v4

    .line 417
    goto :goto_0

    .restart local v1    # "isOn":I
    :cond_1
    move v4, v3

    .line 419
    goto :goto_1
.end method

.method public static isRADDialingPopupSkip()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 526
    const-string v0, "rad_dial_popup_skip_for_divert"

    .line 527
    .local v0, "RAD_DIAL_POPUP_SKIP_FOR_DIVERT":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rad_dial_popup_skip_for_divert"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 528
    .local v1, "isDialingPopupSkip":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRADDialingPopupSkip : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 529
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isRADDialingToKorea()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 533
    const-string v0, "rad_dial_korea_for_divert"

    .line 534
    .local v0, "RAD_DIAL_KOREA_FOR_DIVERT":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "rad_dial_korea_for_divert"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 535
    .local v1, "isDialingToKorea":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRADDialingToKorea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 536
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isRapidInputMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 332
    const-string v0, "rapid_key_input"

    .line 333
    .local v0, "RAPID_KEY_INPUT":Ljava/lang/String;
    const-string v2, "rapid_key_input"

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 334
    .local v1, "isEnabled":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rapidInputMode : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 335
    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 334
    goto :goto_0

    :cond_1
    move v3, v4

    .line 335
    goto :goto_1
.end method

.method public static isSetupWizardComplete()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 627
    const-string v0, "user_setup_complete"

    .line 628
    .local v0, "DB_KEY_USER_SETUP_COMPLETE":Ljava/lang/String;
    const-string v3, "user_setup_complete"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 629
    .local v1, "isCompleted":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSetupWizardComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 630
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isSystemSettingAllSoundOff()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 380
    const/4 v0, 0x0

    .line 382
    .local v0, "allSoundOff":I
    const-string v1, "all_sound_off"

    .line 383
    .local v1, "systemSettingAllSoundOff":Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all_sound_off -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 387
    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isTPhoneEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    .local v0, "isEnabled":I
    :goto_0
    return v2

    .line 301
    .end local v0    # "isEnabled":I
    :cond_0
    const-string v3, "skt_phone20_settings"

    invoke-static {v3, v2, v2}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;II)I

    move-result v0

    .line 303
    .restart local v0    # "isEnabled":I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isTPhoneMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 274
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    :goto_0
    return v0

    .line 277
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const-string v2, "isTPhoneMode : emergency mode"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneUpgradeInstallingState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    const-string v2, "isTPhoneMode : TPhone istalling"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    const-string v2, "isTPhoneMode : drivelink mode"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    const-string v2, "isTPhoneMode : kids mode"

    invoke-static {v2, v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 293
    :cond_4
    const-string v0, "isTPhoneMode : true"

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    move v0, v1

    .line 294
    goto :goto_0
.end method

.method public static isTPhoneRejectMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 316
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    .local v0, "TPHONE_REJECT_MODE":Ljava/lang/String;
    .local v1, "isEnabled":I
    :goto_0
    return v4

    .line 318
    .end local v0    # "TPHONE_REJECT_MODE":Ljava/lang/String;
    .end local v1    # "isEnabled":I
    :cond_0
    const-string v0, "skt_phone20_reject_mode"

    .line 319
    .restart local v0    # "TPHONE_REJECT_MODE":Ljava/lang/String;
    const-string v2, "skt_phone20_reject_mode"

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 320
    .restart local v1    # "isEnabled":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTPhoneRejectMode : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 321
    if-eqz v1, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 320
    goto :goto_1

    :cond_2
    move v3, v4

    .line 321
    goto :goto_2
.end method

.method public static isTPhoneRelaxMode()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 307
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    .local v0, "TPHONE_RELAX_MODE":Ljava/lang/String;
    .local v1, "isEnabled":I
    :goto_0
    return v4

    .line 309
    .end local v0    # "TPHONE_RELAX_MODE":Ljava/lang/String;
    .end local v1    # "isEnabled":I
    :cond_0
    const-string v0, "skt_phone20_relax_mode"

    .line 310
    .restart local v0    # "TPHONE_RELAX_MODE":Ljava/lang/String;
    const-string v2, "skt_phone20_relax_mode"

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 311
    .restart local v1    # "isEnabled":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTPhoneRelaxMode : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 312
    if-eqz v1, :cond_2

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 311
    goto :goto_1

    :cond_2
    move v3, v4

    .line 312
    goto :goto_2
.end method

.method public static isTPhoneUpgradeInstallingState()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    const-string v0, "skt_phone20_installing_mode"

    .line 326
    .local v0, "TPHONE_INSTALLING_MODE":Ljava/lang/String;
    const-string v4, "skt_phone20_installing_mode"

    invoke-static {v4, v3}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 328
    .local v1, "isInstalling":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isTackBackModeOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string v0, "enabled_accessibility_s_talkback"

    .line 153
    .local v0, "DB_KEY_TACK_BACK_MODE_ON":Ljava/lang/String;
    const-string v3, "enabled_accessibility_s_talkback"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 154
    .local v1, "mTalkBackMode":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isTwoPhoneAccount()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 409
    sget-object v3, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "two_account"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 410
    .local v0, "isAccount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTwoPhoneAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 411
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isTwoPhoneRegistered()Z
    .locals 3

    .prologue
    .line 397
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegisteredForCall()Z

    move-result v1

    .line 398
    .local v1, "isTwoPhoneRegisteredForCall":Z
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneAccount()Z

    move-result v0

    .line 399
    .local v0, "isTwoPhoneAccount":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isTwoPhoneRegisteredForCall()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 403
    sget-object v3, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "two_register"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 404
    .local v0, "isEnabled":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTwoPhoneRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 405
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isUniversalSwitchEnable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    const-string v3, "universal_switch_enabled"

    invoke-static {v3, v2}, Lcom/android/incallui/InCallUISystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 392
    .local v0, "isEnabled":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUniversalSwitchEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 393
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isVibrateWhenRinging()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVoiceControlOn()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    const-string v0, "voice_input_control_incomming_calls"

    .line 221
    .local v0, "VOICE_CMD_INCOMING_CALL":Ljava/lang/String;
    const-string v2, "voice_input_control_incomming_calls"

    invoke-static {v2, v4}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 222
    .local v1, "isVoiceControlOn":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceControlOn : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 223
    if-eqz v1, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 222
    goto :goto_0

    :cond_1
    move v3, v4

    .line 223
    goto :goto_1
.end method

.method public static isWiFiCallEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    sget-object v2, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    const-string v3, "wifi_call_enable"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/operator/usa/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 541
    .local v0, "isEnable":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWiFiCallEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 542
    return v0

    .end local v0    # "isEnable":Z
    :cond_0
    move v0, v1

    .line 540
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 619
    const-string v0, "InCallUISystemDB"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "always"    # Z

    .prologue
    .line 623
    const-string v0, "InCallUISystemDB"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 624
    return-void
.end method

.method public static resetTtyNotification()V
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getTtyNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->setTtyNotification(I)V

    .line 437
    :cond_0
    return-void
.end method

.method public static setInComingCallDisconnect(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 520
    const-string v0, "set_incomingcall_disconnect"

    .line 521
    .local v0, "DB_KEY_INCOMINGCALL_DISCONNECT":Ljava/lang/String;
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_incomingcall_disconnect"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toma.setInComingCallDisconnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 523
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setLabsEnhancedVoiceRecording(I)V
    .locals 3
    .param p0, "on"    # I

    .prologue
    .line 552
    const-string v0, "galaxylabs_enhanced_voice_recording"

    .line 553
    .local v0, "LABS_ENHANCED_VOICE_RECORDING":Ljava/lang/String;
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "galaxylabs_enhanced_voice_recording"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "galaxylabs setLabsEnhancedVoiceRecording : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 555
    return-void
.end method

.method public static setLabsFloatingMinimodePopup(I)V
    .locals 3
    .param p0, "on"    # I

    .prologue
    .line 564
    const-string v0, "galaxylabs_floating_minimode_popup"

    .line 565
    .local v0, "LABS_FLOATING_MINIMODE_POPUP":Ljava/lang/String;
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "galaxylabs_floating_minimode_popup"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "galaxylabs setLabsFloatingMinimodePopup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 567
    return-void
.end method

.method public static setMagnificationGestureEnable(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMagnificationGestureEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 499
    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {v0, p0}, Lcom/android/incallui/InCallUISystemDB;->setSecureSettingDB(Ljava/lang/String;I)V

    .line 500
    return-void
.end method

.method public static setPIPVisiblity(I)V
    .locals 3
    .param p0, "show"    # I

    .prologue
    .line 460
    const-string v0, "show_pip_visibility"

    .line 461
    .local v0, "SHOW_PIP_VISIBILITY":Ljava/lang/String;
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_pip_visibility"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPIPVisiblity() : show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 463
    return-void
.end method

.method public static setSecureSettingDB(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setSettingDB(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setSettingDB(Ljava/lang/String;II)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static setSettingDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setTtyNotification(I)V
    .locals 3
    .param p0, "show"    # I

    .prologue
    .line 440
    const-string v0, "show_tty_notification"

    .line 441
    .local v0, "SHOW_TTY_NOTIFICATION":Ljava/lang/String;
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_tty_notification"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTtyNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;Z)V

    .line 443
    return-void
.end method

.method public static setWideBandAMR(I)V
    .locals 3
    .param p0, "wb_amr"    # I

    .prologue
    .line 423
    const-string v0, "wb_amr_mode"

    .line 424
    .local v0, "DB_KEY_WB_AMR":Ljava/lang/String;
    sget-object v1, Lcom/android/incallui/InCallUISystemDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wb_amr_mode"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWideBandAMR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->log(Ljava/lang/String;)V

    .line 426
    return-void
.end method
