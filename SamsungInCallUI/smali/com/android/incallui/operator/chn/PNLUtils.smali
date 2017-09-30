.class public Lcom/android/incallui/operator/chn/PNLUtils;
.super Ljava/lang/Object;


# static fields
.field static BIN_DEFAULT_DIR:Ljava/lang/String; = null

.field static BIN_ORIG_DEFAULT_DIR:Ljava/lang/String; = null

.field static LANGUAGE_CHINA:I = 0x0

.field static LANGUAGE_ENGLISH:I = 0x0

.field static LANGUAGE_KOREA:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "PNLUtils"

.field private static final SIM_SLOT_1:I = 0x0

.field private static final SIM_SLOT_2:I = 0x1

.field static VERSION_DEFAULT_DIR:Ljava/lang/String;

.field static VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

.field static headerSize:I

.field static mobileSize:I

.field static provinceSize:I

.field static telSize:I

.field static titleSeekCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/16 v0, 0x83

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    const/16 v0, 0x60

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    const/16 v0, 0x81

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    sput v2, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    const-wide/16 v0, 0xc

    sput-wide v0, Lcom/android/incallui/operator/chn/PNLUtils;->titleSeekCount:J

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    sput v2, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    const/4 v0, 0x3

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    const-string v0, "/system/etc/HomeLocationDB.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v0, "/system/etc/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.android.phone/HomeLocationDB.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v0, "/data/data/com.android.phone/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindTencentPLNServer()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->bindTencentPLNServer(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V

    return-void
.end method

.method public static bindTencentPLNServer(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkAndBindService()Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->addBindServiceListener(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V

    :cond_0
    return-void
.end method

.method private static checkCountryNameFromMultipleIdd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_3

    const-string v5, "PNLUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check mSplitIddValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v3, v1

    if-eqz v5, :cond_4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    add-int/lit8 v6, v5, 0x4

    if-lt v4, v6, :cond_4

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v5, 0x3

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    return-object v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static checkRoamingCondition(I)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method static getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x80

    new-array v4, v1, [B

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    move v3, v0

    :goto_1
    if-ge v2, p2, :cond_1

    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, -0x1

    if-ge v2, v1, :cond_2

    aget-byte v1, v4, v2

    if-nez v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v4, v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    :cond_1
    new-array v1, v3, [B

    :goto_3
    if-ge v0, v3, :cond_4

    aget-byte v2, v4, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PNLUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBufferUnicodeString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_4
.end method

.method public static getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v1, "+"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-lt v4, v5, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    const-string v1, "PNLUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCountryCodeLocator original number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "search number:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " country :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    return-object v0

    :cond_5
    invoke-static {p1}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCurrentIddValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->checkCountryNameFromMultipleIdd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v6, v1, 0x4

    if-lt v4, v6, :cond_2

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    add-int/lit8 v0, v1, 0x4

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_1
.end method

.method public static getIddStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 24

    invoke-static {}, Lcom/android/incallui/operator/chn/PNLUtils;->isPhoneNumberLocatorActivited()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "phone_number_locator_tencent"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    const-string v2, ""

    const/4 v2, 0x2

    new-array v8, v2, [B

    const/4 v2, 0x4

    new-array v9, v2, [B

    const/16 v2, 0x20

    new-array v10, v2, [B

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    const-string v2, "PNLUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context.getResources().getConfiguration().locale: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PNLUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locale.CHINA: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh_HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    const-string v3, "PNLUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locale.CHINA currLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x33

    if-ge v6, v7, :cond_8

    const/4 v6, 0x3

    if-lt v3, v6, :cond_7

    const/4 v3, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const/4 v6, 0x0

    move v7, v6

    move-object v6, v3

    :goto_4
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v11, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v11, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v12, "r"

    invoke-direct {v3, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    :goto_5
    const/4 v3, 0x0

    const/4 v11, 0x4

    :try_start_1
    invoke-virtual {v4, v9, v3, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v3, 0x0

    const/16 v11, 0x20

    invoke-virtual {v4, v10, v3, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v3, 0x0

    const/16 v11, 0x20

    invoke-virtual {v4, v10, v3, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v3, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v9, v3, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v9}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v10

    const/4 v3, 0x0

    const/4 v12, 0x4

    invoke-virtual {v4, v9, v3, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v9}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v12

    const/4 v3, 0x0

    const/4 v14, 0x4

    invoke-virtual {v4, v9, v3, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v9}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v14

    const/4 v3, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v4, v9, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v9}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v16

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v18

    const-wide/16 v20, 0x4

    sget-wide v22, Lcom/android/incallui/operator/chn/PNLUtils;->titleSeekCount:J

    mul-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    sget v3, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    mul-long v18, v18, v10

    move-wide/from16 v0, v18

    long-to-int v3, v0

    new-array v3, v3, [B

    const/4 v9, 0x0

    sget v18, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v10, v10, v18

    long-to-int v10, v10

    invoke-virtual {v4, v3, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v7, :cond_13

    sget v7, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    int-to-long v8, v7

    mul-long/2addr v8, v12

    long-to-int v7, v8

    new-array v7, v7, [B

    const/4 v8, 0x0

    sget v9, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    int-to-long v10, v9

    mul-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    long-to-int v8, v12

    invoke-static {v7, v6, v8}, Lcom/android/incallui/operator/chn/PNLUtils;->teleBinarySearch([BII)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_d

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    const-string v3, "PNLUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locale.CHINA currLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    const-string v3, "PNLUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locale.CHINA currLanguage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x4

    if-lt v3, v6, :cond_9

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x7

    if-lt v3, v6, :cond_b

    const/4 v3, 0x0

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move v7, v6

    move-object v6, v3

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v11, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v12, "r"

    invoke-direct {v3, v11, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    goto/16 :goto_5

    :cond_d
    :try_start_4
    sget v8, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v8, v6

    aget-byte v8, v7, v8

    if-gez v8, :cond_e

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_e
    :try_start_6
    sget v9, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    if-ne v2, v9, :cond_11

    if-eqz v8, :cond_21

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_6
    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    :goto_7
    if-eqz v4, :cond_f

    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_f
    :goto_8
    const-string v5, "PNLUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strProvince: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "strCity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "End"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_10
    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    :try_start_8
    sget v9, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    if-ne v2, v9, :cond_12

    if-eqz v8, :cond_20

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_9
    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x40

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_12
    if-eqz v8, :cond_1f

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_a
    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x40

    invoke-static {v7, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_13
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    sget v7, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    int-to-long v0, v7

    move-wide/from16 v18, v0

    mul-long v12, v12, v18

    add-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    sget v7, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    int-to-long v10, v7

    mul-long/2addr v10, v14

    long-to-int v7, v10

    new-array v7, v7, [B

    const/4 v9, 0x0

    sget v10, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    int-to-long v10, v10

    mul-long/2addr v10, v14

    long-to-int v10, v10

    invoke-virtual {v4, v7, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    sget v9, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    int-to-long v10, v9

    mul-long v10, v10, v16

    long-to-int v9, v10

    new-array v9, v9, [B

    const/4 v10, 0x0

    sget v11, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    int-to-long v12, v11

    mul-long v12, v12, v16

    long-to-int v11, v12

    invoke-virtual {v4, v9, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-wide/from16 v0, v16

    long-to-int v11, v0

    invoke-static {v9, v10, v11}, Lcom/android/incallui/operator/chn/PNLUtils;->mobileHeaderSearch([BII)I

    move-result v9

    if-gez v9, :cond_14

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto/16 :goto_0

    :cond_14
    const/16 v10, 0x4e20

    :try_start_a
    new-array v10, v10, [B

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    int-to-long v14, v9

    const-wide/16 v16, 0x2710

    mul-long v14, v14, v16

    const-wide/16 v16, 0x2

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-virtual {v4, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v9, 0x0

    const/16 v11, 0x4e20

    invoke-virtual {v4, v10, v9, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    if-gez v9, :cond_15

    const-string v9, "PNLUtils"

    const-string v11, "count error"

    invoke-static {v9, v11}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    rem-int/lit16 v6, v6, 0x2710

    const/4 v9, 0x0

    mul-int/lit8 v11, v6, 0x2

    aget-byte v11, v10, v11

    aput-byte v11, v8, v9

    const/4 v9, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, v10, v6

    aput-byte v6, v8, v9

    invoke-static {v8}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v6

    if-gtz v6, :cond_16

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    :try_start_b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    goto/16 :goto_0

    :cond_16
    :try_start_c
    sget v8, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v9, v6, -0x1

    mul-int/2addr v8, v9

    aget-byte v8, v7, v8

    if-gez v8, :cond_17

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v3

    goto/16 :goto_0

    :cond_17
    :try_start_e
    sget v9, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    if-ne v2, v9, :cond_18

    if-eqz v8, :cond_1e

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_b
    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v5, v6, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_18
    sget v9, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    if-ne v2, v9, :cond_19

    if-eqz v8, :cond_1d

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_c
    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v5, v6, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, 0x40

    const/16 v5, 0x20

    invoke-static {v7, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_19
    if-eqz v8, :cond_1c

    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v5, v8, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_d
    sget v2, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v5, v6, -0x1

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    const/16 v5, 0x40

    invoke-static {v7, v2, v5}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v2

    goto/16 :goto_7

    :catch_5
    move-exception v2

    move-object v3, v4

    :goto_e
    :try_start_f
    const-string v2, ""
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v3, :cond_0

    :try_start_10
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v3

    goto/16 :goto_0

    :catch_7
    move-exception v2

    :try_start_11
    const-string v2, ""
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_0

    :try_start_12
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :goto_f
    if-eqz v4, :cond_1a

    :try_start_13
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    :cond_1a
    :goto_10
    throw v2

    :cond_1b
    if-nez v2, :cond_0

    const-string v2, ""

    goto/16 :goto_0

    :catch_9
    move-exception v5

    goto/16 :goto_8

    :catch_a
    move-exception v3

    goto :goto_10

    :catchall_1
    move-exception v2

    move-object v4, v3

    goto :goto_f

    :catch_b
    move-exception v2

    move-object v3, v4

    goto :goto_e

    :cond_1c
    move-object v3, v5

    goto :goto_d

    :cond_1d
    move-object v3, v5

    goto :goto_c

    :cond_1e
    move-object v3, v5

    goto/16 :goto_b

    :cond_1f
    move-object v3, v5

    goto/16 :goto_a

    :cond_20
    move-object v3, v5

    goto/16 :goto_9

    :cond_21
    move-object v3, v5

    goto/16 :goto_6
.end method

.method public static getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/chn/PNLUtils;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v2, "PNLUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumberLocator original number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "search number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " city :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static isPhoneNumberLocatorActivited()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "number_region_activation_preference"

    const-string v0, "phone_number_locator_tencent"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v2, "PNLUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LiJian number_region_activation_preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static mobileHeaderSearch([BII)I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    sget v3, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    mul-int/2addr v3, v0

    aget-byte v3, p0, v3

    aput-byte v3, v2, v1

    const/4 v3, 0x1

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v2, v3

    invoke-static {v2}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static readUnsignedInt([B)J
    .locals 9

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const/4 v6, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    or-long/2addr v0, v6

    return-wide v0
.end method

.method public static readUnsignedShort([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xae

    if-eqz p0, :cond_1

    const-string v4, "+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x7f0c0000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c0003

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_3

    :cond_0
    const-string v1, "PNLUtils"

    const-string v2, "No Country names or Codes database exist!!"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    array-length v6, v5

    const-string v1, "+1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    if-le v6, v3, :cond_5

    const/16 v0, 0x85

    aget-object v0, v4, v0

    const-string v1, "United States of America"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "USA"

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x86

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v1, "+7"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    if-le v6, v3, :cond_6

    const/16 v0, 0x73

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1a

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_1

    if-eqz p0, :cond_7

    aget-object v2, v5, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v0, v4, v1

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static startCheckCurrentIddValue(I)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const-string v0, "000"

    const/4 v1, 0x0

    const-string v3, "gsm.operator.numeric"

    const-string v4, ""

    invoke-static {v3, p0, v4}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    array-length v5, v3

    :goto_0
    if-ge v2, v5, :cond_3

    if-eqz v0, :cond_2

    aget-object v6, v3, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v0, v4, v2

    :goto_1
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method static teleBinarySearch([BII)I
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    sget v3, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v3, v0

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, p0, v3

    aput-byte v3, v2, v1

    const/4 v3, 0x1

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v4, v0

    sget v5, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v2, v3

    invoke-static {v2}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static unbindTencentPLNServer()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->unbind()V

    return-void
.end method
