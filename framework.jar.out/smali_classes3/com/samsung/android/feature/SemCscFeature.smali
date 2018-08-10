.class public Lcom/samsung/android/feature/SemCscFeature;
.super Ljava/lang/Object;
.source "SemCscFeature.java"


# static fields
.field private static final FEATURE_XML:Ljava/lang/String; = "/system/csc/feature.xml"

.field private static final MPS_FEATURE_XML:Ljava/lang/String; = "/system/csc/others.xml"

.field private static final TAG:Ljava/lang/String; = "SemCscFeature"

.field private static sInstance:Lcom/samsung/android/feature/SemCscFeature;


# instance fields
.field private final SALT_LENGTH:I

.field private final XML_HEADER:Ljava/lang/String;

.field private mFeatureList:Ljava/util/Hashtable;
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

.field private mFeatureList_2:Ljava/util/Hashtable;
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

.field private final salts:[B

.field private final shifts:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    const/16 v8, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    const-string/jumbo v7, "<?xml"

    iput-object v7, p0, Lcom/samsung/android/feature/SemCscFeature;->XML_HEADER:Ljava/lang/String;

    iput v8, p0, Lcom/samsung/android/feature/SemCscFeature;->SALT_LENGTH:I

    new-array v7, v8, [B

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    new-array v7, v8, [B

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "/system/omc/SW_Configuration.xml"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/odm/omc/SW_Configuration.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    const-string/jumbo v7, "persist.sys.omc_path"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "persist.sys.omcnw_path"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "persist.sys.omcnw_path2"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v6}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->loadNetworkFeatureFile(ZLjava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-direct {p0, v3, v6}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile2nd(ZLjava/lang/String;)Z

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->loadNetworkFeatureFile2nd(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v7, "SemCscFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :array_0
    .array-data 1
        0x41t
        -0x3bt
        0x21t
        -0x22t
        0x6bt
        0x1ct
        -0x6bt
        0x37t
        0x4et
        0x11t
        -0x51t
        0x6t
        -0x50t
        -0x79t
        -0x23t
        -0x17t
        0x48t
        0x7at
        -0x3ft
        -0x2bt
        0x44t
        0x77t
        -0x4et
        -0x6ft
        -0x3ct
        0x1ft
        0x3ct
        0x39t
        0x5ct
        -0x58t
        -0x64t
        -0x45t
        -0x6at
        0x5bt
        0x45t
        0x5dt
        0x6et
        0x17t
        0x5dt
        0x35t
        -0x2ct
        -0x33t
        0x40t
        -0x50t
        0x2et
        0x2t
        -0x4t
        0xct
        -0x2dt
        0x50t
        -0x2ct
        -0x23t
        -0x6ft
        -0x1ct
        -0x42t
        -0x74t
        0x27t
        0x2t
        -0x1bt
        -0x2dt
        -0x34t
        0x7dt
        0x27t
        0x42t
        -0x5at
        0x3ft
        -0x69t
        -0x43t
        0x54t
        -0x39t
        -0x4t
        -0x4t
        0x65t
        -0x5at
        0x51t
        0xat
        -0x21t
        0x1t
        0x43t
        -0x39t
        -0x47t
        0x12t
        -0x4at
        0x66t
        0x60t
        -0x59t
        0x40t
        -0x11t
        0x36t
        -0x5et
        -0x54t
        -0x42t
        0xet
        0x77t
        0x79t
        0x2t
        -0x4et
        -0x4ft
        0x59t
        0x3ft
        0x5dt
        0x6dt
        -0x4et
        -0x33t
        0x42t
        -0x24t
        0x20t
        0x56t
        0x3t
        -0x3at
        -0xft
        0x5ct
        0x3at
        0x2t
        -0x59t
        -0x50t
        -0xdt
        -0x1t
        0x7at
        -0x4t
        0x30t
        0x3ft
        -0x2ct
        0x3bt
        0x64t
        -0x2at
        -0x2dt
        0x3bt
        -0x7t
        -0x11t
        -0x36t
        0x22t
        -0x36t
        0x47t
        -0x40t
        -0x1at
        -0x57t
        -0x50t
        -0x11t
        -0x2ct
        -0x26t
        -0x70t
        0x46t
        0xat
        -0x6at
        0x5ft
        -0x18t
        -0x4t
        -0x76t
        0x2dt
        -0x55t
        -0xdt
        0x55t
        0x19t
        -0x66t
        -0x77t
        0xdt
        -0x25t
        0x74t
        0x2et
        -0x45t
        0x3bt
        0x2at
        -0x5at
        -0x26t
        -0x69t
        0x65t
        -0x77t
        -0x24t
        0x61t
        -0x3t
        -0x3et
        -0x5bt
        -0x61t
        -0x7dt
        0x11t
        0xet
        0x6at
        -0x48t
        -0x77t
        0x63t
        0x6ft
        0x14t
        0x12t
        -0x1bt
        0x71t
        0x40t
        -0x18t
        0x4at
        -0x3ct
        -0x64t
        0x1at
        0x38t
        -0x2ct
        -0x46t
        0xct
        -0x33t
        -0x64t
        -0x20t
        -0xbt
        0x1at
        0x30t
        -0x75t
        0x62t
        -0x5dt
        0x33t
        -0x19t
        -0x4ft
        -0x1ft
        0x61t
        0x57t
        -0x69t
        -0x40t
        0x7t
        -0xdt
        -0x65t
        0x21t
        -0x7at
        0x5t
        -0x68t
        0x59t
        -0x2ct
        -0x75t
        0x3ft
        -0x50t
        -0x6t
        -0x47t
        -0x6et
        -0x1dt
        -0x69t
        0x74t
        0x6bt
        -0x5dt
        0x5bt
        -0x29t
        -0xdt
        0x14t
        -0x73t
        -0x4et
        0x2bt
        0x4ft
        -0x7at
        0x6t
        0x66t
        -0x20t
        0x34t
        -0x76t
        -0x33t
        0x48t
        -0x68t
        0x29t
        -0x26t
        0x7ct
        0x48t
        -0x7et
        -0x23t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x7t
        0x1t
        0x6t
        0x5t
        0x3t
        0x3t
        0x1t
        0x2t
        0x5t
        0x0t
        0x6t
        0x2t
        0x2t
        0x4t
        0x2t
        0x2t
        0x3t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x3t
        0x1t
        0x6t
        0x5t
        0x6t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x3t
        0x2t
        0x7t
        0x7t
        0x5t
        0x6t
        0x7t
        0x3t
        0x5t
        0x1t
        0x0t
        0x7t
        0x6t
        0x3t
        0x6t
        0x5t
        0x4t
        0x5t
        0x3t
        0x5t
        0x1t
        0x3t
        0x3t
        0x1t
        0x5t
        0x4t
        0x1t
        0x0t
        0x0t
        0x2t
        0x6t
        0x6t
        0x6t
        0x6t
        0x4t
        0x0t
        0x1t
        0x1t
        0x0t
        0x5t
        0x5t
        0x4t
        0x2t
        0x4t
        0x6t
        0x1t
        0x7t
        0x1t
        0x2t
        0x1t
        0x1t
        0x6t
        0x5t
        0x4t
        0x7t
        0x6t
        0x5t
        0x1t
        0x6t
        0x7t
        0x0t
        0x2t
        0x6t
        0x3t
        0x1t
        0x7t
        0x1t
        0x1t
        0x7t
        0x4t
        0x0t
        0x4t
        0x2t
        0x5t
        0x3t
        0x1t
        0x1t
        0x5t
        0x6t
        0x0t
        0x3t
        0x5t
        0x3t
        0x6t
        0x5t
        0x7t
        0x2t
        0x5t
        0x6t
        0x6t
        0x2t
        0x2t
        0x3t
        0x6t
        0x0t
        0x4t
        0x3t
        0x2t
        0x0t
        0x2t
        0x2t
        0x3t
        0x5t
        0x3t
        0x3t
        0x2t
        0x5t
        0x5t
        0x5t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x6t
        0x2t
        0x4t
        0x7t
        0x1t
        0x4t
        0x6t
        0x0t
        0x6t
        0x4t
        0x3t
        0x2t
        0x6t
        0x1t
        0x6t
        0x3t
        0x2t
        0x1t
        0x6t
        0x7t
        0x3t
        0x2t
        0x1t
        0x1t
        0x5t
        0x6t
        0x7t
        0x2t
        0x2t
        0x2t
        0x7t
        0x4t
        0x6t
        0x7t
        0x5t
        0x3t
        0x1t
        0x4t
        0x2t
        0x7t
        0x1t
        0x6t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x5t
        0x4t
        0x5t
        0x0t
        0x1t
        0x1t
        0x6t
        0x3t
        0x7t
        0x2t
        0x0t
        0x2t
        0x5t
        0x0t
        0x1t
        0x3t
        0x3t
        0x2t
        0x6t
        0x7t
        0x7t
        0x2t
        0x5t
        0x6t
        0x0t
        0x4t
        0x1t
        0x2t
        0x5t
        0x3t
        0x7t
        0x6t
        0x5t
        0x2t
        0x5t
        0x2t
        0x0t
        0x1t
        0x3t
        0x1t
        0x4t
        0x3t
        0x4t
        0x2t
    .end array-data
.end method

.method private _decode([B)[B
    .locals 6

    array-length v2, p1

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v4, v0, 0x100

    aget-byte v3, v3, v4

    shl-int/2addr v2, v3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v5, v0, 0x100

    aget-byte v4, v4, v5

    rsub-int/lit8 v4, v4, 0x8

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    aget-byte v2, v1, v0

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    rem-int/lit16 v4, v0, 0x100

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private _decompressGzip([B)[B
    .locals 13

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/16 v11, 0x400

    :try_start_0
    new-array v3, v11, [B

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->available()I

    move-result v11

    if-lez v11, :cond_5

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v6, v7

    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v6, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v0, 0x0

    :cond_1
    :goto_3
    return-object v12

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    move-object v6, v7

    move-object v0, v1

    :goto_4
    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v6, 0x0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v0, 0x0

    :cond_4
    :goto_5
    throw v11

    :cond_5
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_7

    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v6, 0x0

    :goto_6
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v0, 0x0

    :goto_7
    return-object v9

    :catch_1
    move-exception v4

    move-object v6, v7

    :goto_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    move-object v0, v1

    goto :goto_7

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v11

    goto :goto_4

    :catchall_2
    move-exception v11

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_2

    :catch_5
    move-exception v5

    move-object v0, v1

    goto :goto_2

    :catch_6
    move-exception v4

    goto :goto_8

    :cond_7
    move-object v6, v7

    goto :goto_6
.end method

.method private decode([B)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->_decode([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->_decompressGzip([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/feature/SemCscFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/feature/SemCscFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCscFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    return-object v0
.end method

.method private isUseOdm()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/odm/omc/SW_Configuration.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isXmlEncoded(Ljava/io/File;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v5, "<?xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    :goto_0
    return v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v5, "SemCscFeature"

    const-string/jumbo v6, "Encoded"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v3, 0x0

    :goto_1
    return v5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_2
    :try_start_5
    const-string/jumbo v5, "SemCscFeature"

    const-string/jumbo v6, "Exception : isXmlEncoded"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v3, 0x0

    :cond_3
    :goto_3
    return v7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v3, 0x0

    :cond_4
    :goto_5
    throw v5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v3, v4

    goto :goto_1

    :cond_6
    move-object v3, v4

    goto :goto_0
.end method

.method private loadFeatureFile(ZLjava/lang/String;)Z
    .locals 26

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Hashtable;->clear()V

    if-eqz p1, :cond_3

    move-object/from16 v10, p2

    :goto_0
    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/cscfeature.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_4

    :cond_0
    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/feature.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_5

    :cond_1
    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/others.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_5

    :cond_2
    const/16 v21, 0x0

    return v21

    :cond_3
    const-string/jumbo v10, "/system/csc"

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x1

    :cond_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v17

    new-instance v15, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v15

    :goto_1
    :try_start_3
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    :goto_2
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_10

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v7, v0, :cond_a

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :cond_6
    :goto_3
    :try_start_4
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    goto :goto_2

    :cond_7
    const/16 v21, 0x0

    :try_start_5
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v12, v13

    :goto_4
    :try_start_6
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v12, :cond_8

    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :goto_5
    const/4 v14, 0x0

    :cond_9
    :goto_6
    return v18

    :cond_a
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v7, v0, :cond_6

    :try_start_8
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v21

    if-eqz v21, :cond_c

    :try_start_9
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v7

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_a
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v12, v13

    :goto_7
    :try_start_b
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v12, :cond_b

    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_b
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v5

    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :catch_4
    move-exception v8

    :try_start_e
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :catch_5
    move-exception v5

    move-object v12, v13

    :goto_8
    :try_start_f
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v12, :cond_d

    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_d
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v5

    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_7
    move-exception v5

    :try_start_11
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v21

    move-object v12, v13

    :goto_9
    if-eqz v12, :cond_e

    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    const/4 v14, 0x0

    :cond_f
    :goto_a
    throw v21

    :cond_10
    if-eqz v13, :cond_11

    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    const/4 v12, 0x0

    :goto_b
    if-eqz v14, :cond_9

    :try_start_14
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception v5

    :goto_c
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_9
    move-exception v5

    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_a
    move-exception v5

    const-string/jumbo v22, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_1
    move-exception v21

    goto :goto_9

    :catchall_2
    move-exception v21

    move-object v14, v15

    move-object v12, v13

    goto :goto_9

    :catch_b
    move-exception v6

    goto/16 :goto_4

    :catch_c
    move-exception v6

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_4

    :catch_d
    move-exception v4

    goto/16 :goto_7

    :catch_e
    move-exception v4

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_7

    :catch_f
    move-exception v5

    goto/16 :goto_8

    :catch_10
    move-exception v5

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_8

    :catch_11
    move-exception v5

    move-object v12, v13

    goto :goto_c

    :cond_11
    move-object v12, v13

    goto :goto_b
.end method

.method private loadFeatureFile2nd(ZLjava/lang/String;)Z
    .locals 26

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Hashtable;->clear()V

    if-eqz p1, :cond_3

    move-object/from16 v10, p2

    :goto_0
    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/cscfeature.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_4

    :cond_0
    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/feature.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_5

    :cond_1
    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/others.xml"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_5

    :cond_2
    const/16 v21, 0x0

    return v21

    :cond_3
    const-string/jumbo v10, "/system/csc"

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x1

    :cond_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v17

    new-instance v15, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v15

    :goto_1
    :try_start_3
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    :goto_2
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v7, v0, :cond_10

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v7, v0, :cond_a

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :cond_6
    :goto_3
    :try_start_4
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    goto :goto_2

    :cond_7
    const/16 v21, 0x0

    :try_start_5
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v13, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v12, v13

    :goto_4
    :try_start_6
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v12, :cond_8

    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :goto_5
    const/4 v14, 0x0

    :cond_9
    :goto_6
    return v18

    :cond_a
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v7, v0, :cond_6

    :try_start_8
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v21

    if-eqz v21, :cond_c

    :try_start_9
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v7

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_a
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v12, v13

    :goto_7
    :try_start_b
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v12, :cond_b

    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_b
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v5

    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :catch_4
    move-exception v8

    :try_start_e
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :catch_5
    move-exception v5

    move-object v12, v13

    :goto_8
    :try_start_f
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v12, :cond_d

    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_d
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v5

    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_7
    move-exception v5

    :try_start_11
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v21

    move-object v12, v13

    :goto_9
    if-eqz v12, :cond_e

    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    const/4 v12, 0x0

    :cond_e
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    const/4 v14, 0x0

    :cond_f
    :goto_a
    throw v21

    :cond_10
    if-eqz v13, :cond_11

    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    const/4 v12, 0x0

    :goto_b
    if-eqz v14, :cond_9

    :try_start_14
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception v5

    :goto_c
    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_9
    move-exception v5

    const-string/jumbo v21, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_a
    move-exception v5

    const-string/jumbo v22, "SemCscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_1
    move-exception v21

    goto :goto_9

    :catchall_2
    move-exception v21

    move-object v14, v15

    move-object v12, v13

    goto :goto_9

    :catch_b
    move-exception v6

    goto/16 :goto_4

    :catch_c
    move-exception v6

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_4

    :catch_d
    move-exception v4

    goto/16 :goto_7

    :catch_e
    move-exception v4

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_7

    :catch_f
    move-exception v5

    goto/16 :goto_8

    :catch_10
    move-exception v5

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_8

    :catch_11
    move-exception v5

    move-object v12, v13

    goto :goto_c

    :cond_11
    move-object v12, v13

    goto :goto_b
.end method

.method private loadNetworkFeatureFile(ZLjava/lang/String;)V
    .locals 28

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    if-eqz p1, :cond_1

    move-object/from16 v13, p2

    :goto_0
    :try_start_0
    new-instance v14, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/cscfeature_network.xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_2

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v13, "/system/csc"

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v20

    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v23, 0x0

    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v18

    :goto_1
    :try_start_3
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_2
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v10, v0, :cond_f

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v10, v0, :cond_8

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v23

    if-lez v23, :cond_7

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :cond_3
    :goto_3
    :try_start_4
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    goto :goto_2

    :cond_4
    const/16 v23, 0x0

    :try_start_5
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    move-object/from16 v15, v16

    :goto_4
    :try_start_6
    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v15, :cond_5

    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_5
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :goto_5
    const/16 v17, 0x0

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v10, v0, :cond_3

    :try_start_8
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v23

    if-eqz v23, :cond_b

    :try_start_9
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v10

    goto/16 :goto_2

    :catch_1
    move-exception v8

    :try_start_a
    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v7

    move-object/from16 v15, v16

    :goto_7
    :try_start_b
    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v15, :cond_a

    :try_start_c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_a
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v8

    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    :try_start_d
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :catch_4
    move-exception v11

    :try_start_e
    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :catch_5
    move-exception v8

    move-object/from16 v15, v16

    :goto_8
    :try_start_f
    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v15, :cond_c

    :try_start_10
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_c
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v8

    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_7
    move-exception v8

    :try_start_11
    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v23

    move-object/from16 v15, v16

    :goto_9
    if-eqz v15, :cond_d

    :try_start_12
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_d
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    const/16 v17, 0x0

    :cond_e
    :goto_a
    throw v23

    :cond_f
    if-eqz v16, :cond_10

    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    const/4 v15, 0x0

    :goto_b
    if-eqz v17, :cond_6

    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception v8

    :goto_c
    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_9
    move-exception v8

    const-string/jumbo v23, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_a
    move-exception v8

    const-string/jumbo v24, "SemCscFeature"

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_1
    move-exception v23

    goto :goto_9

    :catchall_2
    move-exception v23

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto :goto_9

    :catch_b
    move-exception v9

    goto/16 :goto_4

    :catch_c
    move-exception v9

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto/16 :goto_4

    :catch_d
    move-exception v7

    goto/16 :goto_7

    :catch_e
    move-exception v7

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto/16 :goto_7

    :catch_f
    move-exception v8

    goto/16 :goto_8

    :catch_10
    move-exception v8

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto/16 :goto_8

    :catch_11
    move-exception v8

    move-object/from16 v15, v16

    goto :goto_c

    :cond_10
    move-object/from16 v15, v16

    goto :goto_b
.end method

.method private loadNetworkFeatureFile2nd(ZLjava/lang/String;)V
    .locals 28

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    if-eqz p1, :cond_1

    move-object/from16 v13, p2

    :goto_0
    :try_start_0
    new-instance v14, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "/cscfeature_network.xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_2

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v13, "/system/csc"

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v20

    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v23, 0x0

    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v18

    :goto_1
    :try_start_3
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_2
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v10, v0, :cond_f

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v10, v0, :cond_8

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v23

    if-lez v23, :cond_7

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :cond_3
    :goto_3
    :try_start_4
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    goto :goto_2

    :cond_4
    const/16 v23, 0x0

    :try_start_5
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v9

    move-object/from16 v15, v16

    :goto_4
    :try_start_6
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v15, :cond_5

    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_5
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :goto_5
    const/16 v17, 0x0

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v10, v0, :cond_3

    :try_start_8
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v23

    if-eqz v23, :cond_b

    :try_start_9
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v10

    goto/16 :goto_2

    :catch_1
    move-exception v8

    :try_start_a
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :catch_2
    move-exception v7

    move-object/from16 v15, v16

    :goto_7
    :try_start_b
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v15, :cond_a

    :try_start_c
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_a
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v8

    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    :try_start_d
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :catch_4
    move-exception v11

    :try_start_e
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :catch_5
    move-exception v8

    move-object/from16 v15, v16

    :goto_8
    :try_start_f
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v15, :cond_c

    :try_start_10
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_c
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v8

    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_7
    move-exception v8

    :try_start_11
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v23

    move-object/from16 v15, v16

    :goto_9
    if-eqz v15, :cond_d

    :try_start_12
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    const/4 v15, 0x0

    :cond_d
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    const/16 v17, 0x0

    :cond_e
    :goto_a
    throw v23

    :cond_f
    if-eqz v16, :cond_10

    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    const/4 v15, 0x0

    :goto_b
    if-eqz v17, :cond_6

    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception v8

    :goto_c
    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_9
    move-exception v8

    sget-object v23, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_a
    move-exception v8

    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception v23

    goto :goto_9

    :catchall_2
    move-exception v23

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto :goto_9

    :catch_b
    move-exception v9

    goto/16 :goto_4

    :catch_c
    move-exception v9

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto/16 :goto_4

    :catch_d
    move-exception v7

    goto/16 :goto_7

    :catch_e
    move-exception v7

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto/16 :goto_7

    :catch_f
    move-exception v8

    goto/16 :goto_8

    :catch_10
    move-exception v8

    move-object/from16 v17, v18

    move-object/from16 v15, v16

    goto/16 :goto_8

    :catch_11
    move-exception v8

    move-object/from16 v15, v16

    goto :goto_c

    :cond_10
    move-object/from16 v15, v16

    goto :goto_b
.end method


# virtual methods
.method public getBoolean(ILjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdm()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_1
    :try_start_0
    const-string/jumbo v3, "ril.NwNmId2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return v6

    :catch_0
    move-exception v0

    return v6
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdm()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3

    :cond_1
    :try_start_0
    const-string/jumbo v3, "ril.NwNmId2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return p3

    :catch_0
    move-exception v0

    return p3
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "ril.NwNmId"

    const-string/jumbo v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "null"

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    return v4

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return v7

    :catch_0
    move-exception v1

    return v7
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 6

    :try_start_0
    const-string/jumbo v3, "ril.NwNmId"

    const-string/jumbo v4, "null"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "null"

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return p2

    :catch_0
    move-exception v0

    return p2
.end method

.method public getInt(ILjava/lang/String;)I
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdm()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_1
    :try_start_0
    const-string/jumbo v3, "ril.NwNmId2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return v6

    :catch_0
    move-exception v0

    return v6
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdm()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_1
    :try_start_0
    const-string/jumbo v3, "ril.NwNmId2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return p3

    :catch_0
    move-exception v0

    return p3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 8

    const/4 v7, -0x1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "ril.NwNmId"

    const-string/jumbo v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "null"

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return v7

    :catch_0
    move-exception v1

    return v7
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "ril.NwNmId"

    const-string/jumbo v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "null"

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return p2

    :catch_0
    move-exception v1

    return p2
.end method

.method public getInteger(ILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(ILjava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdm()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    :try_start_0
    const-string/jumbo v3, "ril.NwNmId2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    return-object v2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdm()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    :try_start_0
    const-string/jumbo v3, "ril.NwNmId2"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    return-object v2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object p3

    :catch_0
    move-exception v0

    return-object p3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string/jumbo v3, "ril.NwNmId"

    const-string/jumbo v4, "null"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "null"

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "ril.NwNmId"

    const-string/jumbo v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "null"

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception v1

    return-object p2
.end method

.method public tracer(I)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "SemCscFeature"

    const-string/jumbo v1, "mFeatureList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "SemCscFeature"

    const-string/jumbo v1, "mFeatureList_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    return-object v0

    :cond_1
    const-string/jumbo v0, "SemCscFeature"

    const-string/jumbo v1, "Invalid feature table number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
