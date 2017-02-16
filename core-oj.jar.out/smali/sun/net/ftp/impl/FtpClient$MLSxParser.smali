.class Lsun/net/ftp/impl/FtpClient$MLSxParser;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Lsun/net/ftp/FtpDirParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/ftp/impl/FtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MLSxParser"
.end annotation


# instance fields
.field private df:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method private constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .locals 2
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    .line 293
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$MLSxParser;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/ftp/impl/FtpClient;

    .prologue
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    return-void
.end method


# virtual methods
.method public parseLine(Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;
    .locals 10
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 298
    const/4 v5, 0x0

    .line 299
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 300
    .local v4, "i":I
    if-lez v4, :cond_1

    .line 301
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 307
    :goto_0
    new-instance v3, Lsun/net/ftp/FtpDirEntry;

    invoke-direct {v3, v5}, Lsun/net/ftp/FtpDirEntry;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, "file":Lsun/net/ftp/FtpDirEntry;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 310
    const-string/jumbo v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 311
    if-lez v4, :cond_2

    .line 312
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "s":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 318
    :goto_2
    const-string/jumbo v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 319
    if-lez v4, :cond_0

    .line 320
    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "fact":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v3, v2, v7}, Lsun/net/ftp/FtpDirEntry;->addFact(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpDirEntry;

    goto :goto_1

    .line 304
    .end local v2    # "fact":Ljava/lang/String;
    .end local v3    # "file":Lsun/net/ftp/FtpDirEntry;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo p1, ""

    goto :goto_0

    .line 315
    .restart local v3    # "file":Lsun/net/ftp/FtpDirEntry;
    :cond_2
    move-object v6, p1

    .line 316
    .restart local v6    # "s":Ljava/lang/String;
    const-string/jumbo p1, ""

    goto :goto_2

    .line 325
    .end local v6    # "s":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "Size"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 326
    .restart local v6    # "s":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 327
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lsun/net/ftp/FtpDirEntry;->setSize(J)Lsun/net/ftp/FtpDirEntry;

    .line 329
    :cond_4
    const-string/jumbo v8, "Modify"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 330
    if-eqz v6, :cond_5

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "d":Ljava/util/Date;
    :try_start_0
    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 336
    .end local v0    # "d":Ljava/util/Date;
    :goto_3
    if-eqz v0, :cond_5

    .line 337
    invoke-virtual {v3, v0}, Lsun/net/ftp/FtpDirEntry;->setLastModified(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 340
    :cond_5
    const-string/jumbo v8, "Create"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    if-eqz v6, :cond_6

    .line 342
    const/4 v0, 0x0

    .line 344
    .restart local v0    # "d":Ljava/util/Date;
    :try_start_1
    iget-object v8, p0, Lsun/net/ftp/impl/FtpClient$MLSxParser;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 347
    .end local v0    # "d":Ljava/util/Date;
    :goto_4
    if-eqz v0, :cond_6

    .line 348
    invoke-virtual {v3, v0}, Lsun/net/ftp/FtpDirEntry;->setCreated(Ljava/util/Date;)Lsun/net/ftp/FtpDirEntry;

    .line 351
    :cond_6
    const-string/jumbo v8, "Type"

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->getFact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 352
    if-eqz v6, :cond_a

    .line 353
    const-string/jumbo v8, "file"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 354
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->FILE:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 356
    :cond_7
    const-string/jumbo v8, "dir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 357
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->DIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 359
    :cond_8
    const-string/jumbo v8, "cdir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 360
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->CDIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 362
    :cond_9
    const-string/jumbo v8, "pdir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 363
    sget-object v8, Lsun/net/ftp/FtpDirEntry$Type;->PDIR:Lsun/net/ftp/FtpDirEntry$Type;

    invoke-virtual {v3, v8}, Lsun/net/ftp/FtpDirEntry;->setType(Lsun/net/ftp/FtpDirEntry$Type;)Lsun/net/ftp/FtpDirEntry;

    .line 366
    :cond_a
    return-object v3

    .line 345
    .restart local v0    # "d":Ljava/util/Date;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/text/ParseException;
    goto :goto_4

    .line 334
    .end local v1    # "ex":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .restart local v1    # "ex":Ljava/text/ParseException;
    goto :goto_3
.end method
