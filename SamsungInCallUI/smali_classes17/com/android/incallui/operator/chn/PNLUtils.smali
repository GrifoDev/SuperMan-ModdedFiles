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

    .prologue
    const/4 v2, 0x2

    .line 40
    const/16 v0, 0x83

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    .line 41
    const/16 v0, 0x60

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    .line 42
    const/16 v0, 0x81

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    .line 43
    sput v2, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    .line 44
    const-wide/16 v0, 0xc

    sput-wide v0, Lcom/android/incallui/operator/chn/PNLUtils;->titleSeekCount:J

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    .line 46
    sput v2, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    .line 47
    const/4 v0, 0x3

    sput v0, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    .line 51
    const-string v0, "/system/etc/HomeLocationDB.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 52
    const-string v0, "/system/etc/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->VERSION_ORIG_DEFAULT_DIR:Ljava/lang/String;

    .line 53
    const-string v0, "/data/data/com.android.phone/HomeLocationDB.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    .line 54
    const-string v0, "/data/data/com.android.phone/HomeLocationVersion.bin"

    sput-object v0, Lcom/android/incallui/operator/chn/PNLUtils;->VERSION_DEFAULT_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindTencentPLNServer()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->bindTencentPLNServer(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V

    .line 343
    return-void
.end method

.method public static bindTencentPLNServer(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;

    .prologue
    .line 346
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 347
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->setContext(Landroid/content/Context;)V

    .line 348
    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkAndBindService()Z

    .line 349
    if-eqz p0, :cond_0

    .line 350
    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->addBindServiceListener(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V

    .line 352
    :cond_0
    return-void
.end method

.method private static checkCountryNameFromMultipleIdd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "iddValue"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "mCountryName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 148
    .local v0, "mCheckNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 149
    .local v5, "mSearchNumberIdd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 150
    .local v4, "mSearchLength":I
    const/4 v2, 0x0

    .line 151
    .local v2, "mIddIndex":I
    const/4 v3, 0x0

    .line 153
    .local v3, "mIddLength":I
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 154
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "mSplitIddValue":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 157
    const/4 v2, 0x0

    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 158
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

    .line 159
    aget-object v7, v6, v2

    if-eqz v7, :cond_4

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 160
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 161
    if-lez v3, :cond_4

    add-int/lit8 v7, v3, 0x4

    if-lt v4, v7, :cond_4

    .line 162
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 164
    aget-object v7, v6, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 165
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    if-nez v1, :cond_0

    .line 168
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    :cond_0
    if-nez v1, :cond_1

    .line 172
    add-int/lit8 v7, v3, 0x4

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_1
    if-nez v1, :cond_2

    .line 176
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_2
    if-eqz v1, :cond_4

    .line 185
    .end local v6    # "mSplitIddValue":[Ljava/lang/String;
    :cond_3
    return-object v1

    .line 157
    .restart local v6    # "mSplitIddValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static checkRoamingCondition(I)Z
    .locals 2
    .param p0, "phoneIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "isRoaming":Z
    if-nez p0, :cond_1

    .line 636
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v0

    .line 640
    :cond_0
    :goto_0
    return v0

    .line 637
    :cond_1
    if-ne p0, v1, :cond_0

    .line 638
    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method static getBufferUnicodeString([BII)Ljava/lang/String;
    .locals 10
    .param p0, "buffer"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 310
    const/4 v4, 0x0

    .line 311
    .local v4, "isStringEnd":Z
    const/4 v1, 0x0

    .line 312
    .local v1, "count":I
    const/4 v3, 0x0

    .line 313
    .local v3, "i":I
    const/16 v7, 0x80

    new-array v0, v7, [B

    .line 315
    .local v0, "buffer128":[B
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    .line 316
    add-int v7, p1, v3

    aget-byte v7, p0, v7

    aput-byte v7, v0, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_1

    .line 319
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

    .line 321
    :goto_2
    if-eqz v4, :cond_3

    .line 327
    :cond_1
    new-array v5, v1, [B

    .line 328
    .local v5, "newBuffer":[B
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 329
    aget-byte v7, v0, v3

    aput-byte v7, v5, v3

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 319
    .end local v5    # "newBuffer":[B
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 324
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 333
    .restart local v5    # "newBuffer":[B
    :cond_4
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-16LE"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_4
    return-object v6

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/Exception;
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

    .line 338
    const-string v6, ""

    goto :goto_4
.end method

.method public static getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "phoneIndex"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 80
    move-object v6, p0

    .line 81
    .local v6, "search_number":Ljava/lang/String;
    const/4 v1, 0x0

    .line 82
    .local v1, "mCountryName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 83
    .local v3, "mIddValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 84
    .local v0, "mCheckNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 85
    .local v5, "mSearchNumberIdd":Ljava/lang/String;
    const/4 v4, 0x0

    .line 87
    .local v4, "mSearchLength":I
    if-eqz p0, :cond_3

    .line 88
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 91
    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-lt v4, v9, :cond_5

    .line 93
    const/4 v7, 0x3

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    .line 96
    const/4 v7, 0x4

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_0
    if-nez v1, :cond_1

    .line 100
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_1
    if-nez v1, :cond_2

    .line 104
    const/4 v7, 0x2

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
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

    .line 139
    :cond_3
    if-nez v1, :cond_4

    .line 140
    const-string v1, ""

    .line 142
    :cond_4
    return-object v1

    .line 109
    :cond_5
    invoke-static {p1}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCurrentIddValue(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_6

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 111
    invoke-static {v6, v3}, Lcom/android/incallui/operator/chn/PNLUtils;->checkCountryNameFromMultipleIdd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_6
    const/4 v2, 0x0

    .line 114
    .local v2, "mIddLength":I
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    :cond_7
    if-lez v2, :cond_2

    add-int/lit8 v7, v2, 0x4

    if-lt v4, v7, :cond_2

    .line 116
    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-nez v1, :cond_8

    .line 122
    add-int/lit8 v7, v2, 0x3

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_8
    if-nez v1, :cond_9

    .line 126
    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_9
    if-nez v1, :cond_2

    .line 130
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/android/incallui/operator/chn/PNLUtils;->startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getIddStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 263
    .local v0, "iddStr":Ljava/lang/String;
    return-object v0
.end method

.method static getNumberProvinceAndCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 50
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "incomingCallNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lcom/android/incallui/operator/chn/PNLUtils;->isPhoneNumberLocatorActivited()Z

    move-result v46

    if-nez v46, :cond_1

    .line 374
    const/16 v42, 0x0

    .line 601
    :cond_0
    :goto_0
    return-object v42

    .line 377
    :cond_1
    const-string v46, "phone_number_locator_tencent"

    invoke-static/range {v46 .. v46}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_2

    .line 378
    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    goto :goto_0

    .line 381
    :cond_2
    const-string v43, ""

    .line 382
    .local v43, "strProvince":Ljava/lang/String;
    const-string v42, ""

    .line 383
    .local v42, "strCity":Ljava/lang/String;
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v14, v0, [B

    .line 384
    .local v14, "buffer2":[B
    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 385
    .local v16, "buffer4":[B
    const/16 v46, 0x20

    move/from16 v0, v46

    new-array v15, v0, [B

    .line 386
    .local v15, "buffer32":[B
    const/16 v41, 0x0

    .line 387
    .local v41, "province":Ljava/lang/String;
    const/16 v18, 0x0

    .line 388
    .local v18, "city":Ljava/lang/String;
    const-wide/16 v6, 0x1f

    .line 389
    .local v6, "NumofProvince":J
    const-wide/16 v12, 0x0

    .line 390
    .local v12, "Numoftelephonecity":J
    const-wide/16 v8, 0x0

    .line 391
    .local v8, "Numofmobilecity":J
    const-wide/16 v10, 0x0

    .line 392
    .local v10, "Numofprefix":J
    const/16 v29, 0x0

    .line 394
    .local v29, "isMobileNumber":Z
    const/16 v38, 0x0

    .line 395
    .local v38, "ois":Ljava/io/RandomAccessFile;
    const/16 v37, 0x0

    .line 396
    .local v37, "numberLength":I
    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    .line 398
    .local v20, "currLanguage":I
    const-string v46, "PNLUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "context.getResources().getConfiguration().locale: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    .line 399
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

    .line 398
    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
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

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v46

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v30, v0

    .line 404
    .local v30, "locale":Ljava/util/Locale;
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

    .line 405
    .local v28, "isChinese":Z
    :goto_1
    if-eqz v28, :cond_5

    .line 406
    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    .line 407
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

    .line 415
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v37

    .line 417
    const/16 v46, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v46

    const/16 v47, 0x30

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_a

    .line 418
    const/16 v46, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v46

    const/16 v47, 0x33

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_8

    .line 419
    const/16 v46, 0x3

    move/from16 v0, v37

    move/from16 v1, v46

    if-lt v0, v1, :cond_7

    .line 420
    const/16 v46, 0x0

    const/16 v47, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 431
    .local v27, "incomingCallNumPrefix":Ljava/lang/String;
    :goto_3
    const/16 v29, 0x0

    .line 441
    :goto_4
    :try_start_0
    new-instance v35, Ljava/io/File;

    sget-object v46, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v35, "myFile":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_c

    .line 443
    new-instance v39, Ljava/io/RandomAccessFile;

    sget-object v46, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_DEFAULT_DIR:Ljava/lang/String;

    const-string v47, "r"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v38    # "ois":Ljava/io/RandomAccessFile;
    .local v39, "ois":Ljava/io/RandomAccessFile;
    move-object/from16 v38, v39

    .line 448
    .end local v39    # "ois":Ljava/io/RandomAccessFile;
    .restart local v38    # "ois":Ljava/io/RandomAccessFile;
    :goto_5
    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 449
    .local v19, "count":I
    const/16 v46, 0x0

    const/16 v47, 0x20

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 450
    const/16 v46, 0x0

    const/16 v47, 0x20

    move-object/from16 v0, v38

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 451
    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 452
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v6

    .line 453
    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 454
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v12

    .line 455
    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 456
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v8

    .line 457
    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 458
    invoke-static/range {v16 .. v16}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedInt([B)J

    move-result-wide v10

    .line 480
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    .line 481
    .local v22, "currentPos":J
    const-wide/16 v46, 0x4

    sget-wide v48, Lcom/android/incallui/operator/chn/PNLUtils;->titleSeekCount:J

    mul-long v46, v46, v48

    add-long v46, v46, v22

    move-object/from16 v0, v38

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 484
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

    .line 485
    .local v17, "bufferProvince":[B
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

    .line 487
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 488
    .local v26, "iNum":I
    if-nez v29, :cond_16

    .line 489
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

    .line 490
    .local v44, "telephoneCityProvince":[B
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

    .line 492
    long-to-int v0, v12

    move/from16 v46, v0

    move-object/from16 v0, v44

    move/from16 v1, v26

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->teleBinarySearch([BII)I

    move-result v45

    .line 493
    .local v45, "telret":I
    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_d

    .line 494
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    const/16 v42, 0x0

    .line 587
    .end local v42    # "strCity":Ljava/lang/String;
    if-eqz v38, :cond_0

    :try_start_1
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 588
    :catch_0
    move-exception v46

    goto/16 :goto_0

    .line 404
    .end local v17    # "bufferProvince":[B
    .end local v19    # "count":I
    .end local v22    # "currentPos":J
    .end local v26    # "iNum":I
    .end local v27    # "incomingCallNumPrefix":Ljava/lang/String;
    .end local v28    # "isChinese":Z
    .end local v35    # "myFile":Ljava/io/File;
    .end local v44    # "telephoneCityProvince":[B
    .end local v45    # "telret":I
    .restart local v42    # "strCity":Ljava/lang/String;
    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 408
    .restart local v28    # "isChinese":Z
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

    .line 409
    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    .line 410
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

    .line 412
    :cond_6
    sget v20, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_ENGLISH:I

    .line 413
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

    .line 422
    :cond_7
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 425
    :cond_8
    const/16 v46, 0x4

    move/from16 v0, v37

    move/from16 v1, v46

    if-lt v0, v1, :cond_9

    .line 426
    const/16 v46, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "incomingCallNumPrefix":Ljava/lang/String;
    goto/16 :goto_3

    .line 428
    .end local v27    # "incomingCallNumPrefix":Ljava/lang/String;
    :cond_9
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 433
    :cond_a
    const/16 v46, 0x7

    move/from16 v0, v37

    move/from16 v1, v46

    if-lt v0, v1, :cond_b

    .line 434
    const/16 v46, 0x0

    const/16 v47, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 438
    .restart local v27    # "incomingCallNumPrefix":Ljava/lang/String;
    const/16 v29, 0x1

    goto/16 :goto_4

    .line 436
    .end local v27    # "incomingCallNumPrefix":Ljava/lang/String;
    :cond_b
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 445
    .restart local v27    # "incomingCallNumPrefix":Ljava/lang/String;
    .restart local v35    # "myFile":Ljava/io/File;
    :cond_c
    :try_start_2
    new-instance v39, Ljava/io/RandomAccessFile;

    sget-object v46, Lcom/android/incallui/operator/chn/PNLUtils;->BIN_ORIG_DEFAULT_DIR:Ljava/lang/String;

    const-string v47, "r"

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v38    # "ois":Ljava/io/RandomAccessFile;
    .restart local v39    # "ois":Ljava/io/RandomAccessFile;
    move-object/from16 v38, v39

    .end local v39    # "ois":Ljava/io/RandomAccessFile;
    .restart local v38    # "ois":Ljava/io/RandomAccessFile;
    goto/16 :goto_5

    .line 497
    .restart local v17    # "bufferProvince":[B
    .restart local v19    # "count":I
    .restart local v22    # "currentPos":J
    .restart local v26    # "iNum":I
    .restart local v44    # "telephoneCityProvince":[B
    .restart local v45    # "telret":I
    :cond_d
    const/4 v5, 0x0

    .line 498
    .local v5, "buffer1":B
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int v46, v46, v45

    aget-byte v5, v44, v46

    .line 499
    move/from16 v40, v5

    .line 500
    .local v40, "proindex":I
    if-gez v40, :cond_e

    .line 501
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    const/16 v42, 0x0

    .line 587
    .end local v42    # "strCity":Ljava/lang/String;
    if-eqz v38, :cond_0

    :try_start_3
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 588
    :catch_1
    move-exception v46

    goto/16 :goto_0

    .line 504
    .restart local v42    # "strCity":Ljava/lang/String;
    :cond_e
    :try_start_4
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    .line 505
    if-eqz v40, :cond_f

    .line 506
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    .line 508
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

    .line 587
    .end local v44    # "telephoneCityProvince":[B
    .end local v45    # "telret":I
    :goto_6
    if-eqz v38, :cond_10

    :try_start_5
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 591
    :cond_10
    :goto_7
    move-object/from16 v43, v41

    .line 592
    move-object/from16 v42, v18

    .line 594
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

    .line 595
    if-eqz v38, :cond_11

    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V

    .line 596
    :cond_11
    if-eqz v43, :cond_21

    if-eqz v42, :cond_21

    .line 597
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

    .line 509
    .restart local v44    # "telephoneCityProvince":[B
    .restart local v45    # "telret":I
    :cond_12
    :try_start_6
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_14

    .line 510
    if-eqz v40, :cond_13

    .line 511
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

    .line 513
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

    .line 515
    :cond_14
    if-eqz v40, :cond_15

    .line 516
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

    .line 518
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

    .line 522
    .end local v5    # "buffer1":B
    .end local v40    # "proindex":I
    .end local v44    # "telephoneCityProvince":[B
    .end local v45    # "telret":I
    :cond_16
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    .line 523
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v46, v46, v12

    add-long v46, v46, v22

    move-object/from16 v0, v38

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 525
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

    .line 526
    .local v32, "mobileCityProvince":[B
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

    .line 530
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

    .line 531
    .local v25, "headerbuf":[B
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

    .line 533
    const/16 v46, 0x0

    const/16 v47, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 534
    .local v33, "mobileHeader":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 535
    .local v36, "nMobileHeader":I
    long-to-int v0, v10

    move/from16 v46, v0

    move-object/from16 v0, v25

    move/from16 v1, v36

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->mobileHeaderSearch([BII)I

    move-result v24

    .line 536
    .local v24, "headerIndex":I
    if-gez v24, :cond_17

    .line 537
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 538
    const/16 v42, 0x0

    .line 587
    .end local v42    # "strCity":Ljava/lang/String;
    if-eqz v38, :cond_0

    :try_start_7
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 588
    :catch_2
    move-exception v46

    goto/16 :goto_0

    .line 540
    .restart local v42    # "strCity":Ljava/lang/String;
    :cond_17
    const/16 v46, 0x4e20

    :try_start_8
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v34, v0

    .line 542
    .local v34, "mobilebuf":[B
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    .line 543
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

    .line 545
    const/16 v46, 0x0

    const/16 v47, 0x4e20

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v19

    .line 546
    if-gez v19, :cond_18

    .line 547
    const-string v46, "PNLUtils"

    const-string v47, "count error"

    invoke-static/range {v46 .. v47}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_18
    move/from16 v0, v26

    rem-int/lit16 v0, v0, 0x2710

    move/from16 v31, v0

    .line 549
    .local v31, "lowMobile":I
    const/16 v46, 0x0

    mul-int/lit8 v47, v31, 0x2

    aget-byte v47, v34, v47

    aput-byte v47, v14, v46

    .line 550
    const/16 v46, 0x1

    mul-int/lit8 v47, v31, 0x2

    add-int/lit8 v47, v47, 0x1

    aget-byte v47, v34, v47

    aput-byte v47, v14, v46

    .line 551
    invoke-static {v14}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v4

    .line 552
    .local v4, "CityIndex":I
    if-gtz v4, :cond_19

    .line 553
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 554
    const/16 v42, 0x0

    .line 587
    .end local v42    # "strCity":Ljava/lang/String;
    if-eqz v38, :cond_0

    :try_start_9
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 588
    :catch_3
    move-exception v46

    goto/16 :goto_0

    .line 556
    .restart local v42    # "strCity":Ljava/lang/String;
    :cond_19
    const/4 v5, 0x0

    .line 557
    .restart local v5    # "buffer1":B
    :try_start_a
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->mobileSize:I

    add-int/lit8 v47, v4, -0x1

    mul-int v46, v46, v47

    aget-byte v5, v32, v46

    .line 558
    move/from16 v40, v5

    .line 559
    .restart local v40    # "proindex":I
    if-gez v40, :cond_1a

    .line 560
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 561
    const/16 v42, 0x0

    .line 587
    .end local v42    # "strCity":Ljava/lang/String;
    if-eqz v38, :cond_0

    :try_start_b
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 588
    :catch_4
    move-exception v46

    goto/16 :goto_0

    .line 563
    .restart local v42    # "strCity":Ljava/lang/String;
    :cond_1a
    :try_start_c
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_CHINA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_1c

    .line 565
    if-eqz v40, :cond_1b

    .line 566
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->provinceSize:I

    add-int/lit8 v47, v40, -0x1

    mul-int v46, v46, v47

    const/16 v47, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-static {v0, v1, v2}, Lcom/android/incallui/operator/chn/PNLUtils;->getBufferUnicodeString([BII)Ljava/lang/String;

    move-result-object v41

    .line 568
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

    .line 569
    :cond_1c
    sget v46, Lcom/android/incallui/operator/chn/PNLUtils;->LANGUAGE_KOREA:I

    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_1e

    .line 570
    if-eqz v40, :cond_1d

    .line 571
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

    .line 573
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

    .line 575
    :cond_1e
    if-eqz v40, :cond_1f

    .line 576
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

    .line 578
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

    .line 581
    .end local v4    # "CityIndex":I
    .end local v5    # "buffer1":B
    .end local v17    # "bufferProvince":[B
    .end local v19    # "count":I
    .end local v22    # "currentPos":J
    .end local v24    # "headerIndex":I
    .end local v25    # "headerbuf":[B
    .end local v26    # "iNum":I
    .end local v31    # "lowMobile":I
    .end local v32    # "mobileCityProvince":[B
    .end local v33    # "mobileHeader":Ljava/lang/String;
    .end local v34    # "mobilebuf":[B
    .end local v35    # "myFile":Ljava/io/File;
    .end local v36    # "nMobileHeader":I
    .end local v40    # "proindex":I
    :catch_5
    move-exception v21

    .line 582
    .local v21, "e":Ljava/lang/OutOfMemoryError;
    :try_start_d
    const-string v42, ""
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 587
    .end local v42    # "strCity":Ljava/lang/String;
    if-eqz v38, :cond_0

    :try_start_e
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 588
    :catch_6
    move-exception v46

    goto/16 :goto_0

    .line 583
    .end local v21    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v42    # "strCity":Ljava/lang/String;
    :catch_7
    move-exception v21

    .line 584
    .local v21, "e":Ljava/lang/Exception;
    :try_start_f
    const-string v42, ""
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 587
    .end local v42    # "strCity":Ljava/lang/String;
    if-eqz v38, :cond_0

    :try_start_10
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 588
    :catch_8
    move-exception v46

    goto/16 :goto_0

    .line 586
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v42    # "strCity":Ljava/lang/String;
    :catchall_0
    move-exception v46

    .line 587
    if-eqz v38, :cond_20

    :try_start_11
    invoke-virtual/range {v38 .. v38}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 589
    :cond_20
    :goto_8
    throw v46

    .line 598
    .restart local v5    # "buffer1":B
    .restart local v17    # "bufferProvince":[B
    .restart local v19    # "count":I
    .restart local v22    # "currentPos":J
    .restart local v26    # "iNum":I
    .restart local v35    # "myFile":Ljava/io/File;
    .restart local v40    # "proindex":I
    :cond_21
    if-nez v42, :cond_0

    .line 601
    const-string v42, ""

    goto/16 :goto_0

    .line 588
    :catch_9
    move-exception v46

    goto/16 :goto_7

    .end local v5    # "buffer1":B
    .end local v17    # "bufferProvince":[B
    .end local v19    # "count":I
    .end local v22    # "currentPos":J
    .end local v26    # "iNum":I
    .end local v35    # "myFile":Ljava/io/File;
    .end local v40    # "proindex":I
    :catch_a
    move-exception v47

    goto :goto_8
.end method

.method public static getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "city_name":Ljava/lang/String;
    move-object v2, p0

    .line 61
    .local v2, "search_number":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 62
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 67
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

    .line 71
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

    .line 73
    :cond_1
    if-nez v0, :cond_2

    .line 74
    const-string v0, ""

    .line 76
    :cond_2
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, ""

    goto :goto_0
.end method

.method public static isPhoneNumberLocatorActivited()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 361
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "number_region_activation_preference"

    const-string v2, "phone_number_locator_tencent"

    .line 362
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 360
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 363
    .local v1, "numberRegionActivited":I
    if-nez v1, :cond_1

    .line 364
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

    .line 368
    :goto_1
    return v3

    .end local v1    # "numberRegionActivited":I
    :cond_0
    move v2, v4

    .line 362
    goto :goto_0

    .restart local v1    # "numberRegionActivited":I
    :cond_1
    move v3, v4

    .line 368
    goto :goto_1
.end method

.method static mobileHeaderSearch([BII)I
    .locals 5
    .param p0, "header"    # [B
    .param p1, "iNum"    # I
    .param p2, "count"    # I

    .prologue
    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "i":I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 298
    .local v1, "buffer2":[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 299
    const/4 v3, 0x0

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    mul-int/2addr v4, v2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 300
    const/4 v3, 0x1

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->headerSize:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 301
    invoke-static {v1}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v0

    .line 302
    .local v0, "areaCode":I
    if-ne v0, p1, :cond_0

    .line 306
    .end local v0    # "areaCode":I
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 298
    .restart local v0    # "areaCode":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "areaCode":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static readUnsignedInt([B)J
    .locals 11
    .param p0, "bytes"    # [B

    .prologue
    .line 267
    const/4 v8, 0x0

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v0, v8

    .line 268
    .local v0, "b0":J
    const/4 v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x8

    shl-long v2, v8, v10

    .line 269
    .local v2, "b1":J
    const/4 v8, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v4, v8, v10

    .line 270
    .local v4, "b2":J
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long v6, v8, v10

    .line 271
    .local v6, "b3":J
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    return-wide v8
.end method

.method public static readUnsignedShort([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 275
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    .line 276
    .local v0, "b0":I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x8

    .line 277
    .local v1, "b1":I
    or-int v2, v0, v1

    return v2
.end method

.method private static startCheckCountryCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "CheckNumber"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v6, 0x0

    .line 190
    .local v6, "mCountry":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 191
    .local v5, "mCode":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 192
    .local v7, "mCountryName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 193
    .local v4, "mCheckNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v2, "checkString":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v1, "checkName":Ljava/lang/StringBuilder;
    const/16 v0, 0xae

    .line 197
    .local v0, "MaxCount":I
    if-eqz p0, :cond_6

    .line 198
    const-string v9, "+"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 199
    move-object v4, p0

    .line 206
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

    .line 207
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 208
    if-eqz v6, :cond_0

    if-nez v5, :cond_2

    .line 209
    :cond_0
    const-string v9, "PNLUtils"

    const-string v10, "No Country names or Codes database exist!!"

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v9, 0x0

    .line 247
    :goto_1
    return-object v9

    .line 201
    :cond_1
    const-string v9, "+"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 213
    :cond_2
    array-length v8, v5

    .line 215
    .local v8, "mTotalCountryCount":I
    const-string v9, "+1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    if-le v8, v0, :cond_4

    .line 218
    const/16 v9, 0x85

    aget-object v7, v6, v9

    .line 219
    const-string v9, "United States of America"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 220
    const-string v7, "USA"

    .line 222
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/16 v9, 0x86

    aget-object v9, v6, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    .line 226
    goto :goto_1

    .line 229
    :cond_4
    const-string v9, "+7"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v6, :cond_5

    if-le v8, v0, :cond_5

    .line 232
    const/16 v9, 0x73

    aget-object v9, v6, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/16 v9, 0x1a

    aget-object v9, v6, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    .line 236
    goto :goto_1

    .line 239
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_6

    .line 240
    if-eqz v4, :cond_7

    aget-object v9, v5, v3

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 241
    aget-object v7, v6, v3

    .end local v3    # "i":I
    .end local v8    # "mTotalCountryCount":I
    :cond_6
    move-object v9, v7

    .line 247
    goto :goto_1

    .line 239
    .restart local v3    # "i":I
    .restart local v8    # "mTotalCountryCount":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static startCheckCurrentIddValue(I)Ljava/lang/String;
    .locals 9
    .param p0, "phoneId"    # I

    .prologue
    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, "mMcc":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 607
    .local v1, "mIdd":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 608
    .local v5, "mNetworkNumeric":Ljava/lang/String;
    const-string v4, "000"

    .line 609
    .local v4, "mNetworkMcc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 611
    .local v2, "mIddValue":Ljava/lang/String;
    const-string v7, "gsm.operator.numeric"

    const-string v8, ""

    invoke-static {v7, p0, v8}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 612
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 613
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 615
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

    .line 616
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 618
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 619
    array-length v6, v3

    .line 620
    .local v6, "mTotalCountryCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 621
    if-eqz v4, :cond_3

    aget-object v7, v3, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 622
    aget-object v2, v1, v0

    .line 627
    .end local v0    # "i":I
    .end local v6    # "mTotalCountryCount":I
    :cond_1
    if-nez v2, :cond_2

    .line 628
    const-string v2, ""

    .line 630
    :cond_2
    return-object v2

    .line 620
    .restart local v0    # "i":I
    .restart local v6    # "mTotalCountryCount":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static teleBinarySearch([BII)I
    .locals 6
    .param p0, "telephoneCityProvince"    # [B
    .param p1, "iNum"    # I
    .param p2, "count"    # I

    .prologue
    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "i":I
    const/4 v3, 0x2

    new-array v1, v3, [B

    .line 284
    .local v1, "buffer2":[B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 285
    const/4 v3, 0x0

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 286
    const/4 v3, 0x1

    sget v4, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    mul-int/2addr v4, v2

    sget v5, Lcom/android/incallui/operator/chn/PNLUtils;->telSize:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    .line 287
    invoke-static {v1}, Lcom/android/incallui/operator/chn/PNLUtils;->readUnsignedShort([B)I

    move-result v0

    .line 288
    .local v0, "areaCode":I
    if-ne v0, p1, :cond_0

    .line 292
    .end local v0    # "areaCode":I
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 284
    .restart local v0    # "areaCode":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "areaCode":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static unbindTencentPLNServer()V
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->unbind()V

    .line 356
    return-void
.end method
