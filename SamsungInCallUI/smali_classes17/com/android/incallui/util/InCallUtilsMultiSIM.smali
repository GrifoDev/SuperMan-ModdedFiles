.class public Lcom/android/incallui/util/InCallUtilsMultiSIM;
.super Ljava/lang/Object;
.source "InCallUtilsMultiSIM.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InCallUtilsMultiSIM"

.field public static final NETWORK_COMBINATION_TYPE_CDMA_GSM:I = 0x1

.field public static final NETWORK_COMBINATION_TYPE_GSM_CDMA:I = 0x2

.field public static final NETWORK_COMBINATION_TYPE_GSM_GSM:I = 0x0

.field public static final SIM_ICON_TYPE_CALL_CARD:I = 0x1

.field public static final SIM_ICON_TYPE_CALL_CARD_LARGE:I = 0x4

.field public static final SIM_ICON_TYPE_CALL_SETTING:I = 0x64

.field public static final SIM_ICON_TYPE_EMERGENCY_DIALER_SCREEN_MULTISIM:I = 0x66

.field public static final SIM_ICON_TYPE_END_CALL_SCREEN_EASY_MODE:I = 0x15

.field public static final SIM_ICON_TYPE_END_CALL_SCREEN_NORMAL:I = 0x14

.field public static final SIM_ICON_TYPE_END_CALL_SCREEN_ONE_HAND_MODE:I = 0x16

.field public static final SIM_ICON_TYPE_MINI_CALL_SCREEN:I = 0x2

.field public static final SIM_ICON_TYPE_QUICK_PANEL:I = 0x3

.field public static final SIM_ICON_TYPE_SELECT_SIM_POPUP:I = 0x17

.field public static final SIM_ICON_TYPE_SIM_TAB_DURING_CALL:I = 0x0

.field public static final SIM_ICON_TYPE_SIM_TAB_MOBILE_NETWORK:I = 0x65

.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1

.field public static final SIM_SLOT_3:I = 0x2

.field private static sSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static sTelephonyManager:Landroid/telephony/TelephonyManager;

.field static simIconTypeCallCard:[I

.field static simIconTypeCallCardLarge:[I

.field static simIconTypeEndCallScreen:[I

.field static simIconTypeEndCallScreenOneHandMode:[I

.field static simIconTypeMiniCallScreen:[I

.field static simIconTypeQuickPanel:[I

.field static simIconTypeSimSelectPopupMode:[I

.field static simIconTypeSimTabDuringCall:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 294
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    .line 306
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    .line 318
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    .line 330
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    .line 342
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    .line 354
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    .line 366
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreenOneHandMode:[I

    .line 378
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    return-void

    .line 294
    nop

    :array_0
    .array-data 4
        0x7f02027a
        0x7f02027e
        0x7f020275
        0x7f02029d
        0x7f020293
        0x7f02028e
        0x7f020289
        0x7f020298
        0x7f020284
    .end array-data

    .line 306
    :array_1
    .array-data 4
        0x7f020087
        0x7f020088
        0x7f02008f
        0x7f02008d
        0x7f02008e
        0x7f020090
        0x7f02008a
        0x7f02008c
        0x7f02008b
    .end array-data

    .line 318
    :array_2
    .array-data 4
        0x7f02027b
        0x7f02027f
        0x7f020276
        0x7f02029e
        0x7f020294
        0x7f02028f
        0x7f02028a
        0x7f020299
        0x7f020285
    .end array-data

    .line 330
    :array_3
    .array-data 4
        0x7f020381
        0x7f020382
        0x7f020388
        0x7f020386
        0x7f020387
        0x7f020389
        0x7f020383
        0x7f020385
        0x7f020384
    .end array-data

    .line 342
    :array_4
    .array-data 4
        0x7f02027c
        0x7f020280
        0x7f020278
        0x7f0202a0
        0x7f020296
        0x7f020291
        0x7f02028c
        0x7f02029b
        0x7f020287
    .end array-data

    .line 354
    :array_5
    .array-data 4
        0x7f02013f
        0x7f020140
        0x7f020130
        0x7f020141
        0x7f020134
        0x7f020133
        0x7f020132
        0x7f020135
        0x7f020131
    .end array-data

    .line 366
    :array_6
    .array-data 4
        0x7f02013c
        0x7f02013d
        0x7f020136
        0x7f02013e
        0x7f02013a
        0x7f020139
        0x7f020138
        0x7f02013b
        0x7f020137
    .end array-data

    .line 378
    :array_7
    .array-data 4
        0x7f020282
        0x7f020283
        0x7f020277
        0x7f02029f
        0x7f020295
        0x7f020290
        0x7f02028b
        0x7f02029a
        0x7f020286
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static checkMultiSim()Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v8, -0x1

    const/16 v10, -0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 479
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 480
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->hasVirtualSim()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 481
    const-string v6, "InCallUtilsMultiSIM"

    const-string v7, "checkMultiSim(),  hasVirtualSim = true, not multiSim!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .local v3, "subId1":I
    .local v4, "subId2":I
    :cond_0
    :goto_0
    return v5

    .line 484
    .end local v3    # "subId1":I
    .end local v4    # "subId2":I
    :cond_1
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 485
    .restart local v3    # "subId1":I
    invoke-static {v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 486
    .restart local v4    # "subId2":I
    if-eq v3, v8, :cond_0

    if-eq v4, v8, :cond_0

    .line 489
    const/16 v0, -0x3e8

    .line 490
    .local v0, "cardStatus1":I
    const/16 v1, -0x3e8

    .line 492
    .local v1, "cardStatus2":I
    :try_start_0
    const-string v7, "gsm.sim.currentcardstatus"

    const/4 v8, 0x0

    const-string v9, "-1000"

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 493
    const-string v7, "gsm.sim.currentcardstatus"

    const/4 v8, 0x1

    const-string v9, "-1000"

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 498
    if-eq v0, v10, :cond_2

    if-eq v1, v10, :cond_2

    .line 499
    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    move v5, v6

    .line 501
    goto :goto_0

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "InCallUtilsMultiSIM"

    const-string v7, "NumberFormatException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v7

    if-ne v7, v11, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getActivatedSimNum()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 508
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v5, v6

    .line 509
    goto :goto_0
.end method

.method public static getActivatedSimNum()I
    .locals 2

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "retValue":I
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    add-int/lit8 v0, v0, 0x1

    .line 529
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 532
    :cond_1
    return v0
.end method

.method public static getCurrentNetworkPhoneId()I
    .locals 4

    .prologue
    .line 181
    const/4 v0, -0x1

    .line 182
    .local v0, "slotId":I
    const/4 v1, -0x1

    .line 183
    .local v1, "subId":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    .line 184
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 185
    .local v2, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 188
    :cond_0
    return v0
.end method

.method public static getDefaultDataSubscriptionId()I
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 166
    .local v0, "subId":I
    return v0
.end method

.method private static getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 81
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 82
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    :cond_0
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v1
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 174
    .local v0, "subId":I
    return v0
.end method

.method public static getInsertedSimCard()I
    .locals 5

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "returnValue":I
    const/4 v0, 0x0

    .line 466
    .local v0, "index":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneCount()I

    move-result v1

    .line 468
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 469
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    add-int/lit8 v2, v2, 0x1

    .line 468
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimCard: returnValue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 475
    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 536
    const-string v1, "0"

    .line 538
    .local v1, "icctype":Ljava/lang/String;
    :try_start_0
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, p0, v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_0
    :goto_0
    return-object v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "0"

    goto :goto_0
.end method

.method public static getMultiSimNumeric(I)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    .line 693
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, p0, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "SimNumeric":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimNumeric = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 695
    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getPhoneId(Lcom/android/incallui/Call;)I
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 613
    const/4 v1, -0x1

    .line 614
    .local v1, "phoneId":I
    if-nez p0, :cond_0

    .line 615
    const-string v4, "getPhoneId - call is null"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v1

    .line 642
    .end local v1    # "phoneId":I
    .local v2, "phoneId":I
    :goto_0
    return v2

    .line 619
    .end local v2    # "phoneId":I
    .restart local v1    # "phoneId":I
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 620
    const-string v4, "getPhoneId - Call does not have phoneId"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v1

    .line 621
    .end local v1    # "phoneId":I
    .restart local v2    # "phoneId":I
    goto :goto_0

    .line 624
    .end local v2    # "phoneId":I
    .restart local v1    # "phoneId":I
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v3

    .line 625
    .local v3, "subId":I
    invoke-static {v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSlotId(I)I

    move-result v1

    .line 626
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 627
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v4

    if-nez v4, :cond_4

    .line 628
    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "qcom_cross_mapping"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    const-string v4, "persist.radio.multisim.stackid"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "crossMapping":Ljava/lang/String;
    const-string v4, "1,0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 632
    const/4 v1, 0x1

    .line 635
    .end local v0    # "crossMapping":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneId, no sims, set phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 641
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneId phoneId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v1

    .line 642
    .end local v1    # "phoneId":I
    .restart local v2    # "phoneId":I
    goto :goto_0

    .line 637
    .end local v2    # "phoneId":I
    .restart local v1    # "phoneId":I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneId phoneId is not valid - phoneId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 638
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getPhoneType(Lcom/android/incallui/Call;)I
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 656
    const/4 v0, -0x1

    .line 657
    .local v0, "phoneType":I
    if-nez p0, :cond_0

    .line 658
    const-string v4, "getPhoneType - call is null"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v4, v0

    .line 676
    :goto_0
    return v4

    .line 662
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 663
    const-string v4, "getPhoneId - Call does not have phoneId"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 664
    const/4 v4, 0x0

    goto :goto_0

    .line 667
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v2

    .line 668
    .local v2, "subId":I
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSlotId(I)I

    move-result v1

    .line 669
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 670
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_2

    .line 671
    const/4 v0, 0x1

    .line 675
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneType phoneType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; slotId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v4, v0

    .line 676
    goto :goto_0

    .line 673
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_1
.end method

.method public static getSimIconIndex(I)I
    .locals 6
    .param p0, "simidx"    # I

    .prologue
    const/4 v5, 0x1

    .line 223
    const/4 v1, -0x1

    .line 225
    .local v1, "returnValue":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    move v2, v1

    .line 242
    .end local v1    # "returnValue":I
    .local v2, "returnValue":I
    :goto_0
    return v2

    .line 230
    .end local v2    # "returnValue":I
    .restart local v1    # "returnValue":I
    :cond_0
    if-ne p0, v5, :cond_3

    .line 231
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 237
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 238
    move v1, p0

    .line 241
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimIconIndex: simidx ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returnValue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v1

    .line 242
    .end local v1    # "returnValue":I
    .restart local v2    # "returnValue":I
    goto :goto_0

    .line 232
    .end local v2    # "returnValue":I
    .restart local v1    # "returnValue":I
    :cond_3
    if-nez p0, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public static getSimImage(II)I
    .locals 3
    .param p0, "simidx"    # I
    .param p1, "type"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "Image":I
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimIconIndex(I)I

    move-result v1

    .line 394
    .local v1, "nIndex":I
    if-nez p1, :cond_1

    .line 395
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    aget v0, v2, v1

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 397
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    aget v0, v2, v1

    goto :goto_0

    .line 398
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 399
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    aget v0, v2, v1

    goto :goto_0

    .line 400
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 401
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    aget v0, v2, v1

    goto :goto_0

    .line 402
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 403
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    aget v0, v2, v1

    goto :goto_0

    .line 404
    :cond_5
    const/16 v2, 0x14

    if-ne p1, v2, :cond_6

    .line 405
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    aget v0, v2, v1

    goto :goto_0

    .line 406
    :cond_6
    const/16 v2, 0x17

    if-ne p1, v2, :cond_7

    .line 407
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    aget v0, v2, v1

    goto :goto_0

    .line 408
    :cond_7
    const/16 v2, 0x16

    if-ne p1, v2, :cond_0

    .line 409
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreenOneHandMode:[I

    aget v0, v2, v1

    goto :goto_0
.end method

.method public static getSimName(I)Ljava/lang/String;
    .locals 6
    .param p0, "simidx"    # I

    .prologue
    .line 249
    const/4 v3, 0x0

    .line 253
    .local v3, "returnValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 254
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 255
    const-string v4, ""

    .line 280
    :goto_0
    return-object v4

    .line 258
    :cond_0
    const v4, 0x7f0901e4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "defaultSlot1Name":Ljava/lang/String;
    const v4, 0x7f0901e5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "defaultSlot2Name":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_5

    .line 262
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    const/4 v3, 0x0

    .line 272
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    :cond_3
    if-nez p0, :cond_6

    .line 274
    move-object v3, v1

    .line 279
    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimName: simidx ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returnValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move-object v4, v3

    .line 280
    goto :goto_0

    .line 263
    :cond_5
    if-nez p0, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 276
    :cond_6
    move-object v3, v2

    goto :goto_2
.end method

.method public static getSimState(I)I
    .locals 4
    .param p0, "simidx"    # I

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "simState":I
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 452
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 457
    return v0

    .line 455
    :cond_0
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->semGetSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method private static getSlotId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 114
    const/4 v0, -0x1

    .line 116
    .local v0, "slotId":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 117
    .local v1, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 122
    return v0
.end method

.method public static getSubId(Lcom/android/incallui/Call;)I
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, "subId":I
    if-nez p0, :cond_0

    .line 579
    const-string v2, "getSubId - call is null"

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v1, v0

    .line 597
    .end local v0    # "subId":I
    .local v1, "subId":I
    :goto_0
    return v1

    .line 583
    .end local v1    # "subId":I
    .restart local v0    # "subId":I
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    const-string v2, "getSubId - Call does not have subId"

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v1, v0

    .line 585
    .end local v0    # "subId":I
    .restart local v1    # "subId":I
    goto :goto_0

    .line 587
    .end local v1    # "subId":I
    .restart local v0    # "subId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 591
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isValidSubId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId subId is not valid - subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 593
    const/4 v0, -0x1

    .line 596
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v1, v0

    .line 597
    .end local v0    # "subId":I
    .restart local v1    # "subId":I
    goto :goto_0
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 3
    .param p0, "mPhoneId"    # I

    .prologue
    .line 141
    const/4 v0, -0x1

    .line 142
    .local v0, "subId":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 143
    .local v1, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 146
    :cond_0
    return v0
.end method

.method public static getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I
    .locals 6
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 601
    const/4 v2, -0x1

    .line 602
    .local v2, "subId":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 603
    .local v1, "context":Landroid/content/Context;
    const-string v5, "telecom"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 604
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v3, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 605
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 606
    invoke-static {v1}, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/TelephonyManagerWrapper;

    move-result-object v4

    .line 607
    .local v4, "tm":Lcom/android/incallui/wrapper/TelephonyManagerWrapper;
    invoke-virtual {v4, v0}, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v2

    .line 609
    .end local v4    # "tm":Lcom/android/incallui/wrapper/TelephonyManagerWrapper;
    :cond_0
    return v2
.end method

.method private static getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2

    .prologue
    .line 89
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 93
    :cond_0
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v1
.end method

.method private static getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 3
    .param p0, "slotIdx"    # I

    .prologue
    .line 97
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 98
    .local v1, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 100
    .local v0, "subId":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 102
    .end local v0    # "subId":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 702
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    .line 704
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 705
    aget-object v1, v2, p1

    .line 708
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 682
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 683
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 684
    const-string v1, ""

    .line 687
    .local v1, "voiceMailNumber":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voiceMailNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 688
    return-object v1

    .line 686
    .end local v1    # "voiceMailNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "voiceMailNumber":Ljava/lang/String;
    goto :goto_0
.end method

.method private static hasVirtualSim()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 754
    const/4 v1, 0x0

    .line 755
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 757
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_virtualsim"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 758
    const/4 v1, 0x1

    .line 760
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_virtualsim"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 761
    const/4 v1, 0x1

    .line 763
    :cond_1
    const-string v2, "InCallUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVirtualSim()  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return v1
.end method

.method public static isBoltSIM(I)Z
    .locals 5
    .param p0, "slot"    # I

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "isBoltSIM":Z
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "operatorNumeric":Ljava/lang/String;
    const-string v1, ""

    .line 715
    .local v1, "listNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    const/4 v0, 0x1

    .line 719
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBoltSIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 720
    return v0
.end method

.method public static isCMCCSIM(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "isCMCCSIM":Z
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v2, "46000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46007"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 727
    :cond_0
    const/4 v0, 0x1

    .line 728
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCMCCSIM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 729
    return v0
.end method

.method public static isCUSIM(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, "isCUSIM":Z
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v2, "46001"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46006"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46009"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45407"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    :cond_0
    const/4 v0, 0x1

    .line 737
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCUSIM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 738
    return v0
.end method

.method public static isNetworkRoaming(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 153
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 157
    .local v0, "isNWRoaming":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNWRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 158
    return v0

    .line 156
    .end local v0    # "isNWRoaming":Z
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .restart local v0    # "isNWRoaming":Z
    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 1
    .param p0, "slotidx"    # I

    .prologue
    .line 418
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 6
    .param p0, "simidx"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 429
    const/4 v1, 0x1

    .line 430
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 431
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 446
    :goto_0
    return v3

    .line 436
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 437
    const/4 v1, 0x0

    .line 441
    :cond_1
    if-ne v1, v2, :cond_4

    if-ne p0, v2, :cond_4

    .line 442
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    :cond_2
    :goto_1
    move v3, v1

    .line 446
    goto :goto_0

    :cond_3
    move v1, v3

    .line 442
    goto :goto_1

    .line 443
    :cond_4
    if-ne v1, v2, :cond_2

    if-nez p0, :cond_2

    .line 444
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public static isSimSubscriptionPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 6
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v4, 0x0

    .line 551
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 552
    .local v1, "context":Landroid/content/Context;
    const-string v5, "telecom"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 553
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-nez p0, :cond_0

    .line 564
    :goto_0
    return v4

    .line 556
    :cond_0
    invoke-virtual {v3, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 557
    .local v0, "account":Landroid/telecom/PhoneAccount;
    const/4 v2, 0x0

    .line 558
    .local v2, "isSimSubscription":Z
    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_1
    move v4, v2

    .line 564
    goto :goto_0

    :cond_2
    move v2, v4

    .line 560
    goto :goto_1
.end method

.method public static isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 568
    if-nez p0, :cond_0

    .line 569
    const-string v0, "isSimSubscriptionPhoneAccountHandle - call is null"

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 742
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidSubId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 746
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 750
    const-string v0, "InCallUtilsMultiSIM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void
.end method

.method public static setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 195
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 196
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    .line 197
    .local v1, "simSlot":I
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v2

    .line 198
    .local v2, "simState1":I
    invoke-static {v7}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v3

    .line 200
    .local v3, "simState2":I
    if-nez v1, :cond_3

    .line 201
    if-eq v2, v8, :cond_0

    if-ne v2, v9, :cond_1

    .line 202
    :cond_0
    const/4 v1, 0x1

    .line 209
    :cond_1
    :goto_0
    const-string v6, "telecom"

    .line 210
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    .line 211
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 214
    .local v4, "subscription":Landroid/telecom/PhoneAccountHandle;
    const-string v6, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    .end local v0    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v1    # "simSlot":I
    .end local v2    # "simState1":I
    .end local v3    # "simState2":I
    .end local v4    # "subscription":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    return-object p1

    .line 204
    .restart local v1    # "simSlot":I
    .restart local v2    # "simState1":I
    .restart local v3    # "simState2":I
    :cond_3
    if-ne v1, v7, :cond_1

    .line 205
    if-eq v3, v8, :cond_4

    if-ne v3, v9, :cond_1

    .line 206
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
