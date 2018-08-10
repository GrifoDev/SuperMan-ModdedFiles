.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method

.method private static compress([B)[B
    .locals 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v8

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    :goto_2
    const-string/jumbo v5, "InputMethodSubtypeArray"

    const-string/jumbo v6, "Failed to compress the data."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v5

    if-eqz v6, :cond_2

    if-eq v6, v5, :cond_1

    :try_start_6
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v5, v6

    goto :goto_1

    :cond_3
    return-object v8

    :catch_3
    move-exception v5

    :goto_3
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    move-object v8, v6

    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    move-object v6, v8

    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    :try_start_a
    throw v6

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v8

    if-eqz v6, :cond_5

    if-eq v6, v8, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v6

    goto :goto_5

    :catch_6
    move-exception v6

    if-eqz v8, :cond_7

    if-eq v8, v6, :cond_6

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v8

    goto :goto_6

    :cond_8
    throw v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catchall_1
    move-exception v5

    move-object v6, v7

    goto :goto_4

    :catchall_2
    move-exception v5

    move-object v1, v2

    move-object v6, v7

    goto :goto_4

    :catchall_3
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    move-object v6, v7

    goto :goto_4

    :catch_7
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catch_8
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto :goto_3
.end method

.method private static decompress([BI)[B
    .locals 14

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v5, p1, [B

    const/4 v6, 0x0

    :goto_0
    array-length v9, v5

    if-ge v6, v9, :cond_0

    array-length v9, v5

    sub-int v4, v9, v6

    invoke-virtual {v8, v5, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v3

    if-gez v3, :cond_4

    :cond_0
    if-eq p1, v6, :cond_6

    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v10, v11

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    move-object v9, v10

    :cond_3
    :goto_2
    if-eqz v9, :cond_5

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-object v7, v8

    move-object v1, v2

    :goto_3
    const-string/jumbo v9, "InputMethodSubtypeArray"

    const-string/jumbo v10, "Failed to decompress the data."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v11

    :cond_4
    add-int/2addr v6, v3

    goto :goto_0

    :catch_1
    move-exception v10

    goto :goto_1

    :catch_2
    move-exception v9

    if-eqz v10, :cond_3

    if-eq v10, v9, :cond_2

    :try_start_6
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v9, v10

    goto :goto_2

    :cond_5
    return-object v11

    :cond_6
    if-eqz v8, :cond_7

    :try_start_7
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_7
    move-object v10, v11

    :goto_4
    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    move-object v9, v10

    :cond_9
    :goto_5
    if-eqz v9, :cond_a

    :try_start_9
    throw v9

    :catch_3
    move-exception v10

    goto :goto_4

    :catch_4
    move-exception v9

    if-eqz v10, :cond_9

    if-eq v10, v9, :cond_8

    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object v9, v10

    goto :goto_5

    :cond_a
    return-object v5

    :catch_5
    move-exception v9

    :goto_6
    :try_start_a
    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_7
    if-eqz v7, :cond_b

    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_b
    move-object v12, v10

    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_d
    move-object v10, v12

    :cond_e
    :goto_9
    if-eqz v10, :cond_f

    :try_start_d
    throw v10

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v12

    if-eqz v10, :cond_c

    if-eq v10, v12, :cond_b

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v12, v10

    goto :goto_8

    :catch_8
    move-exception v10

    if-eqz v12, :cond_e

    if-eq v12, v10, :cond_d

    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v12

    goto :goto_9

    :cond_f
    throw v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :catchall_1
    move-exception v9

    move-object v10, v11

    goto :goto_7

    :catchall_2
    move-exception v9

    move-object v1, v2

    move-object v10, v11

    goto :goto_7

    :catchall_3
    move-exception v9

    move-object v7, v8

    move-object v1, v2

    move-object v10, v11

    goto :goto_7

    :catch_9
    move-exception v9

    move-object v1, v2

    goto :goto_6

    :catch_a
    move-exception v9

    move-object v7, v8

    move-object v1, v2

    goto :goto_6
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    if-ltz p1, :cond_0

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-gt v2, p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_3

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-static {v2, v4}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    :cond_3
    aget-object v2, v1, p1

    return-object v2

    :cond_4
    :try_start_1
    const-string/jumbo v2, "InputMethodSubtypeArray"

    const-string/jumbo v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 7

    const/4 v6, 0x0

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v2, -0x1

    const-string/jumbo v3, "InputMethodSubtypeArray"

    const-string/jumbo v5, "Failed to compress data."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    :cond_2
    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    return-void

    :cond_3
    :try_start_1
    array-length v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4
    const-string/jumbo v3, "InputMethodSubtypeArray"

    const-string/jumbo v4, "Unexpected state. Behaving as an empty array."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
