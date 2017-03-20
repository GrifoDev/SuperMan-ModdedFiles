.class public Lcom/cmdm/control/util/file/FileReadWrite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field TAG:Ljava/lang/String;

.field er:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "FileReadWrite"

    iput-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Lcom/cmdm/control/exception/a;

    invoke-direct {v0, p2}, Lcom/cmdm/control/exception/a;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "cyException":Lcom/cmdm/control/exception/a;
    invoke-virtual {v0, p1}, Lcom/cmdm/control/exception/a;->d(I)V

    .line 252
    return-object v0
.end method


# virtual methods
.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    .line 144
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 145
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v7, "\u5f00\u59cb\u8bfb\u6587\u4ef6"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 149
    .local v4, "s":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v5, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 153
    invoke-static {p1}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v3, "f":Ljava/io/File;
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u6587\u4ef6\u8def\u5f84:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 156
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v7, "\u6b63\u5728\u8bfb\u6587\u4ef6"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 158
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 157
    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 162
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 166
    :cond_0
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v7, "\u8bfb\u6587\u4ef6\u6210\u529f"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 183
    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v8, "finally"

    invoke-static {v7, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz v1, :cond_1

    .line 186
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    return-object v6

    .line 160
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 175
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/16 v6, 0xc

    .line 176
    :try_start_4
    const-string v7, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    .line 175
    invoke-direct {p0, v6, v7}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 183
    :goto_3
    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v8, "finally"

    invoke-static {v7, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz v0, :cond_3

    .line 186
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 192
    :cond_3
    throw v6

    .line 187
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "\u8bfb\u53d6\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 188
    invoke-direct {p0, v9, v6}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v6

    throw v6

    .line 170
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_4
    const/16 v6, 0xc

    .line 171
    :try_start_6
    const-string v7, "\u672c\u5730\u6587\u4ef6\u672a\u627e\u5230"

    .line 170
    invoke-direct {p0, v6, v7}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v6

    throw v6
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 178
    :catch_3
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v7, "IOException"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v6, 0xd

    .line 181
    const-string v7, "\u8bfb\u53d6\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 180
    invoke-direct {p0, v6, v7}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v6

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 189
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "\u8bfb\u53d6\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 188
    invoke-direct {p0, v9, v6}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v6

    throw v6

    .line 194
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "s":Ljava/lang/String;
    :cond_5
    const-string v6, ""

    goto :goto_1

    .line 182
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 178
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public readFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "\u5f00\u59cb\u8bfb\u6587\u4ef6"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 211
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, "f":Ljava/io/File;
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6587\u4ef6\u8def\u5f84:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 215
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "\u6b63\u5728\u8bfb\u6587\u4ef6"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 217
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 216
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 221
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "\u8bfb\u6587\u4ef6\u6210\u529f"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 237
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v7, "finally"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz v1, :cond_1

    .line 240
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    move-object v0, v1

    .line 246
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    return-object v5

    .line 219
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 237
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_3
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "finally"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz v0, :cond_3

    .line 240
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 246
    :cond_3
    :goto_4
    const-string v5, ""

    goto :goto_2

    .line 234
    :catch_1
    move-exception v5

    .line 237
    :goto_5
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "finally"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz v0, :cond_3

    .line 240
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 241
    :catch_2
    move-exception v5

    goto :goto_4

    .line 236
    :catchall_0
    move-exception v5

    .line 237
    :goto_6
    iget-object v6, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v7, "finally"

    invoke-static {v6, v7}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz v0, :cond_4

    .line 240
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 245
    :cond_4
    :goto_7
    throw v5

    .line 237
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "finally"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz v0, :cond_3

    .line 240
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 241
    :catch_3
    move-exception v5

    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v5

    goto :goto_4

    :catch_6
    move-exception v6

    goto :goto_7

    .line 236
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 234
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 232
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_8
    move-exception v5

    goto :goto_3
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    const/16 v10, 0xe

    .line 92
    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 93
    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v8, "\u5f00\u59cb\u5199\u6587\u4ef6"

    invoke-static {v7, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v5, 0x0

    .line 97
    .local v5, "utput":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "folder":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 123
    if-eqz v5, :cond_0

    .line 125
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .end local v2    # "folder":Ljava/io/File;
    .end local v5    # "utput":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v2    # "folder":Ljava/io/File;
    .restart local v5    # "utput":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 127
    invoke-direct {p0, v10, v7}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v7

    throw v7

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "stringToWrite":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cmdm/control/util/file/FileReadWrite;->er:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 106
    invoke-static {p1}, Lcom/cmdm/control/util/encry/Base64Code;->encodedBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "targetPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "f":Ljava/io/File;
    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u6587\u4ef6\u8def\u5f84:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 112
    :cond_2
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v5    # "utput":Ljava/io/BufferedWriter;
    .local v6, "utput":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    .line 115
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    .line 116
    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v8, "\u5199\u6587\u4ef6\u6210\u529f"

    invoke-static {v7, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    if-eqz v6, :cond_0

    .line 125
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 127
    invoke-direct {p0, v10, v7}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v7

    throw v7

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "folder":Ljava/io/File;
    .end local v3    # "stringToWrite":Ljava/lang/String;
    .end local v4    # "targetPath":Ljava/lang/String;
    .end local v6    # "utput":Ljava/io/BufferedWriter;
    .restart local v5    # "utput":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    iget-object v7, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v8, "\u5199\u6587\u4ef6\u5931\u8d25"

    invoke-static {v7, v8}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/16 v7, 0xe

    .line 121
    const-string v8, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 120
    invoke-direct {p0, v7, v8}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v7

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 123
    :goto_2
    if-eqz v5, :cond_3

    .line 125
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 131
    :cond_3
    throw v7

    .line 126
    :catch_3
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 127
    invoke-direct {p0, v10, v7}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v7

    throw v7

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "utput":Ljava/io/BufferedWriter;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "folder":Ljava/io/File;
    .restart local v3    # "stringToWrite":Ljava/lang/String;
    .restart local v4    # "targetPath":Ljava/lang/String;
    .restart local v6    # "utput":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "utput":Ljava/io/BufferedWriter;
    .restart local v5    # "utput":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 117
    .end local v5    # "utput":Ljava/io/BufferedWriter;
    .restart local v6    # "utput":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "utput":Ljava/io/BufferedWriter;
    .restart local v5    # "utput":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public writeFileNoEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmdm/control/exception/a;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 48
    if-eqz p1, :cond_1

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "\u5f00\u59cb\u5199\u6587\u4ef6"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x0

    .line 53
    .local v3, "utput":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "stringToWrite":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 59
    :cond_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v3    # "utput":Ljava/io/BufferedWriter;
    .local v4, "utput":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 62
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 63
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "\u5199\u6587\u4ef6\u6210\u529f"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    if-eqz v4, :cond_1

    .line 72
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stringToWrite":Ljava/lang/String;
    .end local v4    # "utput":Ljava/io/BufferedWriter;
    :cond_1
    return-void

    .line 64
    .restart local v3    # "utput":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    iget-object v5, p0, Lcom/cmdm/control/util/file/FileReadWrite;->TAG:Ljava/lang/String;

    const-string v6, "\u5199\u6587\u4ef6\u5931\u8d25"

    invoke-static {v5, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/16 v5, 0xe

    .line 68
    const-string v6, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 67
    invoke-direct {p0, v5, v6}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 70
    :goto_1
    if-eqz v3, :cond_2

    .line 72
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 78
    :cond_2
    throw v5

    .line 73
    :catch_1
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 74
    invoke-direct {p0, v7, v5}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v5

    throw v5

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "utput":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "stringToWrite":Ljava/lang/String;
    .restart local v4    # "utput":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v0

    .line 75
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "\u521b\u5efa\u672c\u5730\u6587\u4ef6\u5f02\u5e38"

    .line 74
    invoke-direct {p0, v7, v5}, Lcom/cmdm/control/util/file/FileReadWrite;->m(ILjava/lang/String;)Lcom/cmdm/control/exception/a;

    move-result-object v5

    throw v5

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "utput":Ljava/io/BufferedWriter;
    .restart local v3    # "utput":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 64
    .end local v3    # "utput":Ljava/io/BufferedWriter;
    .restart local v4    # "utput":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "utput":Ljava/io/BufferedWriter;
    .restart local v3    # "utput":Ljava/io/BufferedWriter;
    goto :goto_0
.end method
