.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;
.super Ljava/lang/Object;
.source "HWRRMHelper.java"


# static fields
.field private static final AVAILABLE_LANGUAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mMultiDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineVersion:Ljava/lang/String;

.field private mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

.field private mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

.field private mbContentProviderAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_GB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ko_KR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_GB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ko_KR_NoHanJa"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_GB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ja_JP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_GB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "zh_CN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_GB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "zh_HK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_GB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "zh_TW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mMultiDB:Ljava/util/Map;

    const/16 v1, 0x41

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "af_ZA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ar"

    aput-object v2, v1, v4

    const-string/jumbo v2, "az_AZ"

    aput-object v2, v1, v5

    const-string/jumbo v2, "be_BY"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "bg_BG"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "ca_ES"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "cs_CZ"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "da_DK"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "de_AT"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "de_DE"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "el_GR"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_AU"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_CA"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_GB"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_US"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "es_ES"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "es_MX"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "es_US"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "et_EE"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "eu_ES"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "fa_IR"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "fi_FI"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "fr_CA"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "fr_FR"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "ga_IE"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "gl_ES"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "he_IL"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "hi_IN"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "hr_HR"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "hu_HU"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "hy_AM"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "id_ID"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "is_IS"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "it_IT"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "ja_JP"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "ka_GE"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "kk_KZ"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "ko_KR"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string/jumbo v2, "lt_LT"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "lv_LV"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "mk_MK"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "mn_MN"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "mr_IN"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "ms_MY"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "nb_NO"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string/jumbo v2, "nl_BE"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "nl_NL"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "pl_PL"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "pt_BR"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "pt_PT"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string/jumbo v2, "ro_RO"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string/jumbo v2, "ru_RU"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string/jumbo v2, "sk_SK"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string/jumbo v2, "sl_SI"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string/jumbo v2, "sq_AL"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string/jumbo v2, "sr_RS"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string/jumbo v2, "sv_SE"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string/jumbo v2, "th_TH"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string/jumbo v2, "tr_TR"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string/jumbo v2, "uk_UA"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string/jumbo v2, "ur_PK"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string/jumbo v2, "vi_VN"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string/jumbo v2, "zh_CN"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string/jumbo v2, "zh_HK"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    const-string/jumbo v2, "zh_TW"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    sput-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->AVAILABLE_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mEngineVersion:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    goto :goto_0
.end method

.method private closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Close ContentProviderClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[closeContentProviderClient] content provider client is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0
.end method

.method private getContentProviderClient()Landroid/content/ContentProviderClient;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Get ContentProviderClient"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "com.samsung.android.sdk.handwriting.resourcemanager"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[getContentProviderClient] content resolver is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    sget-object v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "[getContentProviderClient] content provider client is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    if-nez p3, :cond_4

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v9, "lang"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    const-string/jumbo v9, "version"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_2

    :goto_1
    const-string/jumbo v9, "preloaded"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v9, "latest"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3

    const-string/jumbo v9, "false"

    :goto_2
    invoke-direct {v6, v3, v8, v9, v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mEngineVersion:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v9, "true"

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "There are no languages in available list!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->AVAILABLE_LANGUAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    new-instance v9, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    new-instance v10, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    const-string/jumbo v11, ""

    invoke-direct {v10, v11}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "false"

    const-string/jumbo v12, "true"

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method public isContentProviderAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mbContentProviderAvailable:Z

    return v0
.end method

.method public queryToGetAvailableList()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v6, v8, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v1, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v10

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetAvailableList] client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetAvailableList] cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v8, v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9
.end method

.method public queryToGetDownloadingLangList()Z
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Downloading;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v6, v8, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v1, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetDownloadingLangList] client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetDownloadingLangList] cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9
.end method

.method public queryToGetInstalledLangList()Z
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v6, v8, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v1, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetInstalledLangList] client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[queryToGetInstalledLangList] cursor is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v8, v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V

    return v9
.end method

.method public setOnLanguagePackListener(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    return-void
.end method

.method public updateResourceList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    const-string/jumbo v1, "resList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mRmLauncher is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
