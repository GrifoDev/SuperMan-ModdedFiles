.class public Lcom/yulore/sdk/ivr/util/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFF_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unZipByFirstWord(Ljava/io/File;Ljava/io/File;)Z
    .locals 19
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "targetDir"    # Ljava/io/File;

    .prologue
    .line 26
    const-string v15, "YuloreIVR"

    const-string v16, " starts unzip file "

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 29
    :cond_0
    const-string v15, "YuloreIVR"

    const-string v16, " the zip file is not found. "

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v12, 0x0

    .line 97
    :cond_1
    :goto_0
    return v12

    .line 33
    :cond_2
    const-string v15, "YuloreIVR"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " unzip "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v15, "YuloreIVR"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " the target path = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v13, 0x0

    .line 38
    .local v13, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v12, 0x0

    .line 41
    .local v12, "success":Z
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v8, "fis":Ljava/io/FileInputStream;
    new-instance v14, Ljava/util/zip/ZipInputStream;

    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-direct {v15, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v13    # "zis":Ljava/util/zip/ZipInputStream;
    .local v14, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 47
    .local v2, "count":I
    const/16 v15, 0x400

    :try_start_1
    new-array v1, v15, [B

    .line 49
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_6

    .line 50
    const-string v15, "YuloreIVR"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unZip file:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/yulore/sdk/ivr/util/Utility;->startWithNum(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 55
    new-instance v11, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v11, "subFolder":Ljava/io/File;
    :goto_2
    const-string v15, "YuloreIVR"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unZip file dir :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v7, "entryFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v6, "entryDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 67
    :cond_3
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v9, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v15, 0x400

    invoke-direct {v3, v9, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 71
    .local v3, "dest":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 72
    .local v10, "len":I
    :goto_3
    const/4 v15, 0x0

    const/16 v16, 0x400

    move/from16 v0, v16

    invoke-virtual {v14, v1, v15, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v10

    const/4 v15, -0x1

    if-eq v10, v15, :cond_5

    .line 73
    const/4 v15, 0x0

    invoke-virtual {v3, v1, v15, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 85
    .end local v1    # "buffer":[B
    .end local v3    # "dest":Ljava/io/BufferedOutputStream;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryDir":Ljava/io/File;
    .end local v7    # "entryFile":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "len":I
    .end local v11    # "subFolder":Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v13, v14

    .line 86
    .end local v2    # "count":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v13, :cond_1

    .line 92
    :try_start_3
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 93
    :catch_1
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 57
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_4
    :try_start_4
    new-instance v11, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "conf"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11    # "subFolder":Ljava/io/File;
    goto/16 :goto_2

    .line 75
    .restart local v3    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v6    # "entryDir":Ljava/io/File;
    .restart local v7    # "entryFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "len":I
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 76
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto/16 :goto_1

    .line 80
    .end local v3    # "dest":Ljava/io/BufferedOutputStream;
    .end local v6    # "entryDir":Ljava/io/File;
    .end local v7    # "entryFile":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "len":I
    .end local v11    # "subFolder":Ljava/io/File;
    :cond_6
    const/4 v12, 0x1

    .line 81
    const-string v15, "YuloreIVR"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " unzip files number = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v15, "YuloreIVR"

    const-string v16, " unzip file successfully "

    invoke-static/range {v15 .. v16}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    if-eqz v14, :cond_7

    .line 92
    :try_start_5
    invoke-virtual {v14}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    move-object v13, v14

    .line 95
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 93
    .end local v13    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v13, v14

    .line 96
    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_0

    .line 87
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 88
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    if-eqz v13, :cond_1

    .line 92
    :try_start_7
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 93
    :catch_4
    move-exception v4

    .line 94
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 91
    :goto_6
    if-eqz v13, :cond_8

    .line 92
    :try_start_8
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 95
    :cond_8
    :goto_7
    throw v15

    .line 93
    :catch_5
    move-exception v4

    .line 94
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 90
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "count":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .line 87
    .end local v13    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v14    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_6
    move-exception v4

    move-object v13, v14

    .end local v14    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_5

    .line 85
    .end local v2    # "count":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    goto/16 :goto_4
.end method
