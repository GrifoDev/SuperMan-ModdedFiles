.class Landroid/content/pm/AMSLogger$AMSHandler;
.super Ljava/util/logging/Handler;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AMSLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Landroid/content/pm/AMSLogger;


# direct methods
.method public constructor <init>(Landroid/content/pm/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/pm/AMSLogger;
    .param p2, "newLogFile"    # Ljava/lang/String;
    .param p3, "oldLogFile"    # Ljava/lang/String;
    .param p4, "maxSize"    # J

    .prologue
    .line 361
    iput-object p1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->this$0:Landroid/content/pm/AMSLogger;

    .line 362
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    iput-object p2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    .line 365
    iput-object p3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    .line 366
    iput-wide p4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->maxSize:J

    .line 367
    invoke-direct {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 361
    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v4, 0x0

    .line 414
    .local v4, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 416
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 417
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v4    # "in":Ljava/io/InputStream;
    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 418
    .local v8, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 420
    .end local v7    # "out":Ljava/io/OutputStream;
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    if-lez v6, :cond_4

    .line 421
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 423
    .end local v0    # "buf":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 425
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 426
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 427
    const/4 v4, 0x0

    .line 429
    :cond_0
    if-eqz v7, :cond_1

    .line 430
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 431
    const/4 v7, 0x0

    .line 438
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 439
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 440
    const/4 v4, 0x0

    .line 442
    :cond_2
    if-eqz v7, :cond_3

    .line 443
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 444
    const/4 v7, 0x0

    .line 412
    :cond_3
    :goto_3
    return-void

    .restart local v0    # "buf":[B
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v8    # "out":Ljava/io/OutputStream;
    :cond_4
    move-object v7, v8

    .end local v8    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    goto :goto_2

    .line 433
    .end local v0    # "buf":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 434
    .local v3, "ie":Ljava/io/IOException;
    invoke-static {}, Landroid/content/pm/AMSLogger;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Couldn\'t close FileInputStream"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 446
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/content/pm/AMSLogger;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Couldn\'t close FileInputStream"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 423
    .end local v1    # "e":Ljava/io/IOException;
    .local v4, "in":Ljava/io/InputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 371
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 373
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/content/pm/AMSLogger$AMSHandler;->maxSize:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 377
    :try_start_0
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_0

    .line 378
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 379
    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 399
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_1

    .line 400
    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 401
    invoke-virtual {v1, v8, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 403
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 404
    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v3

    .line 385
    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_3

    .line 386
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 387
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 389
    :cond_3
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/content/pm/AMSLogger$AMSHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v2, "oldFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 392
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 393
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    .line 394
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 395
    .end local v2    # "oldFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 467
    :cond_1
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 461
    :cond_0
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 455
    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/util/logging/Handler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->flush()V

    .line 451
    :cond_1
    return-void
.end method
