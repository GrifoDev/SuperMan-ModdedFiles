.class public Lcom/android/incallui/operator/chn/PNLUtils;
.super Ljava/lang/Object;
.source "PNLUtils.java"


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

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkAndBindService()Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->addBindServiceListener(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V

    :cond_0
    return-void
.end method

.method private static checkCountryNameFromMultipleIdd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_3

    const-string v7, "PNLUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check mSplitIddValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v7, v6, v2

    if-eqz v7, :cond_4

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v7, v3, 0x4

    if-lt v4, v7, :cond_4

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aget-object v7, v6, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    add-int/lit8 v7, v3, 0x4

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    :cond_3
    return-object v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static checkRoamingCondition(I)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

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
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x80

    new-array v0, v7, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    add-int v7, p1, v3

    aget-byte v7, p0, v7

    aput-byte v7, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_2

    add-int/lit8 v7, p2, -0x1

    if-ge v3, v7, :cond_2

    aget-byte v7, v0, v3

    if-nez v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v0, v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    :cond_1
    new-array v5, v1, [B

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    aget-byte v7, v0, v3

    aput-byte v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-object v6

    :catch_0
    move-exception v2

    const-string v7, "PNLUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBufferUnicodeString: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    goto :goto_4
.end method

.method public static getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x0

    move-object v6, p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-lt v4, v9, :cond_5

    const/4 v7, 0x3

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v7, 0x4

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/4 v7, 0x2

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    const-string v7, "PNLUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCountryCodeLocator original number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "search number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " country :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    return-object v1

    :cond_5
    invoke-static {p1}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCurrentIddValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v6, v3}, Lcom/android/incallui/operator/chn/PNLUtils;->checkCountryNameFromMultipleIdd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    :cond_7
    if-lez v2, :cond_2

    add-int/lit8 v7, v2, 0x4

    if-lt v4, v7, :cond_2

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-nez v1, :cond_9

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    if-nez v1, :cond_2

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getIddStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/android/incallui/operator/chn/PNLUtils;->isPhoneNumberLocatorActivited()Z

    move-result v46

    if-nez v46, :cond_1

    const/16 v42, 0x0

    :cond_0
    :goto_0
    return-object v42

    :cond_1
    const-string v46, "phone_number_locator_tencent"

    invoke-static/range {v46 .. v46}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    goto :goto_0

    :cond_2
    const-string v43, ""

    const-string v42, ""

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v14, v0, [B

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v46, 0x20

    move/from16 v0, v46

    new-array v15, v0, [B

    const/16 v41, 0x0

    const/16 v18, 0x0

    const-wide/16 v6, 0x1f

    const-wide/16 v12, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/16 v29, 0x0

    const/16 v38, 0x0

    const/16 v37, 0x0

    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    const-string v46, "PNLUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "context.getResources().getConfiguration().locale: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v48

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v46, "PNLUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Locale.CHINA: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-object v48, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v46

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v30, v0

    sget-object v46, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    move-object/from16 v0, v30

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_3

    sget-object v46, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    move-object/from16 v0, v30

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_3

    invoke-virtual/range {v30 .. v30}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v46

    const-string v47, "zh_HK"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4

    :cond_3
    const-string v46, "feature_chn"

    invoke-static/range {v46 .. v46}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_4

    const/16 v28, 0x1

    :goto_1
    if-eqz v28, :cond_5

    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    const-string v46, "PNLUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Locale.CHINA currLanguage: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v46, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v46

    const/16 v47, 0x30

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_a

    const/16 v46, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v46

    const/16 v47, 0x33

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_8

    const/16 v46, 0x3

    move/from16 v0, v37

    move/from16 v1, v46

    if-lt v0, v1, :cond_7

    const/16 v46, 0x0

    const/16 v47, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    :goto_3
    const/16 v29, 0x0

    :goto_4
    :try_start_0
    new-instance v35, Ljava/io/File;

    sget-object v46, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_c

    new-instance v39, Ljava/io/RandomAccessFile;

    sget-object v46, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v47, "r"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v38, v39

    :goto_5
    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    const/16 v46, 0x0

    const/16 v47, 0x20

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    const/16 v46, 0x0

    const/16 v47, 0x20

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v6

    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v12

    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v8

    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v10

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    const-wide/16 v46, 0x4

    sget-wide v48, Lcom/android/incallui/operator/chn/PNLUtils;->titleSeekCount:J

    mul-long v46, v46, v48

    add-long v46, v46, v22

    move-object/from16 v0, v38

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v46, v46, v6

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v46, 0x0

    sget v47, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v48, v48, v6

    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v47, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    if-nez v29, :cond_16

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v46, v46, v12

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v44, v0

    const/16 v46, 0x0

    sget v47, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v48, v48, v12

    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v47, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    long-to-int v0, v12

    move/from16 v46, v0

    move-object/from16 v0, v44

    move/from16 v1, v26

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->teleBinarySearch([BII)I

    move-result v45

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v42, 0x0

    if-eqz v38, :cond_0

    :try_start_1
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v46

    goto/16 :goto_0

    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v46

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v46, v0

    sget-object v47, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual/range {v46 .. v47}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_6

    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    const-string v46, "PNLUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Locale.CHINA currLanguage: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    const-string v46, "PNLUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Locale.CHINA currLanguage: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const/16 v42, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v46, 0x4

    move/from16 v0, v37

    move/from16 v1, v46

    if-lt v0, v1, :cond_9

    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_3

    :cond_9
    const/16 v42, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v46, 0x7

    move/from16 v0, v37

    move/from16 v1, v46

    if-lt v0, v1, :cond_b

    const/16 v46, 0x0

    const/16 v47, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x1

    goto/16 :goto_4

    :cond_b
    const/16 v42, 0x0

    goto/16 :goto_0

    :cond_c
    :try_start_2
    new-instance v39, Ljava/io/RandomAccessFile;

    sget-object v46, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v47, "r"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v38, v39

    goto/16 :goto_5

    :cond_d
    const/4 v5, 0x0

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int v46, v46, v45

    aget-byte v5, v44, v46

    move/from16 v40, v5

    if-gez v40, :cond_e

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v42, 0x0

    if-eqz v38, :cond_0

    :try_start_3
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v46

    goto/16 :goto_0

    :cond_e
    :try_start_4
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    if-eqz v40, :cond_f

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    :cond_f
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int v46, v46, v45

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x20

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v18

    :goto_6
    if-eqz v38, :cond_10

    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_10
    :goto_7
    move-object/from16 v43, v41

    move-object/from16 v42, v18

    const-string v46, "PNLUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "strProvince: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "strCity: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "End"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v38, :cond_11

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V

    :cond_11
    if-eqz v43, :cond_21

    if-eqz v42, :cond_21

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_0

    :cond_12
    :try_start_6
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_14

    if-eqz v40, :cond_13

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    add-int/lit8 v46, v46, 0x20

    add-int/lit8 v46, v46, 0x20

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    :cond_13
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int v46, v46, v45

    add-int/lit8 v46, v46, 0x1

    add-int/lit8 v46, v46, 0x20

    add-int/lit8 v46, v46, 0x40

    const/16 v47, 0x20

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    :cond_14
    if-eqz v40, :cond_15

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    add-int/lit8 v46, v46, 0x20

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    :cond_15
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int v46, v46, v45

    add-int/lit8 v46, v46, 0x1

    add-int/lit8 v46, v46, 0x20

    const/16 v47, 0x40

    move-object/from16 v0, v44

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    :cond_16
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v46, v46, v12

    add-long v46, v46, v22

    move-object/from16 v0, v38

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v46, v46, v8

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v32, v0

    const/16 v46, 0x0

    sget v47, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v48, v48, v8

    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v47, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v46, v46, v10

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v25, v0

    const/16 v46, 0x0

    sget v47, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v48, v48, v10

    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v47, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    const/16 v46, 0x0

    const/16 v47, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    long-to-int v0, v10

    move/from16 v46, v0

    move-object/from16 v0, v25

    move/from16 v1, v36

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->mobileHeaderSearch([BII)I

    move-result v24

    if-gez v24, :cond_17

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v42, 0x0

    if-eqz v38, :cond_0

    :try_start_7
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v46

    goto/16 :goto_0

    :cond_17
    const/16 v46, 0x4e20

    :try_start_8
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v34, v0

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x2710

    mul-long v46, v46, v48

    const-wide/16 v48, 0x2

    mul-long v46, v46, v48

    add-long v46, v46, v22

    move-object/from16 v0, v38

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v46, 0x0

    const/16 v47, 0x4e20

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    if-gez v19, :cond_18

    const-string v46, "PNLUtils"

    const-string v47, "count error"

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move/from16 v0, v26

    rem-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    const/16 v46, 0x0

    mul-int/lit8 v47, v31, 0x2

    aget-byte v47, v34, v47

    aput-byte v47, v14, v46

    const/16 v46, 0x1

    mul-int/lit8 v47, v31, 0x2

    add-int/lit8 v47, v47, 0x1

    aget-byte v47, v34, v47

    aput-byte v47, v14, v46

    invoke-static {v14}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v4

    if-gtz v4, :cond_19

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v42, 0x0

    if-eqz v38, :cond_0

    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v46

    goto/16 :goto_0

    :cond_19
    const/4 v5, 0x0

    :try_start_a
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v47, v4, -0x1

    mul-int v46, v46, v47

    aget-byte v5, v32, v46

    move/from16 v40, v5

    if-gez v40, :cond_1a

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v42, 0x0

    if-eqz v38, :cond_0

    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v46

    goto/16 :goto_0

    :cond_1a
    :try_start_c
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_1c

    if-eqz v40, :cond_1b

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    :cond_1b
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v47, v4, -0x1

    mul-int v46, v46, v47

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x20

    move-object/from16 v0, v32

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    :cond_1c
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_1e

    if-eqz v40, :cond_1d

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    add-int/lit8 v46, v46, 0x20

    add-int/lit8 v46, v46, 0x20

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    :cond_1d
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v47, v4, -0x1

    mul-int v46, v46, v47

    add-int/lit8 v46, v46, 0x1

    add-int/lit8 v46, v46, 0x20

    add-int/lit8 v46, v46, 0x40

    const/16 v47, 0x20

    move-object/from16 v0, v32

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_6

    :cond_1e
    if-eqz v40, :cond_1f

    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    add-int/lit8 v46, v46, 0x20

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    :cond_1f
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v47, v4, -0x1

    mul-int v46, v46, v47

    add-int/lit8 v46, v46, 0x1

    add-int/lit8 v46, v46, 0x20

    const/16 v47, 0x40

    move-object/from16 v0, v32

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v18

    goto/16 :goto_6

    :catch_5
    move-exception v21

    :try_start_d
    const-string v42, ""
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v38, :cond_0

    :try_start_e
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v46

    goto/16 :goto_0

    :catch_7
    move-exception v21

    :try_start_f
    const-string v42, ""
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v38, :cond_0

    :try_start_10
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v46

    goto/16 :goto_0

    :catchall_0
    move-exception v46

    if-eqz v38, :cond_20

    :try_start_11
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    :cond_20
    :goto_8
    throw v46

    :cond_21
    if-nez v42, :cond_0

    const-string v42, ""

    goto/16 :goto_0

    :catch_9
    move-exception v46

    goto/16 :goto_7

    :catch_a
    move-exception v47

    goto :goto_8
.end method

.method public static getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move-object v2, p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v3, "PNLUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneNumberLocator original number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "search number:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " city :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    const-string v0, ""

    goto :goto_0
.end method

.method public static isPhoneNumberLocatorActivited()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "number_region_activation_preference"

    const-string v2, "phone_number_locator_tencent"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "PNLUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LiJian number_region_activation_preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method static mobileHeaderSearch([BII)I
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v1, v3, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    const/4 v3, 0x0

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    mul-int/2addr v4, v2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    invoke-static {v1}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static readUnsignedInt([B)J
    .locals 11

    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    const/4 v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    const/4 v8, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public static readUnsignedShort([B)I
    .locals 3

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    or-int v2, v0, v1

    return v2
.end method

.method private static startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xae

    if-eqz p0, :cond_6

    const-string v9, "+"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v4, p0

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f0c0000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_0

    if-nez v5, :cond_2

    :cond_0
    const-string v9, "PNLUtils"

    const-string v10, "No Country names or Codes database exist!!"

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1
    return-object v9

    :cond_1
    const-string v9, "+"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    array-length v8, v5

    const-string v9, "+1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    if-le v8, v0, :cond_4

    const/16 v9, 0x85

    aget-object v7, v6, v9

    const-string v9, "United States of America"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v7, "USA"

    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x86

    aget-object v9, v6, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    goto :goto_1

    :cond_4
    const-string v9, "+7"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v6, :cond_5

    if-le v8, v0, :cond_5

    const/16 v9, 0x73

    aget-object v9, v6, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x1a

    aget-object v9, v6, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_6

    if-eqz v4, :cond_7

    aget-object v9, v5, v3

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    aget-object v7, v6, v3

    :cond_6
    move-object v9, v7

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static startCheckCurrentIddValue(I)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v4, "000"

    const/4 v2, 0x0

    const-string v7, "gsm.operator.numeric"

    const-string v8, ""

    invoke-static {v7, p0, v8}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    array-length v6, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    if-eqz v4, :cond_3

    aget-object v7, v3, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    aget-object v2, v1, v0

    :cond_1
    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static teleBinarySearch([BII)I
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v1, v3, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    const/4 v3, 0x0

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    invoke-static {v1}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static unbindTencentPLNServer()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->unbind()V

    return-void
.end method
