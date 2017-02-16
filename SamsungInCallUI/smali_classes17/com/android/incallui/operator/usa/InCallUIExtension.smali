.class public Lcom/android/incallui/operator/usa/InCallUIExtension;
.super Ljava/lang/Object;
.source "InCallUIExtension.java"


# static fields
.field private static final ABBREVIATED_DIALING_CODES_DEFAULT_BOOST_BIT:I = 0x10

.field private static final ABBREVIATED_DIALING_CODES_DEFAULT_SPRINT_BIT:I = 0x4

.field private static final ABBREVIATED_DIALING_CODES_DEFAULT_VIRGIN_BIT:I = 0x8

.field private static final CSC_CHAMELEON_CLEAER_BIT:I = 0x0

.field private static final CSC_CHAMELEON_ENABLE_BIT:I = 0x3

.field private static final CSC_CHAMELEON_FILE_EXISTS_BIT:I = 0x1

.field private static final CSC_CHAMELEON_XML_PARSER_BIT:I = 0x2

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "InCallUIExtension"

.field private static final VDBG:Z = true

.field private static mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCscChameleonBit:I

.field private static mOperatorAlphaLong:Ljava/lang/String;

.field private static mParser:Lcom/android/incallui/external/CscParser;

.field private static mRoaming:Z

.field private static mServiceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    .line 89
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    .line 91
    const/4 v0, 0x3

    sput v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mServiceState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areCallsAddressSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 10
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 364
    const-string v7, "usa_cdma_smc_fac_req"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 365
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getPhoneType()I

    move-result v4

    .line 366
    .local v4, "phoneType":I
    const-string v7, "InCallUIExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "areCallsAddressSame - phoneType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v7, 0x2

    if-eq v4, v7, :cond_1

    .line 409
    .end local v4    # "phoneType":I
    :cond_0
    :goto_0
    return v5

    .line 370
    .restart local v4    # "phoneType":I
    :cond_1
    const-string v7, "us_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 371
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 375
    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_0

    .line 382
    :cond_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 383
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v5, v6

    .line 385
    goto :goto_0

    .line 387
    :cond_4
    const/4 v0, 0x0

    .line 388
    .local v0, "address":Ljava/lang/String;
    const/4 v1, 0x0

    .line 389
    .local v1, "callerDisplayName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 390
    .local v3, "number":Ljava/lang/String;
    const/4 v2, 0x0

    .line 392
    .local v2, "cnapName":Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 393
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 397
    :cond_5
    if-eqz p1, :cond_6

    .line 398
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-static {p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->updateCallAddress(Lcom/android/incallui/Call;)V

    .line 403
    :cond_6
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_7
    move v5, v6

    .line 407
    goto :goto_0
.end method

.method private static callCapabilitiesChanged(III)Z
    .locals 1
    .param p0, "telecomCallCapabilities"    # I
    .param p1, "callCapabilities"    # I
    .param p2, "capabilities"    # I

    .prologue
    .line 551
    and-int v0, p2, p1

    if-eq p2, v0, :cond_0

    and-int v0, p2, p0

    if-eq p2, v0, :cond_1

    :cond_0
    and-int v0, p2, p1

    if-ne p2, v0, :cond_2

    and-int v0, p2, p0

    if-eq p2, v0, :cond_2

    .line 553
    :cond_1
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canCallCapabilities(II)Z
    .locals 1
    .param p0, "callCapabilities"    # I
    .param p1, "capabilities"    # I

    .prologue
    .line 558
    and-int v0, p1, p0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 5
    .param p0, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v3, 0x0

    .line 431
    const-string v4, "usa_cdma_smc_fac_req"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    if-eqz p0, :cond_0

    .line 433
    iget-boolean v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 434
    .local v0, "contactExists":Z
    iget-boolean v1, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    .line 435
    .local v1, "isEmergency":Z
    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 436
    .local v2, "isVoiceMail":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v3, 0x1

    .line 439
    .end local v0    # "contactExists":Z
    .end local v1    # "isEmergency":Z
    .end local v2    # "isVoiceMail":Z
    :cond_0
    return v3
.end method

.method public static checkCscChameleonFile()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/android/incallui/external/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "cscChameleonPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->existsCscChameleonFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    sget v1, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    .line 101
    invoke-static {v0}, Lcom/android/incallui/external/CscParser;->getChameleonInstance(Ljava/lang/String;)Lcom/android/incallui/external/CscParser;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/operator/usa/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    .line 102
    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    if-eqz v1, :cond_0

    .line 103
    sget v1, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->putCscChameleonDatabase()V

    .line 106
    return-void
.end method

.method private static cscChameleonEnable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 121
    const-string v4, "csc_chameleon_enable"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 122
    .local v1, "cscChameleonEnableFeature":Z
    const/4 v4, 0x3

    sget v5, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    and-int/lit8 v5, v5, 0x3

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 125
    .local v0, "cscChameleonBit":Z
    :goto_0
    const-string v4, "InCallUIExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cscChameleonEnable - cscChameleonEnableFeature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cscChameleonBit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCscChameleonBit : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v0    # "cscChameleonBit":Z
    :cond_0
    move v0, v3

    .line 122
    goto :goto_0

    .restart local v0    # "cscChameleonBit":Z
    :cond_1
    move v2, v3

    .line 127
    goto :goto_1
.end method

.method private static existsCscChameleonFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "cscChameleonFileName"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 204
    if-eqz p0, :cond_0

    .line 205
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsWrapper;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getDelayForDisconnect(Lcom/android/incallui/Call;I)I
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "delay"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 253
    .local v0, "isEmergencyNumber":Z
    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 255
    :cond_0
    return p1
.end method

.method public static getDialingLabelFromAssistedDialing(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callStateLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 479
    invoke-static {p0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isAssistedDialing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const v0, 0x7f09042a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 481
    .end local p1    # "callStateLabel":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method public static getECMCardString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 499
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getECMCardString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getECMCardString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    invoke-static {p0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "rawNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 506
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 507
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    :goto_0
    const v4, 0x7f090020

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "titleFormat":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "ecmCardString":Ljava/lang/String;
    return-object v0

    .line 509
    .end local v0    # "ecmCardString":Ljava/lang/String;
    .end local v3    # "titleFormat":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v4

    const-string v5, "unknown"

    invoke-virtual {v4, p0, v5}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 629
    const-string v7, "InCallUIExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 663
    :goto_0
    return-object v1

    .line 635
    :cond_0
    const-string v7, "InCallUIExtension"

    const-string v8, "getGeoDescription: start"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 636
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    .line 637
    .local v6, "util":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    invoke-static {}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v3

    .line 639
    .local v3, "geocoder":Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 640
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {p0, v4}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "countryIso":Ljava/lang/String;
    const/4 v5, 0x0

    .line 644
    .local v5, "pn":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    const-string v7, "InCallUIExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' for countryIso \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v6, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 647
    const-string v7, "InCallUIExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- parsed number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_1
    if-eqz v5, :cond_2

    .line 653
    invoke-virtual {v3, v5, v4}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "description":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isSpecialNumber(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 655
    new-instance v4, Ljava/util/Locale;

    .end local v4    # "locale":Ljava/util/Locale;
    const-string v7, ""

    const-string v8, "VN"

    invoke-direct {v4, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .restart local v4    # "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    .line 658
    :cond_1
    const-string v7, "InCallUIExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- got description: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v7, "InCallUIExtension"

    const-string v8, "getGeoDescription: end"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 648
    .end local v1    # "description":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    const-string v7, "InCallUIExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getGeoDescription: NumberParseException for incoming number \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 662
    .end local v2    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    :cond_2
    const-string v7, "InCallUIExtension"

    const-string v8, "getGeoDescription: null"

    invoke-static {v7, v8, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 485
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 486
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "rawNumber":Ljava/lang/String;
    return-object v0
.end method

.method public static getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method private static getPhoneType()I
    .locals 4

    .prologue
    .line 491
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 492
    .local v0, "context":Landroid/content/Context;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 493
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 494
    .local v1, "phoneType":I
    return v1
.end method

.method public static getRoaming()Z
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mRoaming:Z

    return v0
.end method

.method public static getSecureSettingBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    const/4 v0, 0x1

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecureSettingBoolean(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 344
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 345
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getSecureSettingBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public static getServiceState()I
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mServiceState:I

    return v0
.end method

.method public static isAbbreviatedDialingCodes(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 194
    if-eqz p0, :cond_0

    .line 195
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsWrapper;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAddressChanged(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 443
    if-eqz p0, :cond_0

    .line 444
    const-string v0, "InCallUIExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAddressChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getAddressChanged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 445
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAddressChanged(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 7
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 353
    const-string v2, "usa_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-static {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->areCallsAddressSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    .line 355
    .local v0, "areCallsAddressSame":Z
    invoke-static {p1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isAddressChanged(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 356
    .local v1, "isAddressChanged":Z
    const-string v5, "InCallUIExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!areCallsAddressSame : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " / isAddressChanged : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 357
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v3

    .line 359
    .end local v0    # "areCallsAddressSame":Z
    .end local v1    # "isAddressChanged":Z
    :cond_1
    return v4

    .restart local v0    # "areCallsAddressSame":Z
    .restart local v1    # "isAddressChanged":Z
    :cond_2
    move v2, v4

    .line 356
    goto :goto_0
.end method

.method private static isAssistedDialing(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 460
    if-nez p0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v5

    .line 462
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 463
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isEpdgCall()Z

    move-result v6

    if-nez v6, :cond_0

    .line 464
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->getAssisted(Lcom/android/incallui/Call;)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 466
    .local v0, "assisted":Z
    :goto_1
    const/4 v3, 0x0

    .line 467
    .local v3, "defaultSettingValue":I
    const-string v6, "global_network_cdma_gsm_enable"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 468
    const/4 v3, 0x1

    .line 469
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assisted_dialing"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    .line 471
    .local v1, "assistedDialing":Z
    :goto_2
    const-string v6, "InCallUIExtension"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "assisted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " assistedDialing : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    :goto_3
    move v5, v4

    goto :goto_0

    .end local v0    # "assisted":Z
    .end local v1    # "assistedDialing":Z
    .end local v3    # "defaultSettingValue":I
    :cond_3
    move v0, v5

    .line 464
    goto :goto_1

    .restart local v0    # "assisted":Z
    .restart local v3    # "defaultSettingValue":I
    :cond_4
    move v1, v5

    .line 469
    goto :goto_2

    .restart local v1    # "assistedDialing":Z
    :cond_5
    move v4, v5

    .line 473
    goto :goto_3
.end method

.method private static isDomesticRoaming()Z
    .locals 5

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "isDomesticRoaming":Z
    const-string v2, "phone"

    invoke-static {v2}, Lcom/android/incallui/service/SecServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/wrapper/ITelephonyWrapper;->asInterface(Landroid/os/IBinder;)Lcom/android/incallui/wrapper/ITelephonyWrapper;

    move-result-object v1

    .line 270
    .local v1, "phone":Lcom/android/incallui/wrapper/ITelephonyWrapper;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/wrapper/ITelephonyWrapper;->IsDomesticRoaming()Z

    move-result v0

    .line 272
    :cond_0
    const-string v2, "InCallUIExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDomesticRoaming() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return v0
.end method

.method public static isDomesticRoamingInService()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 313
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isDomesticRoaming()Z

    move-result v0

    .line 314
    .local v0, "isDomesticRoaming":Z
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getServiceState()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 317
    .local v1, "stateInService":Z
    :goto_0
    const-string v4, "InCallUIExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isDomesticRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 319
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v1    # "stateInService":Z
    :cond_0
    move v1, v3

    .line 314
    goto :goto_0

    .restart local v1    # "stateInService":Z
    :cond_1
    move v2, v3

    .line 319
    goto :goto_1
.end method

.method public static isDomesticRoamingSettingInService()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 293
    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 294
    .local v0, "domesticCallGuardEnabled":Z
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isDomesticRoamingInService()Z

    move-result v1

    .line 297
    .local v1, "isDomesticRoamingInService":Z
    const-string v3, "InCallUIExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DomesticCallGuardEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isDomesticRoamingInService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 259
    if-eqz p0, :cond_0

    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 263
    .local v0, "isEmergencyNumber":Z
    :goto_0
    return v0

    .line 261
    .end local v0    # "isEmergencyNumber":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInternationalRoaming()Z
    .locals 5

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "isInternationalRoaming":Z
    const-string v2, "phone"

    invoke-static {v2}, Lcom/android/incallui/service/SecServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/wrapper/ITelephonyWrapper;->asInterface(Landroid/os/IBinder;)Lcom/android/incallui/wrapper/ITelephonyWrapper;

    move-result-object v1

    .line 281
    .local v1, "phone":Lcom/android/incallui/wrapper/ITelephonyWrapper;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/wrapper/ITelephonyWrapper;->IsInternationalRoaming()Z

    move-result v0

    .line 283
    :cond_0
    const-string v2, "InCallUIExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInternationalRoaming() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return v0
.end method

.method public static isInternationalRoamingInService()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 323
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isInternationalRoaming()Z

    move-result v0

    .line 324
    .local v0, "isInternationalRoaming":Z
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getServiceState()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 327
    .local v1, "stateInService":Z
    :goto_0
    const-string v4, "InCallUIExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StateInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isInternationalRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    .end local v1    # "stateInService":Z
    :cond_0
    move v1, v3

    .line 324
    goto :goto_0

    .restart local v1    # "stateInService":Z
    :cond_1
    move v2, v3

    .line 329
    goto :goto_1
.end method

.method public static isInternationalRoamingSettingInService()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 303
    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v2}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 304
    .local v0, "internationalCallGuardEnabled":Z
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isInternationalRoamingInService()Z

    move-result v1

    .line 307
    .local v1, "isInternationalRoamingInService":Z
    const-string v3, "InCallUIExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternationalCallGuardEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isInternationalRoamingInService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 309
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoamingSettingInServiceGsm()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 333
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getServiceState()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 334
    .local v2, "stateInService":Z
    :goto_0
    const-string v5, "roam_guard_call_international"

    invoke-static {v5, v3}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 335
    .local v0, "internationalCallGuardEnabledGsm":Z
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getRoaming()Z

    move-result v1

    .line 338
    .local v1, "roaming":Z
    const-string v5, "InCallUIExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StateInService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / internationalCallGuardEnabledGsm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / roaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 340
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v3

    .end local v0    # "internationalCallGuardEnabledGsm":Z
    .end local v1    # "roaming":Z
    .end local v2    # "stateInService":Z
    :cond_0
    move v2, v4

    .line 333
    goto :goto_0

    .restart local v0    # "internationalCallGuardEnabledGsm":Z
    .restart local v1    # "roaming":Z
    .restart local v2    # "stateInService":Z
    :cond_1
    move v3, v4

    .line 340
    goto :goto_1
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhoneTypeCdma(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 586
    if-nez p0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v1

    .line 587
    :cond_1
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getPhoneType()I

    move-result v0

    .line 590
    .local v0, "phoneType":I
    const-string v2, "InCallUIExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneTypeCdma - phoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isRoamingSettingInService()Z
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isInternationalRoamingSettingInService()Z

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

.method public static isShowERI4Vowifi()Z
    .locals 7

    .prologue
    .line 238
    const/4 v1, 0x1

    .line 239
    .local v1, "result":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 240
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "strEri":Ljava/lang/String;
    const v4, 0x7f0905b2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "searching":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    const-string v4, "InCallUIExtension"

    const-string v5, "isShowERI4Vowifi "

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSpecialNumber(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 6
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "pn"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "nationalNumber":Ljava/lang/String;
    const-string v2, "84"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "88"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "89"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "868"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    :cond_0
    const/4 v2, 0x1

    .line 621
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "nationalNumber":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static maybeShowErrorToastOnDisconnect(Landroid/content/Context;Landroid/telecom/DisconnectCause;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v6, 0x0

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "reasonStr":[Ljava/lang/String;
    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v1, v5

    .line 567
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v8, "InCallUIExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reason : .."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 571
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/android/incallui/wrapper/DisconnectCauseWrapper;->disconnectCauseId(Ljava/lang/String;)I

    move-result v4

    .line 572
    .local v4, "telephonyDisconnectCause":I
    const/4 v2, 0x0

    .line 573
    .local v2, "showToast":Z
    sparse-switch v4, :sswitch_data_0

    .line 580
    :goto_1
    if-eqz v2, :cond_1

    .line 581
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 582
    :cond_1
    return v2

    .line 577
    :sswitch_0
    const/4 v2, 0x1

    goto :goto_1

    .line 573
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x1d -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public static needToNotifyDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;Z)Z
    .locals 9
    .param p0, "telecomCall"    # Landroid/telecom/Call;
    .param p1, "details"    # Landroid/telecom/Call$Details;
    .param p2, "needToNotify"    # Z

    .prologue
    .line 517
    if-nez p0, :cond_0

    move v2, p2

    .line 547
    .end local p2    # "needToNotify":Z
    .local v2, "needToNotify":Z
    :goto_0
    return v2

    .line 518
    .end local v2    # "needToNotify":Z
    .restart local p2    # "needToNotify":Z
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 519
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    move v2, p2

    .end local p2    # "needToNotify":Z
    .restart local v2    # "needToNotify":Z
    goto :goto_0

    .line 521
    .end local v2    # "needToNotify":Z
    .restart local p2    # "needToNotify":Z
    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getPhoneType()I

    move-result v3

    .line 522
    .local v3, "phoneType":I
    const-string v6, "chn_cdma_network_on_all_rat"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 523
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    .line 524
    :cond_2
    const-string v6, "InCallUIExtension"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needToNotifyDetailsChanged - phoneType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v6, "vzw_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 527
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 528
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v6

    .line 529
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getSecCallExtra(Landroid/telecom/Call;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Ljava/util/HashMap;)I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 530
    const/4 p2, 0x1

    .line 534
    :cond_3
    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 535
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 536
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    .line 537
    .local v4, "secCall":Lcom/android/incallui/SecCall;
    if-eqz v4, :cond_4

    .line 538
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v5

    .line 539
    .local v5, "telecomCallCapabilities":I
    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getCallCapabilities()I

    move-result v1

    .line 540
    .local v1, "callCapabilities":I
    if-eq v5, v1, :cond_4

    .line 541
    invoke-virtual {v4, v5}, Lcom/android/incallui/SecCall;->setCallCapabilities(I)V

    .line 542
    const/high16 v6, 0x1000000

    invoke-static {v5, v1, v6}, Lcom/android/incallui/operator/usa/InCallUIExtension;->callCapabilitiesChanged(III)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 543
    const/4 p2, 0x1

    .end local v1    # "callCapabilities":I
    .end local v4    # "secCall":Lcom/android/incallui/SecCall;
    .end local v5    # "telecomCallCapabilities":I
    :cond_4
    move v2, p2

    .line 547
    .end local p2    # "needToNotify":Z
    .restart local v2    # "needToNotify":Z
    goto :goto_0
.end method

.method private static putAbbreviatedDialingCodesDefaultTable()V
    .locals 4

    .prologue
    .line 160
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 162
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 163
    .local v0, "abbreviatedDialingCodesDefaultTableKeys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 165
    .local v1, "abbreviatedDialingCodesDefaultTableValues":[Ljava/lang/String;
    const-string v3, "abbreviated_dialing_codes_table_sprint"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 167
    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 168
    sget v3, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    .line 179
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    return-void

    .line 169
    :cond_1
    const-string v3, "abbreviated_dialing_codes_table_virgin"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 171
    const v3, 0x7f0c000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 172
    sget v3, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    goto :goto_0

    .line 173
    :cond_2
    const-string v3, "abbreviated_dialing_codes_table_boost"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 175
    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 176
    sget v3, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/android/incallui/operator/usa/InCallUIExtension;->mCscChameleonBit:I

    goto :goto_0
.end method

.method private static putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "abbreviatedDialingCodesTableKeys"    # [Ljava/lang/String;
    .param p1, "abbreviatedDialingCodesTableValues"    # [Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 191
    :cond_0
    return-void

    .line 187
    :cond_1
    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    .line 188
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 189
    sget-object v1, Lcom/android/incallui/operator/usa/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static putCscChameleonDatabase()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->setAbbreviatedDialingCodesTable()V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->putAbbreviatedDialingCodesDefaultTable()V

    goto :goto_0
.end method

.method private static putGenericAbbreviatedDialingCodesTable()V
    .locals 4

    .prologue
    .line 150
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 152
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "abbreviatedDialingCodesDefaultTableKeys":[Ljava/lang/String;
    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "abbreviatedDialingCodesDefaultTableValues":[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static setAbbreviatedDialingCodesTable()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->putGenericAbbreviatedDialingCodesTable()V

    .line 133
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "abbreviatedDialingCodesNodes":[Ljava/lang/String;
    sget-object v4, Lcom/android/incallui/operator/usa/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    if-eqz v4, :cond_1

    .line 135
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v1, v4

    .line 136
    .local v0, "abbreviatedDialingCodesNode":Ljava/lang/String;
    sget-object v7, Lcom/android/incallui/operator/usa/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    invoke-virtual {v7, v0}, Lcom/android/incallui/external/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "parserAbbreviatedDialingCodes":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, ","

    .line 138
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "splitAbbreviatedDialingCodes":[Ljava/lang/String;
    if-eqz v3, :cond_0

    const/4 v7, 0x2

    array-length v8, v3

    if-ne v7, v8, :cond_0

    aget-object v7, v3, v5

    .line 142
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v3, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 143
    sget-object v7, Lcom/android/incallui/operator/usa/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v8, v3, v5

    aget-object v9, v3, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v3    # "splitAbbreviatedDialingCodes":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "abbreviatedDialingCodesNode":Ljava/lang/String;
    .end local v2    # "parserAbbreviatedDialingCodes":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p0, "operatorAlphaLong"    # Ljava/lang/String;

    .prologue
    .line 230
    sput-object p0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mOperatorAlphaLong:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public static setPrimaryGeoDescription(Landroid/widget/TextView;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 595
    const-string v1, "geo_description_disable"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_spr"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 598
    .local v0, "location":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 599
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 600
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 603
    :cond_2
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setRoaming(Z)V
    .locals 0
    .param p0, "roaming"    # Z

    .prologue
    .line 222
    sput-boolean p0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mRoaming:Z

    .line 223
    return-void
.end method

.method public static setServiceState(I)V
    .locals 0
    .param p0, "state"    # I

    .prologue
    .line 214
    sput p0, Lcom/android/incallui/operator/usa/InCallUIExtension;->mServiceState:I

    .line 215
    return-void
.end method

.method private static updateCallAddress(Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 414
    const-string v4, "usa_cdma_smc_fac_req"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "callerDisplayName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "cnapName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 420
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/SecCall;->setAddress(Ljava/lang/String;)V

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecCall;->setAddressChanged(Z)V

    .line 425
    :cond_0
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/incallui/SecCall;->setCallerDisplayName(Ljava/lang/String;)V

    .line 428
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "callerDisplayName":Ljava/lang/String;
    .end local v2    # "cnapName":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    return-void
.end method
