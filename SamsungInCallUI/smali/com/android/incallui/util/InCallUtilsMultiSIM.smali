.class public Lcom/android/incallui/util/InCallUtilsMultiSIM;
.super Ljava/lang/Object;


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

.field public static final SIM_ICON_TYPE_END_CALL_SCREEN_VOWIFI:I = 0x18

.field public static final SIM_ICON_TYPE_MINI_CALL_SCREEN:I = 0x2

.field public static final SIM_ICON_TYPE_QUICK_PANEL:I = 0x3

.field public static final SIM_ICON_TYPE_SELECT_SIM_POPUP:I = 0x17

.field public static final SIM_ICON_TYPE_SIM_TAB_DURING_CALL:I = 0x0

.field public static final SIM_ICON_TYPE_SIM_TAB_MOBILE_NETWORK:I = 0x65

.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1

.field public static final SIM_SLOT_3:I = 0x2

.field public static final SOFT_SIM_STATUS_PROPERTY:Ljava/lang/String; = "persist.sys.softsim.status"

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

.field static simIconTypeVoWifiCall:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x9

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->baseClass:Ljava/lang/Class;

    const-string v0, "android.telephony.SubscriptionManager"

    invoke-static {v0}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->baseClass:Ljava/lang/Class;

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

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreenOneHandMode:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeVoWifiCall:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020301
        0x7f020305
        0x7f0202fc
        0x7f020324
        0x7f02031a
        0x7f020315
        0x7f020310
        0x7f02031f
        0x7f02030b
    .end array-data

    :array_1
    .array-data 4
        0x7f020096
        0x7f020097
        0x7f02009e
        0x7f02009c
        0x7f02009d
        0x7f02009f
        0x7f020099
        0x7f02009b
        0x7f02009a
    .end array-data

    :array_2
    .array-data 4
        0x7f020302
        0x7f020306
        0x7f0202fd
        0x7f020325
        0x7f02031b
        0x7f020316
        0x7f020311
        0x7f020320
        0x7f02030c
    .end array-data

    :array_3
    .array-data 4
        0x7f0200a5
        0x7f0200a7
        0x7f0200ab
        0x7f0200b7
        0x7f0200b3
        0x7f0200b1
        0x7f0200af
        0x7f0200b5
        0x7f0200ad
    .end array-data

    :array_4
    .array-data 4
        0x7f020303
        0x7f020307
        0x7f0202ff
        0x7f020327
        0x7f02031d
        0x7f020318
        0x7f020313
        0x7f020322
        0x7f02030e
    .end array-data

    :array_5
    .array-data 4
        0x7f0201b2
        0x7f0201b3
        0x7f0201a3
        0x7f0201b4
        0x7f0201a7
        0x7f0201a6
        0x7f0201a5
        0x7f0201a8
        0x7f0201a4
    .end array-data

    :array_6
    .array-data 4
        0x7f0201af
        0x7f0201b0
        0x7f0201a9
        0x7f0201b1
        0x7f0201ad
        0x7f0201ac
        0x7f0201ab
        0x7f0201ae
        0x7f0201aa
    .end array-data

    :array_7
    .array-data 4
        0x7f020309
        0x7f02030a
        0x7f0202fe
        0x7f020326
        0x7f02031c
        0x7f020317
        0x7f020312
        0x7f020321
        0x7f02030d
    .end array-data

    :array_8
    .array-data 4
        0x7f020135
        0x7f020136
        0x7f020134
        0x7f02013c
        0x7f02013a
        0x7f020139
        0x7f020138
        0x7f02013b
        0x7f020137
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMultiSim()Z
    .locals 8

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/16 v6, -0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->hasVirtualSim()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, "checkMultiSim(),  hasVirtualSim = true, not multiSim!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v2

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v3

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    :try_start_0
    const-string v2, "gsm.sim.currentcardstatus"

    const/4 v3, 0x0

    const-string v4, "-1000"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "gsm.sim.currentcardstatus"

    const/4 v4, 0x1

    const-string v5, "-1000"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v2, v6, :cond_2

    if-eq v3, v6, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, "NumberFormatException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getActivatedSimNum()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getActivatedSimNum()I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public static getCurrentNetworkPhoneId()I
    .locals 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getDefaultDataSlotId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultDataSubscriptionId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method private static getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getInsertedSimCard()I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInsertedSimCard: returnValue ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    :try_start_0
    const-string v0, "ril.ICC_TYPE"

    const-string v1, "0"

    invoke-static {v0, p0, v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "0"

    goto :goto_0
.end method

.method public static getMultiSimNumeric(I)Ljava/lang/String;
    .locals 3

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    return-object v0
.end method

.method public static getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneCount()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getPhoneId(Lcom/android/incallui/Call;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string v1, "getPhoneId - call is null"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "getPhoneId - Call does not have phoneId"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSlotId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "qcom_cross_mapping"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "persist.radio.multisim.stackid"

    const-string v3, "NONE"

    invoke-static {v1, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1,0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId, no sims, set phoneId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId phoneId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " subId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneId phoneId is not valid - phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static getPhoneType(Lcom/android/incallui/Call;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string v1, "getPhoneType - call is null"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getPhoneId - Call does not have phoneId"

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSlotId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneType phoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_1
.end method

.method public static getSimCountryIso(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimIconIndex(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne p0, v2, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimIconIndex: simidx ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returnValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez p0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "select_icon_1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static getSimImage(II)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimIconIndex(I)I

    move-result v1

    if-nez p1, :cond_1

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    aget v0, v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_5
    const/16 v2, 0x14

    if-ne p1, v2, :cond_6

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_6
    const/16 v2, 0x17

    if-ne p1, v2, :cond_7

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_7
    const/16 v2, 0x16

    if-ne p1, v2, :cond_8

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeEndCallScreenOneHandMode:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_8
    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->simIconTypeVoWifiCall:[I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getSimName(I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const v2, 0x7f090248

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090249

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-ne p0, v4, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_name_2"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-nez p0, :cond_5

    move-object v0, v2

    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimName: simidx ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returnValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p0, :cond_6

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "select_name_1"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public static getSimState(I)I
    .locals 3

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->semGetSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method private static getSlotId(I)I
    .locals 6

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sGetPhoneId:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v0, "InCallUtilsMultiSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success sGetPhoneId, Match : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotId("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "InCallUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getPeripheralMinorClass invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "InCallUtilsMultiSIM"

    const-string v2, "Exception occurred, invoking reflection is failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static getSubId(Lcom/android/incallui/Call;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string v1, "getSubId - call is null"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "getSubId - Call does not have subId"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubId subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 2

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getSubscriptionIdForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)I
    .locals 4

    const/4 v1, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "telecom"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/TelephonyManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/wrapper/TelephonyManagerWrapper;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 1

    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    :cond_0
    sget-object v0, Lcom/android/incallui/util/InCallUtilsMultiSIM;->sSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method private static getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-ltz p1, :cond_0

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget-object v2, v1, p1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v0, v1, p1

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voiceMailNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasVirtualSim()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSoftsimEnable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSoftsimEnable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const-string v0, "InCallUtilsMultiSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasVirtualSim()  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static isBoltSIM(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBoltSIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static isCMCCSIM(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

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

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCMCCSIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static isCTCSIM(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "46003"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46005"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46012"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCTCSIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static isCUSIM(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

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

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCUSIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static isNetworkRoaming(I)Z
    .locals 3

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNWRoaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    :goto_1
    if-ne v2, v0, :cond_3

    if-ne p0, v0, :cond_3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_1
    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    if-ne v2, v0, :cond_4

    if-nez p0, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_1
.end method

.method public static isSimSubscriptionPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "telecom"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static isSimSubscriptionPhoneAccountHandle(Lcom/android/incallui/Call;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "isSimSubscriptionPhoneAccountHandle - call is null"

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isSimSubscriptionPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSoftsimEnable(I)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    const-string v1, "persist.sys.softsim.status"

    const-string v2, ""

    invoke-static {v1, p0, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "activating"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v2, "InCallUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSoftsimEnable :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",softsimStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isValidPhoneId(I)Z
    .locals 1

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

    const-string v0, "InCallUtilsMultiSIM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static needToShowSwapButton()Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, "needToShowSwapButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v2

    const-string v3, "InCallUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activePhoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bgPhoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setAvailablePhoneAccountHandle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v3

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v4

    if-nez v0, :cond_2

    if-eq v3, v5, :cond_0

    if-ne v3, v6, :cond_5

    :cond_0
    :goto_0
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    if-ltz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    :goto_1
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object p1

    :cond_2
    if-ne v0, v1, :cond_5

    if-eq v4, v5, :cond_3

    if-ne v4, v6, :cond_5

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public static shouldPreventCallForPsOnlySim(I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "InCallUtilsMultiSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CheckPreventCallForPsOnlySim simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "disable_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, "DISABLE_CALL not enable "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, " Not Ps Only Sim "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, " Do not Prevent roaming call  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, " isAvailablePSVT so Can make video call "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoLTE(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "InCallUtilsMultiSIM"

    const-string v2, " isAvailableVoLTE so Can make Voice call "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
