.class Lcom/cmdm/control/app/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmdm/control/app/a;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/cmdm/control/app/a;

.field private final synthetic f:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/cmdm/control/app/a;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cmdm/control/app/a$1;->e:Lcom/cmdm/control/app/a;

    iput-object p2, p0, Lcom/cmdm/control/app/a$1;->f:Ljava/lang/Throwable;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 68
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->isSdcardExsit()Z

    move-result v18

    if-nez v18, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/16 v16, 0x0

    .line 72
    .local v16, "writer":Ljava/io/Writer;
    const/4 v10, 0x0

    .line 73
    .local v10, "printWriter":Ljava/io/PrintWriter;
    const-string v14, ""

    .line 75
    .local v14, "stackTrace":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v16    # "writer":Ljava/io/Writer;
    .local v17, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v11, Ljava/io/PrintWriter;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 77
    .end local v10    # "printWriter":Ljava/io/PrintWriter;
    .local v11, "printWriter":Ljava/io/PrintWriter;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/app/a$1;->f:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/app/a$1;->f:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 79
    .local v2, "cause":Ljava/lang/Throwable;
    :goto_1
    if-nez v2, :cond_7

    .line 83
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v14

    .line 86
    if-eqz v17, :cond_2

    .line 88
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 93
    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    .line 94
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    :cond_3
    move-object v10, v11

    .end local v11    # "printWriter":Ljava/io/PrintWriter;
    .restart local v10    # "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v16, v17

    .line 97
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v17    # "writer":Ljava/io/Writer;
    .restart local v16    # "writer":Ljava/io/Writer;
    :cond_4
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v12, "sb":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 99
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 100
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 101
    .local v15, "timestamp":Ljava/lang/String;
    const-string v18, ">>>>>>>>>>>>>>>>>>>>>>"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v18, "line.separator"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v18, "line.separator"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v18, "line.separator"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/4 v6, 0x0

    .line 109
    .local v6, "mBufferedWriter":Ljava/io/BufferedWriter;
    :try_start_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getLogFullPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "AppErrorLog.txt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "filePath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v8, "mFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 113
    .local v9, "pFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    .line 114
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/32 v20, 0x100000

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    .line 117
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 118
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 120
    :cond_6
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v18, Ljava/io/FileWriter;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    .end local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .local v7, "mBufferedWriter":Ljava/io/BufferedWriter;
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 122
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 125
    if-eqz v7, :cond_c

    .line 127
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v6, v7

    .end local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .line 80
    .end local v3    # "date":Ljava/util/Date;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .end local v8    # "mFile":Ljava/io/File;
    .end local v9    # "pFile":Ljava/io/File;
    .end local v10    # "printWriter":Ljava/io/PrintWriter;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v15    # "timestamp":Ljava/lang/String;
    .end local v16    # "writer":Ljava/io/Writer;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    .restart local v11    # "printWriter":Ljava/io/PrintWriter;
    .restart local v17    # "writer":Ljava/io/Writer;
    :cond_7
    :try_start_7
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 81
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v2

    goto/16 :goto_1

    .line 84
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v11    # "printWriter":Ljava/io/PrintWriter;
    .end local v17    # "writer":Ljava/io/Writer;
    .restart local v10    # "printWriter":Ljava/io/PrintWriter;
    .restart local v16    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v18

    .line 86
    :goto_4
    if-eqz v16, :cond_8

    .line 88
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 93
    :cond_8
    :goto_5
    if-eqz v10, :cond_4

    .line 94
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_3

    .line 89
    :catch_1
    move-exception v4

    .line 90
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 85
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 86
    :goto_6
    if-eqz v16, :cond_9

    .line 88
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 93
    :cond_9
    :goto_7
    if-eqz v10, :cond_a

    .line 94
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 96
    :cond_a
    throw v18

    .line 89
    :catch_2
    move-exception v4

    .line 90
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 89
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "printWriter":Ljava/io/PrintWriter;
    .end local v16    # "writer":Ljava/io/Writer;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    .restart local v11    # "printWriter":Ljava/io/PrintWriter;
    .restart local v17    # "writer":Ljava/io/Writer;
    :catch_3
    move-exception v4

    .line 90
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 123
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "printWriter":Ljava/io/PrintWriter;
    .end local v17    # "writer":Ljava/io/Writer;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v10    # "printWriter":Ljava/io/PrintWriter;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v13    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v15    # "timestamp":Ljava/lang/String;
    .restart local v16    # "writer":Ljava/io/Writer;
    :catch_4
    move-exception v18

    .line 125
    :goto_8
    if-eqz v6, :cond_0

    .line 127
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 128
    :catch_5
    move-exception v18

    goto/16 :goto_0

    .line 124
    :catchall_1
    move-exception v18

    .line 125
    :goto_9
    if-eqz v6, :cond_b

    .line 127
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 131
    :cond_b
    :goto_a
    throw v18

    .line 128
    .end local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v8    # "mFile":Ljava/io/File;
    .restart local v9    # "pFile":Ljava/io/File;
    :catch_6
    move-exception v18

    move-object v6, v7

    .end local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "mFile":Ljava/io/File;
    .end local v9    # "pFile":Ljava/io/File;
    :catch_7
    move-exception v19

    goto :goto_a

    .line 124
    .end local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v8    # "mFile":Ljava/io/File;
    .restart local v9    # "pFile":Ljava/io/File;
    :catchall_2
    move-exception v18

    move-object v6, v7

    .end local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_9

    .line 123
    .end local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    :catch_8
    move-exception v18

    move-object v6, v7

    .end local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    goto :goto_8

    .line 85
    .end local v3    # "date":Ljava/util/Date;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .end local v8    # "mFile":Ljava/io/File;
    .end local v9    # "pFile":Ljava/io/File;
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v15    # "timestamp":Ljava/lang/String;
    .end local v16    # "writer":Ljava/io/Writer;
    .restart local v17    # "writer":Ljava/io/Writer;
    :catchall_3
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/Writer;
    .restart local v16    # "writer":Ljava/io/Writer;
    goto :goto_6

    .end local v10    # "printWriter":Ljava/io/PrintWriter;
    .end local v16    # "writer":Ljava/io/Writer;
    .restart local v11    # "printWriter":Ljava/io/PrintWriter;
    .restart local v17    # "writer":Ljava/io/Writer;
    :catchall_4
    move-exception v18

    move-object v10, v11

    .end local v11    # "printWriter":Ljava/io/PrintWriter;
    .restart local v10    # "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/Writer;
    .restart local v16    # "writer":Ljava/io/Writer;
    goto :goto_6

    .line 84
    .end local v16    # "writer":Ljava/io/Writer;
    .restart local v17    # "writer":Ljava/io/Writer;
    :catch_9
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/Writer;
    .restart local v16    # "writer":Ljava/io/Writer;
    goto :goto_4

    .end local v10    # "printWriter":Ljava/io/PrintWriter;
    .end local v16    # "writer":Ljava/io/Writer;
    .restart local v11    # "printWriter":Ljava/io/PrintWriter;
    .restart local v17    # "writer":Ljava/io/Writer;
    :catch_a
    move-exception v18

    move-object v10, v11

    .end local v11    # "printWriter":Ljava/io/PrintWriter;
    .restart local v10    # "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v16, v17

    .end local v17    # "writer":Ljava/io/Writer;
    .restart local v16    # "writer":Ljava/io/Writer;
    goto :goto_4

    .restart local v3    # "date":Ljava/util/Date;
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v8    # "mFile":Ljava/io/File;
    .restart local v9    # "pFile":Ljava/io/File;
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    .restart local v13    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v15    # "timestamp":Ljava/lang/String;
    :cond_c
    move-object v6, v7

    .end local v7    # "mBufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "mBufferedWriter":Ljava/io/BufferedWriter;
    goto/16 :goto_0
.end method
