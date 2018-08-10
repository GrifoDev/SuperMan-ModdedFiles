.class public final Lcom/android/systemui/util/MultiSimMgrUtils;
.super Ljava/lang/Object;
.source "MultiSimMgrUtils.java"


# static fields
.field public static final DEBUG:Z

.field private static countryCode:Ljava/lang/String;

.field public static final is3G:Z

.field public static final isSupportChangeNetworkModeForSlotNoActiveSim:Z

.field public static final isTdscdma:Z

.field public static final mPhoneCount:I

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "phone1_on"

    aput-object v3, v2, v0

    const-string/jumbo v3, "phone2_on"

    aput-object v3, v2, v1

    const-string/jumbo v3, "phone3_on"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "phone4_on"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "phone5_on"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sput-object v2, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneOnKey:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneCount:I

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->DEBUG:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getCSCSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CountryISO"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    const-string/jumbo v0, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "salesCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", countryCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v2, "unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "3g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_2
    sput-boolean v1, Lcom/android/systemui/util/MultiSimMgrUtils;->is3G:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_VoiceCall_ConfigOpStyleForNetworkSetting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SupportChangeNetworkModeForSlotNoActiveSim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportChangeNetworkModeForSlotNoActiveSim:Z

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportTdscdma()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/MultiSimMgrUtils;->isTdscdma:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCall()Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {v6}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {v5}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Check Call SIM1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", SIM2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_0

    if-ne v0, v7, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eq v1, v5, :cond_0

    if-eq v1, v7, :cond_0

    return v6
.end method

.method public static checkSimCoverage(II)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "ril.ICC_TYPE"

    const-string/jumbo v2, "0"

    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const-string/jumbo v1, "MultiSimMgrUtils"

    const-string/jumbo v2, "changed sim only support GSM only!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    return v4
.end method

.method private static getCSCSalesCode()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDataEnabled()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDataEnabled subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    :goto_0
    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDataEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static getIccId(I)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "0"

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getMultiSimNumeric(I)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, "0"

    :try_start_0
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is getMultiSimNumeric : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getOperatorByIccId(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x6

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x6

    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    const-string/jumbo v3, "MultiSimMgrUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is getOperatorByIccId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "MultiSimMgrUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IndexOutOfBoundsException getOperatorByIccId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPreferredNetworkType(I)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ForceLteOnlyForPsOnlyOperatorAfterRebootComplete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "XSE"

    sget-object v2, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "XID"

    sget-object v2, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "salescode XID or XSE: getPreferredNetworkType: operator= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "51009"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "51028"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0xb

    return v1

    :cond_2
    sget-boolean v1, Lcom/android/systemui/util/MultiSimMgrUtils;->is3G:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isLTESupportSim(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    sget-boolean v1, Lcom/android/systemui/util/MultiSimMgrUtils;->isTdscdma:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x14

    return v1

    :cond_6
    const/16 v1, 0x9

    return v1
.end method

.method public static getSlaveNetworkMode(I)I
    .locals 4

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportWcdmaInSlave"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCmodel()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v3, "Support slave slot GSM_ONLY 2017 CMCC concept"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v3, "Support slave slot WCDMA_CHN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v3, "Support slave slot WCDMA_COMMON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v3, "Not support slave slot WCDMA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSubId(I)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget v1, v0, v2

    return v1

    :cond_0
    const-string/jumbo v1, "MultiSimMgrUtils"

    const-string/jumbo v2, "getSubId: no valid subs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public static getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v3, :cond_0

    aget v5, v3, v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    :cond_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-ltz v0, :cond_1

    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget-object v5, v4, v0

    if-eqz v5, :cond_1

    aget-object v2, v4, v0

    :cond_1
    if-nez v2, :cond_2

    :goto_0
    return-object p2

    :cond_2
    move-object p2, v2

    goto :goto_0
.end method

.method public static isCMCCcardinserted(I)Z
    .locals 5

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getOperatorByIccId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "898600"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "898602"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "898604"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "898607"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "898608"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "46000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "46002"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "46004"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "46007"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "46008"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isCMCCcardinserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isCMCCmodel()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CHM"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCTCModel()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CTC"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCTCcardinserted(I)Z
    .locals 5

    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getOperatorByIccId(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "898603"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "898605"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "898611"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "898530"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isCTCcardinserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static isCUcardinserted(I)Z
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/util/MultiSimMgrUtils;->getOperatorByIccId(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "898601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "898606"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isCUcardinserted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isChinaModel()Z
    .locals 2

    const-string/jumbo v0, "CN"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnabledSim(Landroid/content/Context;I)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/util/MultiSimMgrUtils;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isHKTWModel()Z
    .locals 2

    const-string/jumbo v0, "TW"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HK"

    sget-object v1, Lcom/android/systemui/util/MultiSimMgrUtils;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isImsNonDDS()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_SupportDualLteSingleIms"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DSDS_SI"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DSDS_DI"

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "MultiSimMgrUtils"

    const-string/jumbo v1, "4G+4G mode available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isLTESupportSim(I)Z
    .locals 2

    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string/jumbo v1, "0"

    invoke-static {v0, p0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string/jumbo v1, "0"

    invoke-static {v0, p0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ril.IsCSIM"

    const-string/jumbo v1, "0"

    invoke-static {v0, p0, v1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultisimModel()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuport75Mode()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSuport75Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportCrossMapping()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportTdscdma()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SupportTdsCdma"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.ril.radiocapa.tdscdma"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public static isSupportWcdmaFddLte()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportWcdmaFddLte"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "MultiSimMgrUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportWcdmaFddLte:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static restrictNetworkModeChange(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isHKTWModel()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "phone1_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "phone2_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCmodel()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isSupportWcdmaFddLte()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v5}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_1
    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v5}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCMCCcardinserted(I)Z

    move-result v2

    :goto_2
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v3, "CMCC+CU card OR CMCC+CTC card is not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCUcardinserted(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v5}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCUcardinserted(I)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_6
    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v3, "CMCC B-type, CU card is not changed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_8

    return v5

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v4, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v5}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_a

    :cond_9
    if-eqz v1, :cond_b

    invoke-static {v5}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v3}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCcardinserted(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    :cond_a
    const-string/jumbo v2, "MultiSimMgrUtils"

    const-string/jumbo v4, "One of slot CTC card!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b
    return v3
.end method

.method public static selectNetworkModeByMTK()Z
    .locals 4

    const-string/jumbo v2, "Mojito"

    const-string/jumbo v3, "Strawberry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_WCDMA_INSLAVE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDefualtDataSlot(Landroid/content/Context;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->isCTCModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefualtDataSlot(CTC):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_data"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->getDataEnabled()Z

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefualtDataSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DataSubscriptionId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :goto_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    const-string/jumbo v2, "MultiSimMgrUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefualtDataSlot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DataSubscriptionId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1
.end method
