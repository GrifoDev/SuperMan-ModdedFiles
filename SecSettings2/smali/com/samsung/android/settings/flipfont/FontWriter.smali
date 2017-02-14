.class public Lcom/samsung/android/settings/flipfont/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v12, p2

    move-object/from16 v11, p1

    move-object/from16 v10, p3

    const/4 v5, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    new-instance v15, Ljava/lang/Exception;

    const-string/jumbo v16, "Directory traversal attack!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v6

    const/4 v5, 0x1

    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-nez v15, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const/4 v5, 0x1

    :cond_3
    return v5

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v15, 0x400

    new-array v2, v15, [B

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_7

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v15, v14}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v15

    if-eqz p2, :cond_5

    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_2
    throw v15

    :cond_7
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_8

    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto/16 :goto_0
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/app_fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v1, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    return-object v0
.end method

.method public deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/app_fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-object v5, v4, v1

    invoke-virtual {v5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v4, v1

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/data/app_fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Directory traversal attack!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    const-string/jumbo v5, "persist.sys.flipfontpath"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_1
    throw v5

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0
.end method
