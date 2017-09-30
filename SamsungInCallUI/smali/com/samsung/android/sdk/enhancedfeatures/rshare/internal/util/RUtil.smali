.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;
.super Ljava/lang/Object;


# static fields
.field private static final IS_CHINESE:Z

.field private static final STACK_LANGUAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sCtx:Landroid/content/Context;

.field private static sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    const-string v0, "China"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SystemPropertiesRef;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->IS_CHINESE:Z

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->STACK_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    return-object v0
.end method

.method public static getMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extension : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "application/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const-string v2, "log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "tgz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "scc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "spd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "snb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "hwp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "gul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "sff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "blob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "vts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "3ga"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "qcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "pva"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "dm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "dgg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "acc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "wpl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "fl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "rmvb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "rm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "ram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "divx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "trp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "m2ts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "mts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "m2t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "smi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "memo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "sasf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "xlt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "ics"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "sdoc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "dot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "pps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "vcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "dotx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x2b

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "text/plain"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "application/vnd.android.package-archive"

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "application/x-gzip"

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "application/x-compressed"

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "application/scc"

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "application/spd"

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "application/snb"

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "application/hwp"

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "application/gul"

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "application/vnd.samsung.scc.storyalbum"

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "image/webp"

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "image/jpg"

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "image/gif"

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "application/blob"

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "text/x-vtodo"

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "audio/3ga"

    goto/16 :goto_0

    :pswitch_10
    const-string v0, "audio/qcp"

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "audio/pva"

    goto/16 :goto_0

    :pswitch_12
    const-string v0, "audio/dm"

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "audio/dgg"

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "audio/acc"

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "audio/wpl"

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "audio/m3u8"

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "audio/fl"

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "video/rmvb"

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "video/rm"

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "video/ram"

    goto/16 :goto_0

    :pswitch_1b
    const-string v0, "video/divx"

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "video/trp"

    goto/16 :goto_0

    :pswitch_1d
    const-string v0, "video/m2ts"

    goto/16 :goto_0

    :pswitch_1e
    const-string v0, "video/mts"

    goto/16 :goto_0

    :pswitch_1f
    const-string v0, "video/m2t"

    goto/16 :goto_0

    :pswitch_20
    const-string v0, "application/smil"

    goto/16 :goto_0

    :pswitch_21
    const-string v0, "application/vnd.samsung.android.memo"

    goto/16 :goto_0

    :pswitch_22
    const-string v0, "application/x-sasf"

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "application/vnd.ms-excel"

    goto/16 :goto_0

    :pswitch_24
    const-string v0, "text/calendar"

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "application/sdoc"

    goto/16 :goto_0

    :pswitch_26
    const-string v0, "application/msword"

    goto/16 :goto_0

    :pswitch_27
    const-string v0, "application/vnd.ms-powerpoint"

    goto/16 :goto_0

    :pswitch_28
    const-string v0, "text/x-vcard"

    goto/16 :goto_0

    :pswitch_29
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    goto/16 :goto_0

    :pswitch_2a
    const-string v0, "application/json"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc89 -> :sswitch_13
        0xcc6 -> :sswitch_18
        0xcf3 -> :sswitch_2
        0xe3b -> :sswitch_1a
        0xcc4d -> :sswitch_10
        0x17881 -> :sswitch_15
        0x17a1c -> :sswitch_1
        0x18444 -> :sswitch_14
        0x18549 -> :sswitch_27
        0x18fc4 -> :sswitch_d
        0x1913e -> :sswitch_8
        0x19541 -> :sswitch_7
        0x19699 -> :sswitch_25
        0x19be1 -> :sswitch_c
        0x19faf -> :sswitch_20
        0x1a344 -> :sswitch_0
        0x1a7ac -> :sswitch_1f
        0x1b273 -> :sswitch_28
        0x1b31b -> :sswitch_12
        0x1b49e -> :sswitch_11
        0x1b81e -> :sswitch_1b
        0x1bc13 -> :sswitch_4
        0x1bc73 -> :sswitch_9
        0x1bd4f -> :sswitch_21
        0x1bd67 -> :sswitch_6
        0x1bda7 -> :sswitch_5
        0x1c067 -> :sswitch_3
        0x1c1b2 -> :sswitch_1d
        0x1c759 -> :sswitch_29
        0x1c975 -> :sswitch_f
        0x1ccb3 -> :sswitch_16
        0x1d000 -> :sswitch_24
        0x2e2f9d -> :sswitch_e
        0x2f0e07 -> :sswitch_1c
        0x2f244f -> :sswitch_2a
        0x31e068 -> :sswitch_b
        0x31ece8 -> :sswitch_2b
        0x3256a4 -> :sswitch_1e
        0x325a49 -> :sswitch_17
        0x33153a -> :sswitch_22
        0x357a27 -> :sswitch_19
        0x35c121 -> :sswitch_23
        0x35cbe5 -> :sswitch_26
        0x379f9c -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isUserAuthenticated()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
