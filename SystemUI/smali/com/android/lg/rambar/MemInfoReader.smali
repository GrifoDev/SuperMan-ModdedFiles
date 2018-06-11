.class public Lcom/android/lg/rambar/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field private mCachedSize:J

.field private mFreeSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/16 v3, 0x400

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    :goto_0
    move v6, v2

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_0

    move-object v6, v1

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    int-to-long v6, v6

    move-wide v0, v6

    :goto_1
    return-wide v0

    :cond_1
    move-object v6, v1

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    move-object v6, v1

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    move v6, v2

    move v3, v6

    add-int/lit8 v2, v2, 0x1

    :goto_2
    move v6, v2

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2

    move-object v6, v1

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    move-object v6, v1

    move v7, v2

    aget-byte v6, v6, v7

    const/16 v7, 0x39

    if-le v6, v7, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v3

    move v11, v2

    move v12, v3

    sub-int/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIII)V

    move-object v4, v6

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x400

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    move-object v8, v1

    array-length v8, v8

    if-lt v7, v8, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-lt v7, v8, :cond_1

    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :cond_1
    move-object v7, v1

    move v8, v2

    move v9, v5

    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    move-object v8, v3

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCachedSize()J
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-wide v2, v2, Lcom/android/lg/rambar/MemInfoReader;->mCachedSize:J

    move-wide v0, v2

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-wide v2, v2, Lcom/android/lg/rambar/MemInfoReader;->mFreeSize:J

    move-wide v0, v2

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-wide v2, v2, Lcom/android/lg/rambar/MemInfoReader;->mTotalSize:J

    move-wide v0, v2

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    move-object v1, v12

    move-object v12, v0

    const/4 v13, 0x0

    int-to-long v13, v13

    :try_start_0
    iput-wide v13, v12, Lcom/android/lg/rambar/MemInfoReader;->mTotalSize:J

    move-object v12, v0

    const/4 v13, 0x0

    int-to-long v13, v13

    iput-wide v13, v12, Lcom/android/lg/rambar/MemInfoReader;->mFreeSize:J

    move-object v12, v0

    const/4 v13, 0x0

    int-to-long v13, v13

    iput-wide v13, v12, Lcom/android/lg/rambar/MemInfoReader;->mCachedSize:J

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "/proc/meminfo"

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v12

    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    invoke-virtual {v12, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    move v7, v12

    move-object v12, v6

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    move-object v12, v0

    iget-object v12, v12, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    array-length v12, v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v12

    const/4 v12, 0x0

    move v9, v12

    const/4 v12, 0x0

    move v10, v12

    :goto_0
    move v12, v10

    move v13, v7

    if-ge v12, v13, :cond_0

    move v12, v9

    const/4 v13, 0x3

    if-lt v12, v13, :cond_1

    :cond_0
    :goto_1
    move-object v12, v1

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_1
    move-object v12, v0

    move-object v13, v0

    :try_start_1
    iget-object v13, v13, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    move v14, v10

    const-string v15, "MemTotal"

    invoke-direct {v12, v13, v14, v15}, Lcom/android/lg/rambar/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v10

    const/16 v13, 0x8

    add-int/lit8 v12, v12, 0x8

    move v10, v12

    move-object v12, v0

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    move v15, v10

    invoke-direct {v13, v14, v15}, Lcom/android/lg/rambar/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/lg/rambar/MemInfoReader;->mTotalSize:J

    add-int/lit8 v9, v9, 0x1

    :cond_2
    :goto_2
    move v12, v10

    move v13, v8

    if-ge v12, v13, :cond_3

    move-object v12, v0

    iget-object v12, v12, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    move v13, v10

    aget-byte v12, v12, v13

    const/16 v13, 0xa

    if-ne v12, v13, :cond_6

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    move v14, v10

    const-string v15, "MemFree"

    invoke-direct {v12, v13, v14, v15}, Lcom/android/lg/rambar/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v10

    const/4 v13, 0x7

    add-int/lit8 v12, v12, 0x7

    move v10, v12

    move-object v12, v0

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    move v15, v10

    invoke-direct {v13, v14, v15}, Lcom/android/lg/rambar/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/lg/rambar/MemInfoReader;->mFreeSize:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    move v14, v10

    const-string v15, "Cached"

    invoke-direct {v12, v13, v14, v15}, Lcom/android/lg/rambar/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v10

    const/4 v13, 0x6

    add-int/lit8 v12, v12, 0x6

    move v10, v12

    move-object v12, v0

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/android/lg/rambar/MemInfoReader;->mBuffer:[B

    move v15, v10

    invoke-direct {v13, v14, v15}, Lcom/android/lg/rambar/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/lg/rambar/MemInfoReader;->mCachedSize:J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v12

    move-object v6, v12

    goto :goto_1

    :catch_1
    move-exception v12

    move-object v6, v12

    goto/16 :goto_1

    :catchall_0
    move-exception v12

    move-object v2, v12

    move-object v12, v1

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v12, v2

    throw v12
.end method
