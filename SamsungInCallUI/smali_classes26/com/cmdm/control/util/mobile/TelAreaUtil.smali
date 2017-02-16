.class public Lcom/cmdm/control/util/mobile/TelAreaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;,
        Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;,
        Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    }
.end annotation


# static fields
.field public static final DATABASE_PATH:Ljava/lang/String;

.field private static ev:Lcom/cmdm/control/util/mobile/TelAreaUtil; = null

.field private static final ew:Ljava/lang/String; = "tel.bin"

.field private static ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

.field private static ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

.field private static ez:Ljava/lang/String;


# instance fields
.field public final AREADATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    .line 15
    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    .line 16
    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    .line 17
    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    const-string v1, "/CXDM/DownloadCaiXiangImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->DATABASE_PATH:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const-string v0, "tel.bin"

    iput-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->AREADATA:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private a(Ljava/io/RandomAccessFile;JJJZ)I
    .locals 8
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "startpos"    # J
    .param p4, "endpos"    # J
    .param p6, "looknum"    # J
    .param p8, "forecast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    invoke-direct {v0, p0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    .line 413
    .local v0, "record":Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    const-wide/16 v2, 0x0

    .line 416
    .local v2, "seekpos":J
    :cond_0
    sub-long v4, p4, p2

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v6, v1

    div-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    .line 417
    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 416
    add-long v2, p2, v4

    .line 418
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 419
    invoke-virtual {v0, p1}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->read(Ljava/io/RandomAccessFile;)V

    .line 421
    invoke-virtual {v0, p6, p7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->inWhich(J)I

    move-result v1

    if-lez v1, :cond_1

    .line 422
    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v4, v1

    add-long p2, v2, v4

    .line 428
    :goto_0
    cmp-long v1, p2, p4

    if-lez v1, :cond_0

    .line 430
    if-eqz p8, :cond_3

    .line 431
    iget v1, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    .line 433
    :goto_1
    return v1

    .line 423
    :cond_1
    invoke-virtual {v0, p6, p7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->inWhich(J)I

    move-result v1

    if-gez v1, :cond_2

    .line 424
    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v1

    int-to-long v4, v1

    sub-long p4, v2, v4

    goto :goto_0

    .line 426
    :cond_2
    iget v1, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    goto :goto_1

    .line 433
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 12
    .param p1, "indexFilePath"    # Ljava/lang/String;
    .param p2, "telNum"    # J
    .param p4, "forecast"    # Z

    .prologue
    .line 376
    const/4 v11, 0x0

    .line 378
    .local v11, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tel.bin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    sput-object p1, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ez:Ljava/lang/String;

    .line 383
    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    invoke-direct {v0, p0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    .line 384
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->read(Ljava/io/RandomAccessFile;)V

    .line 385
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->print()V

    .line 387
    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-direct {v0, p0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    .line 388
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual {v0, v1}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->read(Ljava/io/RandomAccessFile;)V

    .line 389
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->print()V

    .line 392
    :cond_1
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    iget v0, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    int-to-long v2, v0

    .line 393
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ex:Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    iget v0, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eE:I

    int-to-long v4, v0

    move-object v0, p0

    move-wide v6, p2

    move/from16 v8, p4

    .line 392
    invoke-direct/range {v0 .. v8}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/io/RandomAccessFile;JJJZ)I

    move-result v10

    .line 394
    .local v10, "index":I
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ey:Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual {v0, v10}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->getCodeByIndex(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 398
    if-eqz v1, :cond_2

    .line 400
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 407
    .end local v10    # "index":I
    :cond_2
    :goto_0
    return-object v0

    .line 401
    .restart local v10    # "index":I
    :catch_0
    move-exception v9

    .line 402
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 395
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "index":I
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v9

    move-object v1, v11

    .line 396
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 398
    if-eqz v1, :cond_3

    .line 400
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 407
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 402
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 397
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v0

    move-object v1, v11

    .line 398
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    if-eqz v1, :cond_4

    .line 400
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 405
    :cond_4
    :goto_4
    throw v0

    .line 401
    :catch_3
    move-exception v9

    .line 402
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 397
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 395
    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;)V
    .locals 6
    .param p2, "newRecord"    # Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;",
            ">;",
            "Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 82
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 83
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    iget v2, v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    iget v3, p2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    if-ne v2, v3, :cond_0

    .line 85
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    .line 86
    .local v0, "lastRecord":Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    iget-wide v2, p2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    iget-wide v4, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 87
    iget v3, p2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    add-int/2addr v2, v3

    .line 86
    iput v2, v0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    .line 91
    .end local v0    # "lastRecord":Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private aN(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v4, "strLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 39
    .local v0, "bReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 40
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 39
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .local v1, "bReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 42
    .local v3, "str":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    .line 49
    if-eqz v1, :cond_3

    .line 51
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .line 57
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "str":Ljava/lang/String;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v4

    .line 43
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    goto :goto_0

    .line 46
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "str":Ljava/lang/String;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 52
    :catch_1
    move-exception v2

    .line 53
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 48
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 49
    :goto_3
    if-eqz v0, :cond_2

    .line 51
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 56
    :cond_2
    :goto_4
    throw v5

    .line 52
    :catch_2
    move-exception v2

    .line 53
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 52
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "str":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 53
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 48
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "str":Ljava/lang/String;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 46
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private d(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 26
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "telToAreaCode":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    .line 97
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 96
    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v21, "tmpAreaCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v18, "strAreaCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 105
    const/16 v21, 0x0

    .line 107
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v16, "sb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 113
    new-instance v8, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;Ljava/lang/String;)V

    .line 114
    .local v8, "areaCode":Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;
    invoke-virtual {v8}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->print()V

    .line 117
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v19, "telNunms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 119
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v15, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;>;"
    const-wide/16 v4, 0x0

    .line 121
    .local v4, "baseNum":J
    const/4 v9, 0x0

    .line 122
    .local v9, "baseArea":Ljava/lang/String;
    const/4 v6, 0x0

    .line 123
    .local v6, "numCnt":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 142
    new-instance v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;JII)V

    .line 141
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/util/ArrayList;Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;)V

    .line 149
    const/4 v12, 0x0

    .line 151
    .local v12, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .local v13, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x0

    :try_start_1
    invoke-virtual {v13, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    new-instance v11, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V

    .line 155
    .local v11, "hearder":Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;
    invoke-virtual {v11}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->Size()I

    move-result v2

    invoke-virtual {v8}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->Size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    .line 156
    iget v3, v11, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    .line 157
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    invoke-virtual {v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->Size()I

    move-result v2

    mul-int/2addr v2, v7

    add-int/2addr v2, v3

    .line 156
    iput v2, v11, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eE:I

    .line 158
    invoke-virtual {v11}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->print()V

    .line 159
    invoke-virtual {v11, v13}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->write(Ljava/io/RandomAccessFile;)V

    .line 161
    invoke-virtual {v8, v13}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->write(Ljava/io/RandomAccessFile;)V

    .line 163
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_7

    .line 169
    if-eqz v13, :cond_9

    .line 171
    :try_start_2
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v12, v13

    .line 177
    .end local v11    # "hearder":Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_4
    return-void

    .line 99
    .end local v4    # "baseNum":J
    .end local v6    # "numCnt":I
    .end local v8    # "areaCode":Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;
    .end local v9    # "baseArea":Ljava/lang/String;
    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .end local v15    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;>;"
    .end local v16    # "sb":Ljava/lang/StringBuffer;
    .end local v19    # "telNunms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 100
    .local v17, "str":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 108
    .end local v17    # "str":Ljava/lang/String;
    .restart local v16    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 109
    .restart local v17    # "str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 123
    .end local v17    # "str":Ljava/lang/String;
    .restart local v4    # "baseNum":J
    .restart local v6    # "numCnt":I
    .restart local v8    # "areaCode":Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;
    .restart local v9    # "baseArea":Ljava/lang/String;
    .restart local v15    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;>;"
    .restart local v19    # "telNunms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 124
    .local v20, "tm":Ljava/lang/Long;
    if-nez v6, :cond_5

    .line 125
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 126
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "baseArea":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 127
    .restart local v9    # "baseArea":Ljava/lang/String;
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 129
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v0, v6

    move-wide/from16 v24, v0

    add-long v24, v24, v4

    cmp-long v2, v2, v24

    if-nez v2, :cond_6

    .line 130
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 133
    :cond_6
    new-instance v2, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    .line 134
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;JII)V

    .line 133
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/util/ArrayList;Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;)V

    .line 135
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 136
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "baseArea":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 137
    .restart local v9    # "baseArea":Ljava/lang/String;
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 163
    .end local v20    # "tm":Ljava/lang/Long;
    .restart local v11    # "hearder":Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    :cond_7
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;

    .line 164
    .local v14, "record":Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    invoke-virtual {v14, v13}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->write(Ljava/io/RandomAccessFile;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    .line 166
    .end local v11    # "hearder":Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;
    .end local v14    # "record":Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
    :catch_0
    move-exception v10

    move-object v12, v13

    .line 167
    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "e":Ljava/lang/Exception;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    :goto_5
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    if-eqz v12, :cond_1

    .line 171
    :try_start_5
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 172
    :catch_1
    move-exception v10

    .line 173
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 168
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 169
    :goto_6
    if-eqz v12, :cond_8

    .line 171
    :try_start_6
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 176
    :cond_8
    :goto_7
    throw v2

    .line 172
    :catch_2
    move-exception v10

    .line 173
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 172
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "hearder":Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v10

    .line 173
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .end local v10    # "e":Ljava/io/IOException;
    :cond_9
    move-object v12, v13

    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_4

    .line 168
    .end local v11    # "hearder":Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;
    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    move-object v12, v13

    .end local v13    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 166
    :catch_4
    move-exception v10

    goto :goto_5
.end method

.method public static declared-synchronized getInstance()Lcom/cmdm/control/util/mobile/TelAreaUtil;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/cmdm/control/util/mobile/TelAreaUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;

    invoke-direct {v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    .line 23
    :cond_0
    sget-object v0, Lcom/cmdm/control/util/mobile/TelAreaUtil;->ev:Lcom/cmdm/control/util/mobile/TelAreaUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public genIndexFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "indexFilePath"    # Ljava/lang/String;
    .param p2, "souceFile"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->aN(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 29
    .local v0, "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->x(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    .line 30
    .local v1, "telToArea":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "tel.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 31
    return-void
.end method

.method public searchTel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "indexFilePath"    # Ljava/lang/String;
    .param p2, "telNum"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->searchTel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public searchTel(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "indexFilePath"    # Ljava/lang/String;
    .param p2, "telNum"    # Ljava/lang/String;
    .param p3, "forecast"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 303
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 307
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 311
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x36

    if-ne v2, v3, :cond_1

    .line 312
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 316
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_6

    .line 317
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v7, :cond_2

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 323
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "dial":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 367
    .end local v0    # "dial":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0

    .line 330
    .restart local v0    # "dial":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v5, :cond_5

    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 367
    .end local v0    # "dial":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p3}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_5

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v2, v6, :cond_5

    .line 340
    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 339
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v0    # "dial":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/cmdm/control/util/mobile/TelAreaUtil;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    .line 349
    if-nez v0, :cond_3

    .line 354
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v2, v6, :cond_5

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method x(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "strs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v4, "telToArea":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    .line 65
    .local v5, "tels":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 66
    .local v1, "len":I
    const/4 v2, 0x0

    .line 67
    .local v2, "strArea":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 76
    return-object v4

    .line 67
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "string":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 69
    array-length v1, v5

    .line 70
    add-int/lit8 v7, v1, -0x1

    aget-object v7, v5, v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-ge v0, v7, :cond_0

    .line 73
    aget-object v7, v5, v0

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
