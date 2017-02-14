.class public final Lcom/yulore/android/common/io/IORWProc;
.super Ljava/lang/Object;
.source "IORWProc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/android/common/io/IORWProc$IReadProc;,
        Lcom/yulore/android/common/io/IORWProc$IWriteProc;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;Ljava/lang/String;Lcom/yulore/android/common/io/IORWProc$IReadProc;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v2}, Lcom/yulore/android/common/io/IORWProc$IReadProc;->processRow(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v3

    :cond_2
    invoke-static {v1}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;Lcom/yulore/android/common/io/IORWProc$IReadProc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/yulore/android/common/io/IORWProc;->read(Ljava/io/File;Ljava/lang/String;Lcom/yulore/android/common/io/IORWProc$IReadProc;)V

    return-void
.end method

.method public read(Ljava/io/File;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v1}, Lcom/yulore/android/common/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    invoke-static {v3}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_1
    invoke-static {v2}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_1
.end method

.method public write(Ljava/io/File;Ljava/lang/String;ZLcom/yulore/android/common/io/IORWProc$IWriteProc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p4, v1}, Lcom/yulore/android/common/io/IORWProc$IWriteProc;->process(Ljava/io/BufferedWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v0}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method public write(Ljava/io/File;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v0}, Lcom/yulore/android/common/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;ZLcom/yulore/android/common/io/IORWProc$IWriteProc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yulore/android/common/io/IORWProc;->write(Ljava/io/File;Ljava/lang/String;ZLcom/yulore/android/common/io/IORWProc$IWriteProc;)V

    return-void
.end method
