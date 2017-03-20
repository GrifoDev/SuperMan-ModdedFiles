.class public Lcom/android/incallui/util/InCallUtilsMultiSIM;
.super Ljava/lang/Object;
.source "InCallUtilsMultiSIM.java"


# static fields
.field private static final CLASS_PATH:Ljava/lang/String; = "android.telephony.SubscriptionManager"

.field private static final LOG_TAG:Ljava/lang/String; = "InCallUtilsMultiSIM"

.field public static final NETWORK_COMBINATION_TYPE_CDMA_GSM:I = 0x1

.field public static final NETWORK_COMBINATION_TYPE_GSM_CDMA:I = 0x2

.field public static final NETWORK_COMBINATION_TYPE_GSM_GSM:I = 0x0

.field private static final PHONEID_METHORD:Ljava/lang/String; = "getPhoneId"

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

.field private static baseClass:Ljava/lang/Class;

.field private static sGetPhoneId:Ljava/lang/reflect/Method;

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
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->baseClass:Ljava/lang/Class;

    .line 86
    const-string v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->baseClass:Ljava/lang/Class;

    .line 87
    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->baseClass:Ljava/lang/Class;

    const-string v1, "getPhoneId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sGetPhoneId:Ljava/lang/reflect/Method;

    .line 309
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    .line 321
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    .line 333
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    .line 345
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    .line 357
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    .line 369
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    .line 381
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreenOneHandMode:[I

    .line 393
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    return-void

    .line 309
    :array_0
    .array-data 4
        0x7f020279
        0x7f02027d
        0x7f020274
        0x7f02029c
        0x7f020292
        0x7f02028d
        0x7f020288
        0x7f020297
        0x7f020283
    .end array-data

    .line 321
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

    .line 333
    :array_2
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

    .line 345
    :array_3
    .array-data 4
        0x7f020380
        0x7f020381
        0x7f020387
        0x7f020385
        0x7f020386
        0x7f020388
        0x7f020382
        0x7f020384
        0x7f020383
    .end array-data

    .line 357
    :array_4
    .array-data 4
        0x7f02027b
        0x7f02027f
        0x7f020277
        0x7f02029f
        0x7f020295
        0x7f020290
        0x7f02028b
        0x7f02029a
        0x7f020286
    .end array-data

    .line 369
    :array_5
    .array-data 4
        0x7f02013d
        0x7f02013e
        0x7f02012e
        0x7f02013f
        0x7f020132
        0x7f020131
        0x7f020130
        0x7f020133
        0x7f02012f
    .end array-data

    .line 381
    :array_6
    .array-data 4
        0x7f02013a
        0x7f02013b
        0x7f020134
        0x7f02013c
        0x7f020138
        0x7f020137
        0x7f020136
        0x7f020139
        0x7f020135
    .end array-data

    .line 393
    :array_7
    .array-data 4
        0x7f020281
        0x7f020282
        0x7f020276
        0x7f02029e
        0x7f020294
        0x7f02028f
        0x7f02028a
        0x7f020299
        0x7f020285
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
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

    .line 494
    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 495
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->hasVirtualSim()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 496
    const-string v6, "InCallUtilsMultiSIM"

    const-string v7, "checkMultiSim(),  hasVirtualSim = true, not multiSim!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .local v3, "subId1":I
    .local v4, "subId2":I
    :cond_0
    :goto_0
    return v5

    .line 499
    .end local v3    # "subId1":I
    .end local v4    # "subId2":I
    :cond_1
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 500
    .restart local v3    # "subId1":I
    invoke-static {v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 501
    .restart local v4    # "subId2":I
    if-eq v3, v8, :cond_0

    if-eq v4, v8, :cond_0

    .line 504
    const/16 v0, -0x3e8

    .line 505
    .local v0, "cardStatus1":I
    const/16 v1, -0x3e8

    .line 507
    .local v1, "cardStatus2":I
    :try_start_0
    const-string v7, "gsm.sim.currentcardstatus"

    const/4 v8, 0x0

    const-string v9, "-1000"

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    const-string v7, "gsm.sim.currentcardstatus"

    const/4 v8, 0x1

    const-string v9, "-1000"

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 513
    if-eq v0, v10, :cond_2

    if-eq v1, v10, :cond_2

    .line 514
    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    move v5, v6

    .line 516
    goto :goto_0

    .line 509
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "InCallUtilsMultiSIM"

    const-string v7, "NumberFormatException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v7

    if-ne v7, v11, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getActivatedSimNum()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 523
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v5, v6

    .line 524
    goto :goto_0
.end method

.method public static getActivatedSimNum()I
    .locals 2

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "retValue":I
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    add-int/lit8 v0, v0, 0x1

    .line 544
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    add-int/lit8 v0, v0, 0x1

    .line 547
    :cond_1
    return v0
.end method

.method public static getCurrentNetworkPhoneId()I
    .locals 4

    .prologue
    .line 196
    const/4 v0, -0x1

    .line 197
    .local v0, "slotId":I
    const/4 v1, -0x1

    .line 198
    .local v1, "subId":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    .line 199
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 200
    .local v2, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 203
    :cond_0
    return v0
.end method

.method public static getDefaultDataSubscriptionId()I
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 181
    .local v0, "subId":I
    return v0
.end method

.method private static getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 93
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 94
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    :cond_0
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v1
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 189
    .local v0, "subId":I
    return v0
.end method

.method public static getInsertedSimCard()I
    .locals 5

    .prologue
    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, "returnValue":I
    const/4 v0, 0x0

    .line 481
    .local v0, "index":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneCount()I

    move-result v1

    .line 483
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 484
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    add-int/lit8 v2, v2, 0x1

    .line 483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
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

    .line 490
    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    .line 551
    const-string v1, "0"

    .line 553
    .local v1, "icctype":Ljava/lang/String;
    :try_start_0
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, p0, v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_0
    :goto_0
    return-object v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "0"

    goto :goto_0
.end method

.method public static getMultiSimNumeric(I)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    .line 703
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, p0, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
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

    .line 705
    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    .line 122
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
    .line 623
    const/4 v1, -0x1

    .line 624
    .local v1, "phoneId":I
    if-nez p0, :cond_0

    .line 625
    const-string v4, "getPhoneId - call is null"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v1

    .line 652
    .end local v1    # "phoneId":I
    .local v2, "phoneId":I
    :goto_0
    return v2

    .line 629
    .end local v2    # "phoneId":I
    .restart local v1    # "phoneId":I
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 630
    const-string v4, "getPhoneId - Call does not have phoneId"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v1

    .line 631
    .end local v1    # "phoneId":I
    .restart local v2    # "phoneId":I
    goto :goto_0

    .line 634
    .end local v2    # "phoneId":I
    .restart local v1    # "phoneId":I
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v3

    .line 635
    .local v3, "subId":I
    invoke-static {v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSlotId(I)I

    move-result v1

    .line 636
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 637
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v4

    if-nez v4, :cond_4

    .line 638
    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "qcom_cross_mapping"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 640
    const-string v4, "persist.radio.multisim.stackid"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "crossMapping":Ljava/lang/String;
    const-string v4, "1,0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    const/4 v1, 0x1

    .line 645
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

    .line 651
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

    .line 652
    .end local v1    # "phoneId":I
    .restart local v2    # "phoneId":I
    goto :goto_0

    .line 647
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

    .line 648
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getPhoneType(Lcom/android/incallui/Call;)I
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 666
    const/4 v0, -0x1

    .line 667
    .local v0, "phoneType":I
    if-nez p0, :cond_0

    .line 668
    const-string v4, "getPhoneType - call is null"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v4, v0

    .line 686
    :goto_0
    return v4

    .line 672
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 673
    const-string v4, "getPhoneId - Call does not have phoneId"

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 674
    const/4 v4, 0x0

    goto :goto_0

    .line 677
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v2

    .line 678
    .local v2, "subId":I
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSlotId(I)I

    move-result v1

    .line 679
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 680
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_2

    .line 681
    const/4 v0, 0x1

    .line 685
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

    .line 686
    goto :goto_0

    .line 683
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

    .line 238
    const/4 v1, -0x1

    .line 240
    .local v1, "returnValue":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    move v2, v1

    .line 257
    .end local v1    # "returnValue":I
    .local v2, "returnValue":I
    :goto_0
    return v2

    .line 245
    .end local v2    # "returnValue":I
    .restart local v1    # "returnValue":I
    :cond_0
    if-ne p0, v5, :cond_3

    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 252
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 253
    move v1, p0

    .line 256
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

    .line 257
    .end local v1    # "returnValue":I
    .restart local v2    # "returnValue":I
    goto :goto_0

    .line 247
    .end local v2    # "returnValue":I
    .restart local v1    # "returnValue":I
    :cond_3
    if-nez p0, :cond_1

    .line 248
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
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "Image":I
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimIconIndex(I)I

    move-result v1

    .line 409
    .local v1, "nIndex":I
    if-nez p1, :cond_1

    .line 410
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    aget v0, v2, v1

    .line 426
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 412
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    aget v0, v2, v1

    goto :goto_0

    .line 413
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 414
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    aget v0, v2, v1

    goto :goto_0

    .line 415
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 416
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    aget v0, v2, v1

    goto :goto_0

    .line 417
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 418
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    aget v0, v2, v1

    goto :goto_0

    .line 419
    :cond_5
    const/16 v2, 0x14

    if-ne p1, v2, :cond_6

    .line 420
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    aget v0, v2, v1

    goto :goto_0

    .line 421
    :cond_6
    const/16 v2, 0x17

    if-ne p1, v2, :cond_7

    .line 422
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    aget v0, v2, v1

    goto :goto_0

    .line 423
    :cond_7
    const/16 v2, 0x16

    if-ne p1, v2, :cond_0

    .line 424
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreenOneHandMode:[I

    aget v0, v2, v1

    goto :goto_0
.end method

.method public static getSimName(I)Ljava/lang/String;
    .locals 6
    .param p0, "simidx"    # I

    .prologue
    .line 264
    const/4 v3, 0x0

    .line 268
    .local v3, "returnValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 270
    const-string v4, ""

    .line 295
    :goto_0
    return-object v4

    .line 273
    :cond_0
    const v4, 0x7f0901e9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "defaultSlot1Name":Ljava/lang/String;
    const v4, 0x7f0901ea

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "defaultSlot2Name":Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_5

    .line 277
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    const/4 v3, 0x0

    .line 287
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 288
    :cond_3
    if-nez p0, :cond_6

    .line 289
    move-object v3, v1

    .line 294
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

    .line 295
    goto :goto_0

    .line 278
    :cond_5
    if-nez p0, :cond_1

    .line 279
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 291
    :cond_6
    move-object v3, v2

    goto :goto_2
.end method

.method public static getSimState(I)I
    .locals 4
    .param p0, "simidx"    # I

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "simState":I
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 467
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 471
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

    .line 472
    return v0

    .line 470
    :cond_0
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->semGetSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method private static getSlotId(I)I
    .locals 7
    .param p0, "subId"    # I

    .prologue
    .line 126
    const/4 v1, -0x1

    .line 129
    .local v1, "slotId":I
    :try_start_0
    sget-object v2, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sGetPhoneId:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    const-string v2, "InCallUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success sGetPhoneId, Match : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :goto_0
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

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 137
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v2, "InCallUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getPeripheralMinorClass invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InCallUtilsMultiSIM"

    const-string v3, "Exception occurred, invoking reflection is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static getSubId(Lcom/android/incallui/Call;)I
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 592
    const/4 v0, -0x1

    .line 593
    .local v0, "subId":I
    if-nez p0, :cond_0

    .line 594
    const-string v2, "getSubId - call is null"

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v1, v0

    .line 607
    .end local v0    # "subId":I
    .local v1, "subId":I
    :goto_0
    return v1

    .line 598
    .end local v1    # "subId":I
    .restart local v0    # "subId":I
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 599
    const-string v2, "getSubId - Call does not have subId"

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v1, v0

    .line 600
    .end local v0    # "subId":I
    .restart local v1    # "subId":I
    goto :goto_0

    .line 602
    .end local v1    # "subId":I
    .restart local v0    # "subId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 603
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    .line 606
    :cond_2
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

    .line 607
    .end local v0    # "subId":I
    .restart local v1    # "subId":I
    goto :goto_0
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 3
    .param p0, "mPhoneId"    # I

    .prologue
    .line 156
    const/4 v0, -0x1

    .line 157
    .local v0, "subId":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 158
    .local v1, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 161
    :cond_0
    return v0
.end method

.method public static getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I
    .locals 6
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 611
    const/4 v2, -0x1

    .line 612
    .local v2, "subId":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 613
    .local v1, "context":Landroid/content/Context;
    const-string v5, "telecom"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 614
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v3, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 615
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 616
    invoke-static {v1}, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/TelephonyManagerWrapper;

    move-result-object v4

    .line 617
    .local v4, "tm":Lcom/android/incallui/wrapper/TelephonyManagerWrapper;
    invoke-virtual {v4, v0}, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v2

    .line 619
    .end local v4    # "tm":Lcom/android/incallui/wrapper/TelephonyManagerWrapper;
    :cond_0
    return v2
.end method

.method private static getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2

    .prologue
    .line 101
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 105
    :cond_0
    sget-object v1, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v1
.end method

.method private static getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 3
    .param p0, "slotIdx"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 110
    .local v1, "subscriptionInfos":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 112
    .local v0, "subId":I
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 114
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
    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 712
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    .line 714
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 715
    aget-object v1, v2, p1

    .line 718
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
    .line 692
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 693
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 694
    const-string v1, ""

    .line 697
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

    .line 698
    return-object v1

    .line 696
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

    .line 779
    const/4 v1, 0x0

    .line 780
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 782
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_virtualsim"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 783
    const/4 v1, 0x1

    .line 785
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_virtualsim"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 786
    const/4 v1, 0x1

    .line 788
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

    .line 789
    return v1
.end method

.method public static isBoltSIM(I)Z
    .locals 5
    .param p0, "slot"    # I

    .prologue
    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "isBoltSIM":Z
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "operatorNumeric":Ljava/lang/String;
    const-string v1, ""

    .line 725
    .local v1, "listNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 726
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

    .line 727
    const/4 v0, 0x1

    .line 729
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

    .line 730
    return v0
.end method

.method public static isCMCCSIM(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "isCMCCSIM":Z
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 736
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

    .line 737
    :cond_0
    const/4 v0, 0x1

    .line 738
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

    .line 739
    return v0
.end method

.method public static isCUSIM(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "isCUSIM":Z
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 745
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

    .line 746
    :cond_0
    const/4 v0, 0x1

    .line 747
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

    .line 748
    return v0
.end method

.method public static isNetworkRoaming(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 167
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 168
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 172
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

    .line 173
    return v0

    .line 171
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
    .line 433
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 436
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

    .line 444
    const/4 v1, 0x1

    .line 445
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 446
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 461
    :goto_0
    return v3

    .line 451
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 452
    const/4 v1, 0x0

    .line 456
    :cond_1
    if-ne v1, v2, :cond_4

    if-ne p0, v2, :cond_4

    .line 457
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

    .line 461
    goto :goto_0

    :cond_3
    move v1, v3

    .line 457
    goto :goto_1

    .line 458
    :cond_4
    if-ne v1, v2, :cond_2

    if-nez p0, :cond_2

    .line 459
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

    .line 566
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 567
    .local v1, "context":Landroid/content/Context;
    const-string v5, "telecom"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 568
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-nez p0, :cond_0

    .line 579
    :goto_0
    return v4

    .line 571
    :cond_0
    invoke-virtual {v3, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 572
    .local v0, "account":Landroid/telecom/PhoneAccount;
    const/4 v2, 0x0

    .line 573
    .local v2, "isSimSubscription":Z
    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_1
    move v4, v2

    .line 579
    goto :goto_0

    :cond_2
    move v2, v4

    .line 575
    goto :goto_1
.end method

.method public static isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 583
    if-nez p0, :cond_0

    .line 584
    const-string v0, "isSimSubscriptionPhoneAccountHandle - call is null"

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x0

    .line 588
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
    .line 752
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

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 757
    const-string v0, "InCallUtilsMultiSIM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void
.end method

.method public static needToShowSwapButton()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 761
    const-string v5, "feature_hktw"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 775
    .local v0, "activeCall":Lcom/android/incallui/Call;
    .local v2, "bgCall":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    return v4

    .line 764
    .end local v0    # "activeCall":Lcom/android/incallui/Call;
    .end local v2    # "bgCall":Lcom/android/incallui/Call;
    :cond_1
    const-string v5, "InCallUtilsMultiSIM"

    const-string v6, "needToShowSwapButton"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 766
    .restart local v0    # "activeCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 767
    .restart local v2    # "bgCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 768
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    .line 769
    .local v1, "activePhoneId":I
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v3

    .line 770
    .local v3, "bgPhoneId":I
    const-string v5, "InCallUtilsMultiSIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activePhoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bgPhoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-eq v1, v3, :cond_0

    .line 772
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 210
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 211
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    .line 212
    .local v1, "simSlot":I
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v2

    .line 213
    .local v2, "simState1":I
    invoke-static {v7}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v3

    .line 215
    .local v3, "simState2":I
    if-nez v1, :cond_3

    .line 216
    if-eq v2, v8, :cond_0

    if-ne v2, v9, :cond_1

    .line 217
    :cond_0
    const/4 v1, 0x1

    .line 224
    :cond_1
    :goto_0
    const-string v6, "telecom"

    .line 225
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    .line 226
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 229
    .local v4, "subscription":Landroid/telecom/PhoneAccountHandle;
    const-string v6, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 231
    .end local v0    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v1    # "simSlot":I
    .end local v2    # "simState1":I
    .end local v3    # "simState2":I
    .end local v4    # "subscription":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    return-object p1

    .line 219
    .restart local v1    # "simSlot":I
    .restart local v2    # "simState1":I
    .restart local v3    # "simState2":I
    :cond_3
    if-ne v1, v7, :cond_1

    .line 220
    if-eq v3, v8, :cond_4

    if-ne v3, v9, :cond_1

    .line 221
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
