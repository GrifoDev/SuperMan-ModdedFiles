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

    iput-object p1, p0, Lcom/cmdm/control/app/a$1;->e:Lcom/cmdm/control/app/a;

    iput-object p2, p0, Lcom/cmdm/control/app/a$1;->f:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->isSdcardExsit()Z

    move-result v18

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v16, 0x0

    const/4 v10, 0x0

    const-string v14, ""

    :try_start_0
    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v11, Ljava/io/PrintWriter;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/app/a$1;->f:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cmdm/control/app/a$1;->f:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v14

    if-eqz v17, :cond_2

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    :cond_3
    move-object v10, v11

    move-object/from16 v16, v17

    :cond_4
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    const-string v18, ">>>>>>>>>>>>>>>>>>>>>>"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "line.separator"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "line.separator"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "line.separator"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

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

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/32 v20, 0x100000

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

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

    :try_start_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_c

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v6, v7

    goto/16 :goto_0

    :cond_7
    :try_start_7
    invoke-virtual {v2, v11}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-object v2

    goto/16 :goto_1

    :catch_0
    move-exception v18

    :goto_4
    if-eqz v16, :cond_8

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_8
    :goto_5
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v18

    :goto_6
    if-eqz v16, :cond_9

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_9
    :goto_7
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    :cond_a
    throw v18

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_4
    move-exception v18

    :goto_8
    if-eqz v6, :cond_0

    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v18

    goto/16 :goto_0

    :catchall_1
    move-exception v18

    :goto_9
    if-eqz v6, :cond_b

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_b
    :goto_a
    throw v18

    :catch_6
    move-exception v18

    move-object v6, v7

    goto/16 :goto_0

    :catch_7
    move-exception v19

    goto :goto_a

    :catchall_2
    move-exception v18

    move-object v6, v7

    goto :goto_9

    :catch_8
    move-exception v18

    move-object v6, v7

    goto :goto_8

    :catchall_3
    move-exception v18

    move-object/from16 v16, v17

    goto :goto_6

    :catchall_4
    move-exception v18

    move-object v10, v11

    move-object/from16 v16, v17

    goto :goto_6

    :catch_9
    move-exception v18

    move-object/from16 v16, v17

    goto :goto_4

    :catch_a
    move-exception v18

    move-object v10, v11

    move-object/from16 v16, v17

    goto :goto_4

    :cond_c
    move-object v6, v7

    goto/16 :goto_0
.end method
