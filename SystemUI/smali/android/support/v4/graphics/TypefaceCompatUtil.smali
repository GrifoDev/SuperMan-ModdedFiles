.class Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v2

    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_2
    const-string/jumbo v5, "TypefaceCompatUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error copying resource contents to temp file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v8

    :cond_0
    const/4 v5, 0x1

    invoke-static {v3}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/nio/ByteBuffer;)Z
    .locals 1

    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;

    invoke-direct {v0, p1}, Landroid/support/v4/graphics/TypefaceCompatUtil$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ".font"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 11
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v9

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v6

    move-object v7, v8

    :goto_1
    return-object v9

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_3
    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    throw v2

    :catch_3
    move-exception v6

    goto :goto_1

    :catch_4
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_4

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catchall_1
    move-exception v1

    move-object v2, v9

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v8

    move-object v2, v9

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v7, v8

    goto :goto_2
.end method
