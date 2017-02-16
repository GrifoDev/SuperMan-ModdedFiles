.class Lsun/net/www/MimeLauncher;
.super Ljava/lang/Thread;
.source "MimeLauncher.java"


# instance fields
.field execPath:Ljava/lang/String;

.field genericTempFileTemplate:Ljava/lang/String;

.field is:Ljava/io/InputStream;

.field m:Lsun/net/www/MimeEntry;

.field uc:Ljava/net/URLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/MimeEntry;Ljava/net/URLConnection;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "M"    # Lsun/net/www/MimeEntry;
    .param p2, "uc"    # Ljava/net/URLConnection;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "tempFileTemplate"    # Ljava/lang/String;
    .param p5, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/www/ApplicationLaunchException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p5}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lsun/net/www/MimeLauncher;->m:Lsun/net/www/MimeEntry;

    .line 42
    iput-object p2, p0, Lsun/net/www/MimeLauncher;->uc:Ljava/net/URLConnection;

    .line 43
    iput-object p3, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    .line 44
    iput-object p4, p0, Lsun/net/www/MimeLauncher;->genericTempFileTemplate:Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lsun/net/www/MimeLauncher;->m:Lsun/net/www/MimeEntry;

    invoke-virtual {v3}, Lsun/net/www/MimeEntry;->getLaunchString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "launchString":Ljava/lang/String;
    invoke-direct {p0, v2}, Lsun/net/www/MimeLauncher;->findExecutablePath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 56
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "appName":Ljava/lang/String;
    :goto_0
    new-instance v3, Lsun/net/www/ApplicationLaunchException;

    invoke-direct {v3, v0}, Lsun/net/www/ApplicationLaunchException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_0

    .line 39
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method private findExecutablePath(Ljava/lang/String;)Z
    .locals 11
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 165
    :cond_0
    return v9

    .line 169
    :cond_1
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 170
    .local v4, "index":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 171
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "command":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 180
    iput-object p1, p0, Lsun/net/www/MimeLauncher;->execPath:Ljava/lang/String;

    .line 181
    return v10

    .line 174
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    move-object v0, p1

    .restart local v0    # "command":Ljava/lang/String;
    goto :goto_0

    .line 186
    .restart local v2    # "f":Ljava/io/File;
    :cond_3
    new-instance v7, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v8, "exec.path"

    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "execPathList":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 189
    return v9

    .line 192
    :cond_4
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v7, "|"

    invoke-direct {v5, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v5, "iter":Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 194
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 195
    .local v6, "prefix":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "fullCmd":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lsun/net/www/MimeLauncher;->execPath:Ljava/lang/String;

    .line 199
    return v10

    .line 203
    .end local v3    # "fullCmd":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_6
    return v9
.end method


# virtual methods
.method protected getTempFileName(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "template"    # Ljava/lang/String;

    .prologue
    .line 67
    move-object/from16 v8, p2

    .line 73
    .local v8, "tempFilename":Ljava/lang/String;
    const-string/jumbo v12, "%s"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 74
    .local v9, "wildcard":I
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "prefix":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 77
    .local v7, "suffix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    if-ge v9, v12, :cond_0

    .line 78
    add-int/lit8 v12, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v10, v12, v14

    .line 82
    .local v10, "timestamp":J
    const/4 v2, 0x0

    .line 83
    .local v2, "argIndex":I
    :goto_0
    const-string/jumbo v12, "%s"

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 84
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 86
    add-int/lit8 v13, v2, 0x2

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 84
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "filename":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 93
    .local v4, "extension":Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 97
    .local v3, "dot":I
    if-ltz v3, :cond_2

    const/16 v12, 0x2f

    invoke-virtual {v5, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    if-le v3, v12, :cond_2

    .line 98
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "HJ"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    return-object v8
.end method

.method public run()V
    .locals 10

    .prologue
    .line 110
    :try_start_0
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->m:Lsun/net/www/MimeEntry;

    invoke-virtual {v8}, Lsun/net/www/MimeEntry;->getTempFileTemplate()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "ofn":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 112
    iget-object v5, p0, Lsun/net/www/MimeLauncher;->genericTempFileTemplate:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->uc:Ljava/net/URLConnection;

    invoke-virtual {v8}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lsun/net/www/MimeLauncher;->getTempFileName(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 117
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 118
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v8, 0x800

    new-array v0, v8, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 121
    .local v3, "i":I
    :goto_0
    :try_start_2
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    .line 122
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 129
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 136
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/OutputStream;
    :goto_1
    const/4 v4, 0x0

    .line 137
    .local v4, "inx":I
    :try_start_4
    iget-object v1, p0, Lsun/net/www/MimeLauncher;->execPath:Ljava/lang/String;

    .line 138
    .local v1, "c":Ljava/lang/String;
    :goto_2
    const-string/jumbo v8, "%t"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lsun/net/www/MimeLauncher;->uc:Ljava/net/URLConnection;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 140
    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto :goto_2

    .line 128
    .end local v1    # "c":Ljava/lang/String;
    .end local v4    # "inx":I
    .restart local v0    # "buf":[B
    .restart local v3    # "i":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 129
    iget-object v8, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 131
    .end local v0    # "buf":[B
    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v3    # "i":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v8

    .line 128
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 129
    iget-object v9, p0, Lsun/net/www/MimeLauncher;->is:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 127
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 143
    .end local v0    # "buf":[B
    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v1    # "c":Ljava/lang/String;
    .restart local v4    # "inx":I
    :cond_2
    const/4 v7, 0x0

    .line 144
    .local v7, "substituted":Z
    :goto_3
    :try_start_6
    const-string/jumbo v8, "%s"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    const/4 v7, 0x1

    goto :goto_3

    .line 148
    :cond_3
    if-nez v7, :cond_4

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 108
    .end local v1    # "c":Ljava/lang/String;
    .end local v4    # "inx":I
    .end local v5    # "ofn":Ljava/lang/String;
    .end local v7    # "substituted":Z
    :goto_4
    return-void

    .line 154
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4
.end method
