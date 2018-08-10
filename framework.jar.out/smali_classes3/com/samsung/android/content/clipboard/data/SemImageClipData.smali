.class public Lcom/samsung/android/content/clipboard/data/SemImageClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemImageClipData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemImageClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExtraDataPath:Ljava/lang/String;

.field private transient mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mImagePath:Ljava/lang/String;

.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->readFromSource(Landroid/os/Parcel;)V

    return-void
.end method

.method private compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    .locals 24

    const/4 v6, 0x5

    const/16 v7, 0x80

    const/16 v18, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    move/from16 v0, v19

    if-ne v0, v8, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    :cond_0
    const/16 v21, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0x0

    const/16 p2, 0x0

    :goto_0
    return v21

    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-lt v8, v0, :cond_0

    const/16 v21, 0x80

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    move/from16 v5, v19

    :goto_1
    :try_start_2
    div-int v20, v19, v5

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    const/4 v13, 0x5

    :goto_2
    mul-int v21, v5, v13

    sub-int v20, v19, v21

    div-int v14, v20, v13

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    new-array v0, v5, [B

    move-object/from16 v17, v0

    new-array v0, v5, [B

    move-object/from16 v16, v0

    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v13, :cond_6

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    add-int v21, v5, v14

    add-int v15, v15, v21

    int-to-long v0, v15

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    int-to-long v0, v15

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v5, :cond_5

    aget-byte v21, v17, v12

    aget-byte v22, v16, v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_0
    move-exception v10

    :try_start_3
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 p1, 0x0

    const/16 p2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v21

    const/16 p1, 0x0

    const/16 p2, 0x0

    throw v21

    :cond_2
    const/16 v5, 0x80

    goto :goto_1

    :cond_3
    move/from16 v13, v20

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 p1, 0x0

    :goto_6
    const/16 p2, 0x0

    :goto_7
    return v18

    :catch_1
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_8
    const/16 p1, 0x0

    const/16 p2, 0x0

    goto :goto_7

    :catchall_1
    move-exception v21

    const/16 p1, 0x0

    const/16 p2, 0x0

    throw v21

    :catch_2
    move-exception v9

    :try_start_6
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v18, 0x0

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 p1, 0x0

    goto :goto_6

    :catch_3
    move-exception v10

    :try_start_8
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v21

    const/16 p1, 0x0

    const/16 p2, 0x0

    throw v21

    :catchall_3
    move-exception v21

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/16 p1, 0x0

    const/16 p2, 0x0

    :goto_9
    throw v21

    :catch_4
    move-exception v10

    :try_start_a
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/16 p1, 0x0

    const/16 p2, 0x0

    goto :goto_9

    :catchall_4
    move-exception v21

    const/16 p1, 0x0

    const/16 p2, 0x0

    throw v21
.end method

.method private compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v2, v3

    move-object v4, v5

    :cond_2
    :goto_1
    return v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_4
    throw v7

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catchall_2
    move-exception v7

    move-object v2, v3

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    goto :goto_2
.end method

.method private compareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/io/FileInputStream;Ljava/io/FileInputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v2, v3

    move-object v4, v5

    :cond_2
    :goto_1
    return v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_4
    throw v7

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :catchall_2
    move-exception v7

    move-object v2, v3

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    goto :goto_2
.end method

.method private setClipData()V
    .locals 5

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "text/uri-list"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v1, Landroid/content/ClipData$Item;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    new-instance v0, Landroid/content/ClipData;

    const-string/jumbo v3, "clipboarddragNdrop"

    invoke-direct {v0, v3, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method


# virtual methods
.method public HasExtraData()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const-string/jumbo v5, "SemImageClipData"

    const-string/jumbo v6, "bitmap equals"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v1

    :cond_0
    instance-of v5, p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-nez v5, :cond_1

    return v1

    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getInitBasePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    const-string/jumbo v5, "SemImageClipData"

    const-string/jumbo v6, "bitmap equals"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->compareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    const-string/jumbo v5, "SemImageClipData"

    const-string/jumbo v6, "bitmap equals"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected getClipDataInternal()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setClipData()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getExtraDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v3
.end method

.method public getImageFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInitBasePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v4
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemImageClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromSource~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getExtraDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "SemImageClipData"

    const-string/jumbo v3, "setBitmapPath"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_2

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "SemImageClipData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ExtraDataPath ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    :cond_3
    invoke-super {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iput-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    const/4 p2, 0x0

    :cond_4
    return v1
.end method

.method public setExtraDataPath(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    return v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v2, "SemImageClipData"

    const-string/jumbo v3, "ClipboardDataBitmap : ExtraDataPath is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v2, :cond_2

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const-string/jumbo v2, "SemImageClipData"

    const-string/jumbo v3, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemImageClipData class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string/jumbo v0, "SemImageClipData"

    const-string/jumbo v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mInitBaseValueCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->mExtraParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
