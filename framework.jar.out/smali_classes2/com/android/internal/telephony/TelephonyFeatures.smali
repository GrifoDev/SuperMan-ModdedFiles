.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field public static final IS_PHONE:Z

.field static final LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field public static final MULTI_SIM_CONFIG:Ljava/lang/String;

.field private static final NTCTYPE_COUNTRY:I = 0x3

.field private static final NTCTYPE_MAINOPERATOR:I = 0x0

.field private static final NTCTYPE_OPERATORTYPE:I = 0x2

.field private static final NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING:I = 0xd

.field public static final NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x4

.field public static final NTC_FEATURE_ENABLE_CMCC_VOLTE:I = 0xc

.field public static final NTC_FEATURE_ERI_ON_AP:I = 0x7

.field public static final NTC_FEATURE_ERI_ON_CP:I = 0x6

.field public static final NTC_FEATURE_FAKE_OPERATOR_NUMERIC:I = 0x5

.field public static final NTC_FEATURE_MAX:I = 0xf

.field public static final NTC_FEATURE_REMOVE_ECB_EXIT:I = 0x1

.field public static final NTC_FEATURE_SERVICESTATE_FOR_GOOGLEIMS:I = 0x8

.field public static final NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x3

.field public static final NTC_FEATURE_SUPPORT_VOICELESS_OTA_PROVISIONING:I = 0xe

.field public static final NTC_FEATURE_USE_GOOGLEIMS:I = 0x9

.field public static final NTC_FEATURE_VZW_CDMALESS:I = 0xb

.field public static final NTC_FEATURE_VZW_GLOBAL_DIALING:I = 0x2

.field public static final NTC_FEATURE_VZW_HVOLTE:I = 0xa

.field private static final PRIMARY_PHONE_ID:I = 0x0

.field public static final SALES_CODE:Ljava/lang/String;

.field private static final SECONDARY_PHONE_ID:I = 0x1

.field public static final SHIP_BUILD:Z

.field private static mCountry:Ljava/lang/String;

.field private static mCountry2:Ljava/lang/String;

.field private static mMainOperator:Ljava/lang/String;

.field private static mMainOperator2:Ljava/lang/String;

.field private static mNetworkCode:Ljava/lang/String;

.field private static mNetworkCode2:Ljava/lang/String;

.field private static mOmcVersion:D

.field private static mOperatorType:Ljava/lang/String;

.field private static mOperatorType2:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;

.field private static mSimHotswapSupported:Z

.field private static mSimbasedChangeType:[Ljava/lang/String;

.field private static mSubOperator:Ljava/lang/String;

.field private static mSubOperator2:Ljava/lang/String;

.field private static mUsedLegacyIms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string/jumbo v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    invoke-static {v1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v3, "ro.csc.sales_code"

    const-string/jumbo v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    invoke-static {v2, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.omcnw_code2"

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v3, "NONE"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    const-string/jumbo v0, "persist.ril.ims.legacy.enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    sput-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InitializeNetworkTypeCapability(II)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "---"

    return-object v2

    :cond_0
    aget-object v2, v1, p1

    return-object v2
.end method

.method private static InitializeSimbasedType()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "ro.simbased.changetype"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_AutoConfigurationType"

    const-string/jumbo v3, "NONE,DISABLED"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v6, :cond_3

    :cond_2
    new-array v1, v6, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const-string/jumbo v2, "NONE"

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const-string/jumbo v2, "DISABLED"

    aput-object v2, v1, v5

    :goto_0
    return-void

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_0
.end method

.method public static displaySpnRulePlmnAtAbout(I)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "CHN"

    aput-object v1, v0, v2

    const-string/jumbo v1, "HKG"

    aput-object v1, v0, v3

    const-string/jumbo v1, "TPE"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VZW"

    aput-object v1, v0, v2

    const-string/jumbo v1, "SPR"

    aput-object v1, v0, v3

    const-string/jumbo v1, "USC"

    aput-object v1, v0, v4

    const-string/jumbo v1, "KDI"

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "52501"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    return v3
.end method

.method public static doNotShowSpnUnderEpdgRegi()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->doNotShowSpnUnderEpdgRegi(I)Z

    move-result v0

    return v0
.end method

.method public static doNotShowSpnUnderEpdgRegi(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "65502"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "EUR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static dump()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "----- TelephonyFeatures.dump -----"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMainOperatorName(PRIMARY / SECONDARY): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSubOperatorName(PRIMARY / SECONDARY): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOperatorType(PRIMARY / SECONDARY): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCountryName(PRIMARY / SECONDARY): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetworkCode(PRIMARY / SECONDARY): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IS_PHONE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SHIP_BUILD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SALES_CODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MULTI_SIM_CONFIG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsedLegacyIms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSalesCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNtcFeature("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->featureToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static featureToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uknown NTC_FEATURE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "NTC_FEATURE_REMOVE_ECB_EXIT"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "NTC_FEATURE_VZW_GLOBAL_DIALING"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "NTC_FEATURE_CSC_SPRINT_CHAMELEON"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "NTC_FEATURE_FAKE_OPERATOR_NUMERIC"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "NTC_FEATURE_ERI_ON_CP"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "NTC_FEATURE_ERI_ON_AP"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "NTC_FEATURE_SERVICESTATE_FOR_GOOGLEIMS"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "NTC_FEATURE_USE_GOOGLEIMS"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "NTC_FEATURE_VZW_HVOLTE"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "NTC_FEATURE_VZW_CDMALESS"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "NTC_FEATURE_ENABLE_CMCC_VOLTE"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "NTC_FEATURE_SUPPORT_VOICELESS_OTA_PROVISIONING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getCountryName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDefaultNetworkMode(ILjava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigDefaultNetwork"

    const-string/jumbo v2, "ro.telephony.default_network"

    invoke-static {p0, v2, p1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultNetworkMode(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getDefaultNetworkMode(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMainOperatorName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainOperatorName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNetworkCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkCode(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getNetworkType()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public static getNetworkType(I)I
    .locals 3

    const/16 v0, 0x9

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->supportDualLte()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getDefaultNetworkMode(ILjava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_SupportTdsCdma"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getDefaultNetworkMode(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x13

    return v1

    :pswitch_2
    const/16 v1, 0x16

    return v1

    :pswitch_3
    const/16 v1, 0x14

    return v1

    :pswitch_4
    const/16 v1, 0x12

    return v1

    :pswitch_5
    const/16 v1, 0xe

    return v1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNtcFeature(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    return v0
.end method

.method public static getNtcFeature(II)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown NTC feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->loge(Ljava/lang/String;)V

    :cond_0
    :pswitch_0
    return v3

    :pswitch_1
    const-string/jumbo v0, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_2
    const-string/jumbo v0, "VZW"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_3
    const-string/jumbo v0, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_4
    const-string/jumbo v0, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_5
    const-string/jumbo v0, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_6
    const-string/jumbo v0, "VZW"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_7
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "SPR"

    aput-object v1, v0, v3

    const-string/jumbo v1, "USC"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_8
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VZW"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SPR"

    aput-object v1, v0, v2

    const-string/jumbo v1, "USC"

    aput-object v1, v0, v4

    const-string/jumbo v1, "GCF"

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    :cond_1
    return v2

    :pswitch_9
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v2

    :pswitch_a
    const-string/jumbo v0, "VZW"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v0, :cond_0

    return v2

    :pswitch_b
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "VZW"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SPR"

    aput-object v1, v0, v2

    const-string/jumbo v1, "USC"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :pswitch_c
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "VZW"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SPR"

    aput-object v1, v0, v2

    const-string/jumbo v1, "USC"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getOmcVersion()D
    .locals 8

    const-wide/16 v6, 0x0

    sget-wide v2, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string/jumbo v4, "0.0"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-wide v2, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    return-wide v2

    :catch_0
    move-exception v0

    sput-wide v6, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    const-string/jumbo v2, "NullPointerException"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sput-wide v6, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    const-string/jumbo v2, "NumberFormatException"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOperatorType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperatorType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimbasedChangeType()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getSimbasedChangeTypeDefCode()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getSubOperatorName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubOperatorName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isChnGlobalModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static isChnGlobalModel(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "CHN"

    aput-object v2, v1, v0

    const-string/jumbo v0, "HKG"

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string/jumbo v0, "TPE"

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static varargs isCountrySpecific(I[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    if-ne p0, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    if-eq p0, v5, :cond_1

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static varargs isCountrySpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCrossMappingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isGCFMode()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGCFMode(I)Z

    move-result v0

    return v0
.end method

.method public static isGCFMode(I)Z
    .locals 3

    const-string/jumbo v1, "persist.ims.gcfmode"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GCF"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isGlobalModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static isGlobalModel(I)Z
    .locals 2

    const-string/jumbo v0, "GLB"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v4, ""

    invoke-static {p0, v2, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isKdiSim(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "44050"

    aput-object v1, v0, v3

    const-string/jumbo v1, "44051"

    aput-object v1, v0, v4

    const-string/jumbo v1, "44007"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "44008"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "44052"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "44053"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "44054"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "44055"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "44056"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "44070"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "44071"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "44072"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "44073"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "44074"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "44075"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "44076"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "44077"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "44078"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "44079"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "44088"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "44089"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "44170"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    return v3
.end method

.method public static varargs isMainOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    if-ne p0, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    if-eq p0, v5, :cond_1

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static varargs isMainOperatorSpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs isNetworkCodeSpecific(I[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    if-ne p0, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    if-eq p0, v5, :cond_1

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static varargs isNetworkCodeSpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs isSalesCodeSpecific([Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isSimHotswapSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    return v0
.end method

.method public static varargs isSubOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    if-ne p0, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    if-eq p0, v5, :cond_1

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static varargs isSubOperatorSpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTimOperator(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "22201"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public static isUsaCdmaModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel(I)Z

    move-result v0

    return v0
.end method

.method public static isUsaCdmaModel(I)Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "VZW"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SPR"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "USC"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUsaGlobalModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static isUsaGlobalModel(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "USA"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static needApHandlingStkCmdForCp(ILjava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "SetupCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BMC"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LTN"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "IUS"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ICE"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MNX"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

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

.method public static needApHandlingStkCmdForCp(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->needApHandlingStkCmdForCp(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needToRunLteRoaming(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "SKT"

    aput-object v2, v1, v4

    const-string/jumbo v2, "KTT"

    aput-object v2, v1, v5

    const-string/jumbo v2, "LGT"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "KOO"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "ril.simtype"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "KTT"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-string/jumbo v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "LGT"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SKT"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return v5

    :cond_4
    const-string/jumbo v1, "KOO"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    return v5

    :cond_6
    return v4
.end method

.method public static reInitialize()V
    .locals 13

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    const-string/jumbo v10, "ro.csc.omcnw_code"

    const-string/jumbo v11, "ro.csc.sales_code"

    const-string/jumbo v12, "NONE"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    const-string/jumbo v10, "ro.csc.omcnw_code2"

    const-string/jumbo v11, "ro.csc.sales_code"

    const-string/jumbo v12, "NONE"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    const-string/jumbo v10, "----- TelephonyFeatures.reInitialize -----"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MainOperator(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SubOperator(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "OperatorType(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Country(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NetworkCode(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MainOperator(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SubOperator(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "OperatorType(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Country(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NetworkCode(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static setFakeRoamingOrHome()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->setFakeRoamingOrHome(I)Z

    move-result v0

    return v0
.end method

.method public static setFakeRoamingOrHome(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SKT"

    aput-object v1, v0, v3

    const-string/jumbo v1, "KTT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "LGT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "KOO"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v4
.end method

.method public static showVoiceAsDataNetworkType()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->showVoiceAsDataNetworkType(I)Z

    move-result v0

    return v0
.end method

.method public static showVoiceAsDataNetworkType(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "HKG"

    aput-object v1, v0, v2

    const-string/jumbo v1, "TPE"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    :cond_1
    return v2
.end method

.method public static supportDualLte()Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, ""

    const-string/jumbo v2, "DSDS_SI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "DSDS_DI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    const-string/jumbo v2, "persist.ril.config.dualims"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DSDS_DI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    const/4 v2, 0x0

    return v2
.end method
