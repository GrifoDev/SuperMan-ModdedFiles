.class public Lcom/cmdm/control/download/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cmdm/control/download/Interface/d;


# static fields
.field static TAG:Ljava/lang/String;

.field protected static bB:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static bD:Ljava/lang/Object;


# instance fields
.field private bA:Lcom/cmdm/control/download/Interface/a;

.field public bC:Ljava/lang/String;

.field public bi:I

.field public bj:Lcom/cmdm/control/download/Interface/c;

.field public bk:Lcom/cmdm/control/download/Interface/b;

.field bq:I

.field protected bz:Lcom/cmdm/control/download/a;

.field public mContext:Landroid/content/Context;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "AsyncLoadImageTask"

    sput-object v0, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 41
    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    .line 40
    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmdm/control/download/b;->bD:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    .line 33
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    .line 34
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 35
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    .line 36
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    .line 67
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/cmdm/control/download/Interface/c;Lcom/cmdm/control/download/Interface/a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hashPostion"    # I
    .param p3, "mGetImageComplete"    # Lcom/cmdm/control/download/Interface/c;
    .param p4, "mGetGifComplete"    # Lcom/cmdm/control/download/Interface/a;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    .line 33
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    .line 34
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 35
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    .line 36
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    .line 67
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    .line 50
    iput p2, p0, Lcom/cmdm/control/download/b;->bi:I

    .line 51
    iput-object p3, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    .line 52
    iput-object p1, p0, Lcom/cmdm/control/download/b;->mContext:Landroid/content/Context;

    .line 53
    iput-object p4, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    .line 54
    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p2, p3, p0}, Lcom/cmdm/control/download/a;-><init>(ILcom/cmdm/control/download/Interface/c;Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cmdm/control/download/Interface/b;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "MIGetImage"    # Lcom/cmdm/control/download/Interface/b;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    .line 33
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    .line 34
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 35
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    .line 36
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    .line 67
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    .line 62
    iput-object p1, p0, Lcom/cmdm/control/download/b;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 64
    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p2, p0}, Lcom/cmdm/control/download/a;-><init>(Lcom/cmdm/control/download/Interface/b;Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/download/Interface/a;)V
    .locals 2
    .param p1, "mGetGifComplete"    # Lcom/cmdm/control/download/Interface/a;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    .line 33
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    .line 34
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    .line 35
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    .line 36
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    .line 67
    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    .line 58
    iput-object p1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    .line 59
    return-void
.end method

.method private T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 340
    .local v1, "isDownLoadFinish":Ljava/lang/Boolean;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "ff":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 344
    :cond_0
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadNetWorkStatu()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    iput v3, p0, Lcom/cmdm/control/download/b;->bq:I

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/b;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 355
    :cond_1
    return-object v1
.end method

.method private U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 24
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 371
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 372
    .local v9, "isDownLoadFinish":Ljava/lang/Boolean;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 373
    .local v16, "savePath":Ljava/lang/String;
    const-string v20, "downloadUrl\uff08\uff09"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "savePath:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v7, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 376
    .local v5, "con":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 377
    .local v8, "is":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 379
    .local v13, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 380
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 381
    if-eqz v5, :cond_1

    .line 382
    const v20, 0x9c40

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 383
    const-string v20, "downloadUrl\uff08\uff09"

    .line 384
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "con.getResponseCode()=="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 383
    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    const/16 v21, 0x12d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 386
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    const/16 v21, 0x12e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 387
    :cond_0
    const-string v20, "Location"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 388
    .local v15, "redirectUrl":Ljava/lang/String;
    if-eqz v15, :cond_1

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cmdm/control/download/b;->bq:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cmdm/control/download/b;->bq:I

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cmdm/control/download/b;->bq:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/cmdm/control/download/b;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .end local v15    # "redirectUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v13, :cond_2

    .line 455
    :try_start_1
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 456
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 458
    :cond_2
    if-eqz v8, :cond_3

    .line 459
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 461
    :cond_3
    if-eqz v5, :cond_4

    .line 462
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 473
    .end local v17    # "url":Ljava/net/URL;
    :cond_4
    :goto_1
    return-object v9

    .line 393
    .restart local v17    # "url":Ljava/net/URL;
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 394
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    const/16 v21, 0xce

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 395
    :cond_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 396
    .local v18, "streamLength":J
    const-string v20, "downloadUrl\uff08\uff09"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "streamLength="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " urlString=="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 398
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v20, v18, v20

    if-nez v20, :cond_7

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 400
    const-string v20, "downloadUrl\uff08\uff09"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u5df2\u7ecf\u5b58\u5728\u4e0b\u8f7d\u6587\u4ef6\uff0c\u6587\u4ef6\u5927\u5c0f\u548c\u7f51\u7edc\u6587\u4ef6\u5927\u5c0f\u4e00\u81f4"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "=="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 400
    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_0

    .line 404
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 405
    const-string v20, "downloadUrl\uff08\uff09"

    .line 406
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u5df2\u7ecf\u5b58\u5728\u4e0b\u8f7d\u6587\u4ef6\uff0c\u6587\u4ef6\u5927\u5c0f\u548c\u7f51\u7edc\u6587\u4ef6\u5927\u5c0f\u4e0d\u4e00\u81f4"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 407
    const-string v22, "=="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 406
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 405
    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 415
    :goto_2
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 414
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/cmdm/control/util/file/FileUtil;->delSortedFiles(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    .line 416
    .local v10, "isEnought":Ljava/lang/Boolean;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 418
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 419
    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 421
    .local v4, "bs":[B
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    .end local v13    # "os":Ljava/io/OutputStream;
    .local v14, "os":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 423
    .local v12, "length":I
    :goto_3
    :try_start_3
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "len":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_f

    .line 427
    const-string v20, "downloadUrl\uff08\uff09"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "streamLength="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 427
    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v20, "downloadUrl\uff08\uff09"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "length="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_8

    int-to-long v0, v12

    move-wide/from16 v20, v0

    cmp-long v20, v18, v20

    if-eqz v20, :cond_10

    .line 431
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 432
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 434
    :cond_9
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    move-object v13, v14

    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v13    # "os":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 410
    .end local v4    # "bs":[B
    .end local v10    # "isEnought":Ljava/lang/Boolean;
    .end local v11    # "len":I
    .end local v12    # "length":I
    :cond_a
    :try_start_4
    const-string v20, "downloadUrl\uff08\uff09"

    const-string v21, "\u4e0d\u5b58\u5728\u4e0b\u8f7d\u6587\u4ef6"

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v20, "downloadUrl\uff08\uff09"

    const-string v21, "file.createNewFile()"

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 445
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "streamLength":J
    :catch_0
    move-exception v6

    .line 446
    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v20, "downloadUrl\uff08\uff09"

    const-string v21, "Exception"

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 448
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 450
    :cond_b
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 451
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 454
    if-eqz v13, :cond_c

    .line 455
    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 456
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 458
    :cond_c
    if-eqz v8, :cond_d

    .line 459
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 461
    :cond_d
    if-eqz v5, :cond_4

    .line 462
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 465
    :catch_1
    move-exception v6

    .line 466
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 467
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 469
    :cond_e
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 470
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 424
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v4    # "bs":[B
    .restart local v10    # "isEnought":Ljava/lang/Boolean;
    .restart local v11    # "len":I
    .restart local v12    # "length":I
    .restart local v14    # "os":Ljava/io/OutputStream;
    .restart local v17    # "url":Ljava/net/URL;
    .restart local v18    # "streamLength":J
    :cond_f
    add-int/2addr v12, v11

    .line 425
    const/16 v20, 0x0

    :try_start_7
    move/from16 v0, v20

    invoke-virtual {v14, v4, v0, v11}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    .line 445
    .end local v11    # "len":I
    :catch_2
    move-exception v6

    move-object v13, v14

    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v13    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 436
    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v11    # "len":I
    .restart local v14    # "os":Ljava/io/OutputStream;
    :cond_10
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v9

    move-object v13, v14

    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v13    # "os":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 439
    .end local v4    # "bs":[B
    .end local v11    # "len":I
    .end local v12    # "length":I
    :cond_11
    :try_start_8
    sget-object v20, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    const-string v21, "\u6ca1\u6709\u8db3\u591f\u7684\u7a7a\u95f4\u4e0b\u8f7d"

    invoke-static/range {v20 .. v21}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v9

    goto/16 :goto_0

    .line 452
    .end local v10    # "isEnought":Ljava/lang/Boolean;
    .end local v17    # "url":Ljava/net/URL;
    .end local v18    # "streamLength":J
    :catchall_0
    move-exception v20

    .line 454
    :goto_5
    if-eqz v13, :cond_12

    .line 455
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 456
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 458
    :cond_12
    if-eqz v8, :cond_13

    .line 459
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 461
    :cond_13
    if-eqz v5, :cond_14

    .line 462
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 472
    :cond_14
    :goto_6
    throw v20

    .line 465
    :catch_3
    move-exception v6

    .line 466
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_15

    .line 467
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 469
    :cond_15
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 470
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 465
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_4
    move-exception v6

    .line 466
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 467
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 469
    :cond_16
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 470
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 452
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "os":Ljava/io/OutputStream;
    .restart local v4    # "bs":[B
    .restart local v10    # "isEnought":Ljava/lang/Boolean;
    .restart local v12    # "length":I
    .restart local v14    # "os":Ljava/io/OutputStream;
    .restart local v18    # "streamLength":J
    :catchall_1
    move-exception v20

    move-object v13, v14

    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v13    # "os":Ljava/io/OutputStream;
    goto :goto_5
.end method

.method public static aA(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "savePath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public static ar(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/cmdm/control/download/a;->ar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static aw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "hashName":Ljava/lang/String;
    return-object v0
.end method

.method private static ax(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "imageName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v1, ""

    .line 143
    .local v1, "subffix":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 144
    .local v0, "startCharindex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_0
    return-object v1
.end method

.method private static ay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/cmdm/control/download/a;->aq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private az(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getVisitImagePath()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "savePath":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    return-object v0
.end method


# virtual methods
.method public S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 308
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "ff":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "path":Ljava/lang/String;
    sget-object v4, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "path=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "downFile":Ljava/io/File;
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadNetWorkStatu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    sget-object v4, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iput v7, p0, Lcom/cmdm/control/download/b;->bq:I

    .line 318
    invoke-direct {p0, p1, v3}, Lcom/cmdm/control/download/b;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 319
    .local v2, "isDownFinish":Z
    sget-object v4, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7d\u7ed3\u675f"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v2    # "isDownFinish":Z
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    sget-object v4, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7d\u6587\u4ef6\u662f\u5426\u5b58\u5728\u672c\u5730\uff1a==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 326
    :goto_0
    return-object v4

    .line 325
    :cond_2
    sget-object v4, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0b\u8f7d\u6587\u4ef6\u662f\u5426\u5b58\u5728\u672c\u5730\uff1a==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 215
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    sget-object v4, Lcom/cmdm/control/download/b;->bD:Ljava/lang/Object;

    monitor-enter v4

    .line 192
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "myCaptureFile":Ljava/io/File;
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 194
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 193
    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 201
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "myCaptureFile":Ljava/io/File;
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    return-void

    .line 198
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "myCaptureFile":Ljava/io/File;
    :cond_0
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 202
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "myCaptureFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public aB(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 254
    .local v1, "isDownLoadFinish":Ljava/lang/Boolean;
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-direct {p0, p1, v3}, Lcom/cmdm/control/download/b;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 255
    iget-object v3, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    new-instance v0, Ljava/io/File;

    .line 258
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {v3, p1}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "downFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 260
    .local v2, "stream":Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    invoke-interface {v3, v2}, Lcom/cmdm/control/download/Interface/a;->a(Ljava/io/InputStream;)V

    .line 265
    .end local v0    # "downFile":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/cmdm/control/download/Interface/a;->a(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public aC(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 279
    .local v0, "isDownLoadFinish":Ljava/lang/Boolean;
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getVisitImagePath()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-direct {p0, p1, v1}, Lcom/cmdm/control/download/b;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method public aD(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 294
    .local v0, "isDownLoadFinish":Ljava/lang/Boolean;
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-direct {p0, p1, v1}, Lcom/cmdm/control/download/b;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method public au(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "localPath":Ljava/lang/String;
    invoke-static {p1}, Lcom/cmdm/control/download/b;->ay(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    sget-object v1, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    sget-object v1, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "localPath":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 96
    .restart local v0    # "localPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/download/b;->av(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public av(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/download/b;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "imageName":Ljava/lang/String;
    sget-object v4, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 112
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "cacheFiles":[Ljava/io/File;
    const/4 v2, 0x0

    .line 116
    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 121
    :cond_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "cacheFiles":[Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "imageName":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 117
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "cacheFiles":[Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "imageName":Ljava/lang/String;
    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "cacheFiles":[Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "imageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 130
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .line 170
    .local v0, "availMem":J
    const-wide/32 v6, 0x500000

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 174
    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/download/b;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "imageName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/cmdm/control/download/b;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "savePath":Ljava/lang/String;
    invoke-static {p1}, Lcom/cmdm/control/download/b;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v4, v5}, Lcom/cmdm/control/download/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v5, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "savePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/download/a;->execute(Ljava/lang/String;)V

    .line 78
    return-void
.end method
