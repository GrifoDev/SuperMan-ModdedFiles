.class public Lcom/cmdm/control/util/file/FileReadWrite;
.super Ljava/lang/Object;


# instance fields
.field TAG:Ljava/lang/String;

.field er:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FileReadWrite"

    iput-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    return-void
.end method

.method private m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;
    .locals 1

    new-instance v0, Lcom/cmdm/control/exception/a;

    invoke-direct {v0, p2}, Lcom/cmdm/control/exception/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/cmdm/control/exception/a;->d(I)V

    return-object v0
.end method


# virtual methods
.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v6, 0xd

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb\u8bfb\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".data"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6587\u4ef6\u8def\u5f84:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v4, "\u6b63\u5728\u8bfb\u6587\u4ef6"

    invoke-static {v1, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "\u8bfb\u6587\u4ef6\u6210\u529f"

    invoke-static {v0, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    iget-object v2, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "finally"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    const/16 v1, 0xc

    :try_start_4
    const-string v2, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    invoke-direct {p0, v1, v2}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v1

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    iget-object v2, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "finally"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    const-string v0, "\u8bfb\u53d6\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v6, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0

    :cond_4
    const/16 v1, 0xc

    :try_start_6
    const-string v2, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    invoke-direct {p0, v1, v2}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v1

    throw v1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    const-string v2, "\u8bfb\u53d6\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v1, v2}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v1

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_4
    move-exception v0

    const-string v0, "\u8bfb\u53d6\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v6, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0

    :cond_5
    const-string v0, ""

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method public readFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb\u8bfb\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6587\u4ef6\u8def\u5f84:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v4, "\u6b63\u5728\u8bfb\u6587\u4ef6"

    invoke-static {v1, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "\u8bfb\u6587\u4ef6\u6210\u529f"

    invoke-static {v0, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    iget-object v2, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "finally"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v2, "finally"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_3
    const-string v0, ""

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_4
    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v2, "finally"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    iget-object v2, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "finally"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_6
    throw v0

    :cond_5
    iget-object v1, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v2, "finally"

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8

    const/16 v7, 0xe

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb\u5199\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v7, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6587\u4ef6\u8def\u5f84:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v1, "\u5199\u6587\u4ef6\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v7, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    :goto_1
    :try_start_5
    iget-object v2, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "\u5199\u6587\u4ef6\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xe

    const-string v2, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v0, v2}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    throw v0

    :catch_3
    move-exception v0

    const-string v0, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v7, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public writeFileNoEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6

    const/16 v5, 0xe

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v1, "\u5f00\u59cb\u5199\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v1, "\u5199\u6587\u4ef6\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v3, "\u5199\u6587\u4ef6\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0xe

    const-string v2, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v0, v2}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    const-string v0, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v5, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    const-string v0, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    invoke-direct {p0, v5, v0}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v0

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
