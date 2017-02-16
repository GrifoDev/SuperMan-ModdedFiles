.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field static final NTCTYPE_COUNTRY:I = 0x3

.field static final NTCTYPE_MAINOPERATOR:I = 0x0

.field static final NTCTYPE_OPERATORTYPE:I = 0x2

.field static final NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final NTC_FEATURE_COMBINED_SIGNAL:I = 0x1

.field public static final NTC_FEATURE_CONNECTION_FOR_GOOGLEIMS:I = 0xa

.field public static final NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x5

.field public static final NTC_FEATURE_ENABLE_CMCC_VOLTE:I = 0xf

.field public static final NTC_FEATURE_ERI_ON_AP:I = 0x8

.field public static final NTC_FEATURE_ERI_ON_CP:I = 0x7

.field public static final NTC_FEATURE_FAKE_OPERATOR_NUMERIC:I = 0x6

.field public static final NTC_FEATURE_MAX:I = 0x11

.field public static final NTC_FEATURE_REMOVE_ECB_EXIT:I = 0x2

.field public static final NTC_FEATURE_SERVICESTATE_FOR_GOOGLEIMS:I = 0x9

.field public static final NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x4

.field public static final NTC_FEATURE_USE_GOOGLEIMS:I = 0xb

.field public static final NTC_FEATURE_USE_GOOGLE_VIDEO_PROVIDER:I = 0x10

.field public static final NTC_FEATURE_VZW_CDMALESS:I = 0xd

.field public static final NTC_FEATURE_VZW_DEVICE_QUALITY_STATISTICS:I = 0xe

.field public static final NTC_FEATURE_VZW_GLOBAL_DIALING:I = 0x3

.field public static final NTC_FEATURE_VZW_VOLTE_ROAMING:I = 0xc

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SHIP_BUILD:Z

.field private static mConfigVolteRedialPolicy:Ljava/lang/String;

.field private static mCountry:Ljava/lang/String;

.field private static mCrossMappingSupported:Z

.field private static mImsStubEnabled:Z

.field private static mMainOperator:Ljava/lang/String;

.field public static final mMultiSimConfig:Ljava/lang/String;

.field private static mOperatorType:Ljava/lang/String;

.field private static mSimHotswapSupported:Z

.field private static mSubOperator:Ljava/lang/String;

.field private static mUsedNetworkType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    .line 46
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    .line 53
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    .line 54
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    .line 56
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "EUR"

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigVolteRedialPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "persist.radio.enable.stubDebug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mImsStubEnabled:Z

    .line 60
    sput-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 61
    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCrossMappingSupported:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InitializeNetworkTypeCapability(I)Ljava/lang/String;
    .locals 4
    .param p0, "ntcType"    # I

    .prologue
    .line 124
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    const-string/jumbo v2, "EUR"

    const-string/jumbo v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 128
    const-string/jumbo v2, "GSM"

    return-object v2

    .line 130
    :cond_0
    const-string/jumbo v2, "EUR"

    return-object v2

    .line 132
    :cond_1
    const-string/jumbo v2, "---"

    return-object v2

    .line 135
    :cond_2
    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "ntcValue":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 137
    const-string/jumbo v2, "---"

    return-object v2

    .line 140
    :cond_3
    aget-object v2, v1, p0

    return-object v2
.end method

.method public static displaySpnRulePlmnAtAbout(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 317
    const-string/jumbo v0, "CHN"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HKG"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TPE"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    return v2

    .line 321
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "52501"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    return v2

    .line 325
    :cond_2
    const-string/jumbo v0, "KDI"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    return v2

    .line 329
    :cond_3
    return v3
.end method

.method public static doNotShowSpnUnderEpdgRegi()Z
    .locals 2

    .prologue
    .line 372
    const-string/jumbo v0, "DTM"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x1

    return v0

    .line 375
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getImsStubEnabled()Z
    .locals 1

    .prologue
    .line 284
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mImsStubEnabled:Z

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMainOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getMultiSimConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v0, ""

    return-object v0

    .line 294
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMultiSimConfig:Ljava/lang/String;

    return-object v0
.end method

.method public static getNtcFeature(I)Z
    .locals 6
    .param p0, "ntcFeature"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 162
    packed-switch p0, :pswitch_data_0

    .line 230
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown NTC feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->loge(Ljava/lang/String;)V

    .line 234
    :cond_0
    :pswitch_1
    return v5

    .line 165
    :pswitch_2
    const-string/jumbo v2, "ril.voicecapable"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 166
    .local v1, "isVoiceCapable":Z
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "USC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 169
    :cond_1
    const-string/jumbo v2, "ro.config.combined_signal"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    .local v0, "combinedSignal":Z
    if-eqz v0, :cond_0

    .line 171
    return v4

    .line 167
    .end local v0    # "combinedSignal":Z
    :cond_2
    return v4

    .line 175
    .end local v1    # "isVoiceCapable":Z
    :pswitch_3
    const-string/jumbo v2, "SPR"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    return v4

    .line 180
    :pswitch_4
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    return v4

    .line 185
    :pswitch_5
    const-string/jumbo v2, "SPR"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    return v4

    .line 190
    :pswitch_6
    const-string/jumbo v2, "SPR"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    return v4

    .line 195
    :pswitch_7
    const-string/jumbo v2, "SPR"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    return v4

    .line 200
    :pswitch_8
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    return v4

    .line 205
    :pswitch_9
    const-string/jumbo v2, "SPR"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "USC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    :cond_3
    return v4

    .line 210
    :pswitch_a
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    return v4

    .line 216
    :pswitch_b
    return v4

    .line 228
    :pswitch_c
    return v4

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static getOperatorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    return-object v0
.end method

.method public static getSubOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsedNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 280
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public static getVoltePolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 273
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public static isCrossMappingSupported()Z
    .locals 1

    .prologue
    .line 265
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCrossMappingSupported:Z

    return v0
.end method

.method public static isGCFMode()Z
    .locals 3

    .prologue
    .line 453
    const-string/jumbo v1, "persist.ims.gcfmode"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "gcfMode":Ljava/lang/String;
    const-string/jumbo v1, "GCF"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

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

.method public static varargs isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "Numeric"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 299
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v4, ""

    invoke-static {p0, v2, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "iccOperatorNumeric":Ljava/lang/String;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    .line 302
    .local v1, "x":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    const/4 v2, 0x1

    return v2

    .line 301
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "x":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public static varargs isMainOperatorSpecific([Ljava/lang/String;)Z
    .locals 5
    .param p0, "Operator"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 252
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p0, v1

    .line 253
    .local v0, "x":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const/4 v1, 0x1

    return v1

    .line 252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "x":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static isSimHotswapSupported()Z
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    return v0
.end method

.method public static isUsaCdmaModel()Z
    .locals 2

    .prologue
    .line 238
    const-string/jumbo v0, "USA"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CDM"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GLB"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CLS"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isUsaGlobalModel()Z
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "USA"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GLB"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 480
    const-string/jumbo v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 484
    const-string/jumbo v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method public static needApHandlingStkCmdForCp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 461
    const-string/jumbo v0, "SetupCall"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    const-string/jumbo v1, "BMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const/4 v0, 0x1

    return v0

    .line 465
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static needToRunLteRoaming(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
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

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    return v4

    .line 383
    :cond_0
    const-string/jumbo v1, "ril.simtype"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "simType":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "KTT"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 386
    :cond_1
    const-string/jumbo v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "LGT"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    .line 385
    if-nez v1, :cond_3

    .line 387
    :cond_2
    const-string/jumbo v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SKT"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    .line 385
    if-eqz v1, :cond_4

    .line 388
    :cond_3
    return v5

    .line 389
    :cond_4
    const-string/jumbo v1, "KOO"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
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

    .line 389
    if-eqz v1, :cond_6

    .line 391
    :cond_5
    return v5

    .line 394
    :cond_6
    return v4
.end method

.method public static needToSetCWDB(I)Z
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    return v3

    .line 428
    :cond_0
    const-string/jumbo v1, "ril.ICC_TYPE"

    const-string/jumbo v2, "0"

    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, "iccType":I
    if-gt v0, v4, :cond_1

    .line 430
    return v3

    .line 432
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "46697"

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    return v4

    .line 436
    :cond_2
    return v3
.end method

.method public static reInitialize()V
    .locals 8

    .prologue
    .line 101
    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    .line 102
    .local v2, "oldMainOperator":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    .line 103
    .local v4, "oldSubOperator":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    .line 104
    .local v3, "oldOperatorType":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    .line 105
    .local v1, "oldCountry":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 106
    .local v5, "oldUsedNetworkType":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 108
    .local v0, "oldConfigVolteRedialPolicy":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    .line 109
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    .line 110
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    .line 111
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    .line 112
    const-string/jumbo v6, "EUR"

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_RIL_ConfigVolteRedialPolicy"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - MainOperator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - SubOperator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - OperatorType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - Country: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - UsedNetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedNetworkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reInitialize - ConfigVolteRedialPolicy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mConfigVolteRedialPolicy:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static setFakeRoamingOrHome()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 445
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

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    return v3

    .line 449
    :cond_0
    return v4
.end method

.method public static showEpdgNetName(I)Z
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 353
    const-string/jumbo v0, "BTU"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "XEU"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "23430"

    aput-object v1, v0, v3

    const-string/jumbo v1, "23433"

    aput-object v1, v0, v4

    const-string/jumbo v1, "23486"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    return v4

    .line 357
    :cond_1
    return v3

    .line 360
    :cond_2
    const-string/jumbo v0, "EUR"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 360
    if-eqz v0, :cond_4

    .line 362
    :cond_3
    return v4

    .line 365
    :cond_4
    return v3
.end method

.method public static showEpdgNetNameWhenOos(I)Z
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    const-string/jumbo v0, "BTU"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "XEU"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "23430"

    aput-object v1, v0, v3

    const-string/jumbo v1, "23433"

    aput-object v1, v0, v4

    const-string/jumbo v1, "23486"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    return v4

    .line 340
    :cond_1
    return v3

    .line 342
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "EUR"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    :cond_3
    return v4

    .line 346
    :cond_4
    return v3
.end method

.method public static showVoiceAsDataNetworkType()Z
    .locals 2

    .prologue
    .line 472
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    const-string/jumbo v0, "HKG"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 472
    if-nez v0, :cond_0

    .line 473
    const-string/jumbo v0, "TPE"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 472
    if-eqz v0, :cond_1

    .line 474
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 476
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static terminalBasedCallWaiting(I)Z
    .locals 7
    .param p0, "phoneId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 402
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    return v4

    .line 406
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "CHM"

    aput-object v2, v1, v4

    const-string/jumbo v2, "CHC"

    aput-object v2, v1, v5

    const-string/jumbo v2, "TGY"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    const-string/jumbo v1, "ril.ICC_TYPE"

    const-string/jumbo v2, "0"

    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 409
    .local v0, "iccType":I
    if-gt v0, v5, :cond_1

    .line 410
    return v4

    .line 412
    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "46000"

    aput-object v2, v1, v4

    const-string/jumbo v2, "46002"

    aput-object v2, v1, v5

    const-string/jumbo v2, "46004"

    aput-object v2, v1, v3

    const-string/jumbo v2, "46007"

    aput-object v2, v1, v6

    const-string/jumbo v2, "46008"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    return v5

    .line 416
    .end local v0    # "iccType":I
    :cond_2
    return v4
.end method
