.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# static fields
.field private static final contentClassPrefix:Ljava/lang/String; = "sun.net.www.content"

.field private static final contentPathProp:Ljava/lang/String; = "java.content.handler.pkgs"

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field static factory:Ljava/net/ContentHandlerFactory;

.field private static fileNameMap:Ljava/net/FileNameMap;

.field private static handlers:Ljava/util/Hashtable;


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private readTimeout:I

.field private requests:Lsun/net/www/MessageHeader;

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 238
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1228
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    .line 170
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 215
    iput-boolean v2, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 236
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 255
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 282
    iput-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    .line 457
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 456
    return-void
.end method

.method private static checkfpx(Ljava/io/InputStream;)Z
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1610
    const/16 v10, 0x100

    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    .line 1614
    const-wide/16 v8, 0x1c

    .line 1617
    .local v8, "toSkip":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v2

    .line 1614
    .local v2, "posn":J
    const-wide/16 v10, 0x1c

    .line 1617
    cmp-long v10, v2, v10

    if-gez v10, :cond_0

    .line 1618
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1619
    const/4 v10, 0x0

    return v10

    .line 1622
    :cond_0
    const/16 v10, 0x10

    new-array v1, v10, [I

    .line 1623
    .local v1, "c":[I
    const/4 v10, 0x2

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_1

    .line 1624
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1625
    const/4 v10, 0x0

    return v10

    .line 1628
    :cond_1
    const/4 v10, 0x0

    aget v0, v1, v10

    .line 1630
    .local v0, "byteOrder":I
    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 1632
    const/4 v10, 0x2

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_2

    .line 1633
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1634
    const/4 v10, 0x0

    return v10

    .line 1637
    :cond_2
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_3

    .line 1638
    const/4 v10, 0x0

    aget v5, v1, v10

    .line 1639
    .local v5, "uSectorShift":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v5, v10

    .line 1646
    :goto_0
    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 1647
    const-wide/16 v10, 0x30

    sub-long v8, v10, v2

    .line 1648
    const-wide/16 v6, 0x0

    .line 1649
    .local v6, "skipped":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-gez v10, :cond_4

    .line 1650
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1651
    const/4 v10, 0x0

    return v10

    .line 1642
    .end local v5    # "uSectorShift":I
    .end local v6    # "skipped":J
    :cond_3
    const/4 v10, 0x0

    aget v10, v1, v10

    shl-int/lit8 v5, v10, 0x8

    .line 1643
    .restart local v5    # "uSectorShift":I
    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v5, v10

    goto :goto_0

    .line 1653
    .restart local v6    # "skipped":J
    :cond_4
    add-long/2addr v2, v6

    .line 1655
    const/4 v10, 0x4

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_5

    .line 1656
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1657
    const/4 v10, 0x0

    return v10

    .line 1661
    :cond_5
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_6

    .line 1662
    const/4 v10, 0x0

    aget v4, v1, v10

    .line 1663
    .local v4, "sectDirStart":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v4, v10

    .line 1664
    const/4 v10, 0x2

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v4, v10

    .line 1665
    const/4 v10, 0x3

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x18

    add-int/2addr v4, v10

    .line 1672
    :goto_1
    const-wide/16 v10, 0x4

    add-long/2addr v2, v10

    .line 1673
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1675
    const/4 v10, 0x1

    shl-int/2addr v10, v5

    int-to-long v10, v10

    int-to-long v12, v4

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x200

    add-long/2addr v10, v12

    const-wide/16 v12, 0x50

    add-long v8, v10, v12

    .line 1678
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_7

    .line 1679
    const/4 v10, 0x0

    return v10

    .line 1667
    .end local v4    # "sectDirStart":I
    :cond_6
    const/4 v10, 0x0

    aget v10, v1, v10

    shl-int/lit8 v4, v10, 0x18

    .line 1668
    .restart local v4    # "sectDirStart":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v4, v10

    .line 1669
    const/4 v10, 0x2

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v4, v10

    .line 1670
    const/4 v10, 0x3

    aget v10, v1, v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 1688
    :cond_7
    long-to-int v10, v8

    add-int/lit8 v10, v10, 0x30

    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    .line 1690
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_8

    .line 1691
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1692
    const/4 v10, 0x0

    return v10

    .line 1707
    :cond_8
    const/16 v10, 0x10

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_9

    .line 1708
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1709
    const/4 v10, 0x0

    return v10

    .line 1713
    :cond_9
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_a

    .line 1714
    const/4 v10, 0x0

    aget v10, v1, v10

    if-nez v10, :cond_a

    const/4 v10, 0x2

    aget v10, v1, v10

    const/16 v11, 0x61

    if-ne v10, v11, :cond_a

    const/4 v10, 0x3

    aget v10, v1, v10

    const/16 v11, 0x56

    if-ne v10, v11, :cond_a

    .line 1715
    const/4 v10, 0x4

    aget v10, v1, v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_a

    const/4 v10, 0x5

    aget v10, v1, v10

    const/16 v11, 0xc1

    if-ne v10, v11, :cond_a

    const/4 v10, 0x6

    aget v10, v1, v10

    const/16 v11, 0xce

    if-ne v10, v11, :cond_a

    .line 1716
    const/4 v10, 0x7

    aget v10, v1, v10

    const/16 v11, 0x11

    if-ne v10, v11, :cond_a

    const/16 v10, 0x8

    aget v10, v1, v10

    const/16 v11, 0x85

    if-ne v10, v11, :cond_a

    const/16 v10, 0x9

    aget v10, v1, v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_a

    .line 1717
    const/16 v10, 0xa

    aget v10, v1, v10

    if-nez v10, :cond_a

    const/16 v10, 0xb

    aget v10, v1, v10

    const/16 v11, 0xaa

    if-ne v10, v11, :cond_a

    const/16 v10, 0xc

    aget v10, v1, v10

    if-nez v10, :cond_a

    .line 1718
    const/16 v10, 0xd

    aget v10, v1, v10

    const/16 v11, 0xa1

    if-ne v10, v11, :cond_a

    const/16 v10, 0xe

    aget v10, v1, v10

    const/16 v11, 0xf9

    if-ne v10, v11, :cond_a

    const/16 v10, 0xf

    aget v10, v1, v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_a

    .line 1719
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1720
    const/4 v10, 0x1

    return v10

    .line 1724
    :cond_a
    const/4 v10, 0x3

    aget v10, v1, v10

    if-nez v10, :cond_b

    const/4 v10, 0x1

    aget v10, v1, v10

    const/16 v11, 0x61

    if-ne v10, v11, :cond_b

    const/4 v10, 0x0

    aget v10, v1, v10

    const/16 v11, 0x56

    if-ne v10, v11, :cond_b

    .line 1725
    const/4 v10, 0x5

    aget v10, v1, v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_b

    const/4 v10, 0x4

    aget v10, v1, v10

    const/16 v11, 0xc1

    if-ne v10, v11, :cond_b

    const/4 v10, 0x7

    aget v10, v1, v10

    const/16 v11, 0xce

    if-ne v10, v11, :cond_b

    .line 1726
    const/4 v10, 0x6

    aget v10, v1, v10

    const/16 v11, 0x11

    if-ne v10, v11, :cond_b

    const/16 v10, 0x8

    aget v10, v1, v10

    const/16 v11, 0x85

    if-ne v10, v11, :cond_b

    const/16 v10, 0x9

    aget v10, v1, v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_b

    .line 1727
    const/16 v10, 0xa

    aget v10, v1, v10

    if-nez v10, :cond_b

    const/16 v10, 0xb

    aget v10, v1, v10

    const/16 v11, 0xaa

    if-ne v10, v11, :cond_b

    const/16 v10, 0xc

    aget v10, v1, v10

    if-nez v10, :cond_b

    .line 1728
    const/16 v10, 0xd

    aget v10, v1, v10

    const/16 v11, 0xa1

    if-ne v10, v11, :cond_b

    const/16 v10, 0xe

    aget v10, v1, v10

    const/16 v11, 0xf9

    if-ne v10, v11, :cond_b

    const/16 v10, 0xf

    aget v10, v1, v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_b

    .line 1729
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1730
    const/4 v10, 0x1

    return v10

    .line 1732
    :cond_b
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1733
    const/4 v10, 0x0

    return v10
.end method

.method private getContentHandlerPkgPrefixes()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1370
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "java.content.handler.pkgs"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1372
    .local v0, "packagePrefixList":Ljava/lang/String;
    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_0

    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sun.net.www.content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 965
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1189
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getFileNameMap()Ljava/net/FileNameMap;
    .locals 2

    .prologue
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/net/DefaultFileNameMap;

    invoke-direct {v0}, Ljava/net/DefaultFileNameMap;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 315
    :cond_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    .line 1391
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 19
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1419
    const/16 v18, 0x0

    return-object v18

    .line 1421
    :cond_0
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 1422
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1423
    .local v2, "c1":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 1424
    .local v10, "c2":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 1425
    .local v11, "c3":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 1426
    .local v12, "c4":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 1427
    .local v13, "c5":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 1428
    .local v14, "c6":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 1429
    .local v15, "c7":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v16

    .line 1430
    .local v16, "c8":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v17

    .line 1431
    .local v17, "c9":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1432
    .local v3, "c10":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1433
    .local v4, "c11":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1434
    .local v5, "c12":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1435
    .local v6, "c13":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 1436
    .local v7, "c14":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1437
    .local v8, "c15":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 1438
    .local v9, "c16":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1440
    const/16 v18, 0xca

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_1

    const/16 v18, 0xba

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    const/16 v18, 0xbe

    move/from16 v0, v18

    if-ne v12, v0, :cond_1

    .line 1441
    const-string/jumbo v18, "application/java-vm"

    return-object v18

    .line 1444
    :cond_1
    const/16 v18, 0xac

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    const/16 v18, 0xed

    move/from16 v0, v18

    if-ne v10, v0, :cond_2

    .line 1446
    const-string/jumbo v18, "application/x-java-serialized-object"

    return-object v18

    .line 1449
    :cond_2
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v2, v0, :cond_a

    .line 1450
    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v10, v0, :cond_3

    .line 1451
    const/16 v18, 0x68

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    const/16 v18, 0x74

    move/from16 v0, v18

    if-ne v11, v0, :cond_4

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 1457
    :cond_3
    const-string/jumbo v18, "text/html"

    return-object v18

    .line 1452
    :cond_4
    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1453
    :cond_5
    const/16 v18, 0x62

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    const/16 v18, 0x6f

    move/from16 v0, v18

    if-ne v11, v0, :cond_6

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v12, v0, :cond_6

    const/16 v18, 0x79

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1454
    :cond_6
    const/16 v18, 0x48

    move/from16 v0, v18

    if-ne v10, v0, :cond_8

    const/16 v18, 0x54

    move/from16 v0, v18

    if-ne v11, v0, :cond_7

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1455
    :cond_7
    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v11, v0, :cond_8

    const/16 v18, 0x41

    move/from16 v0, v18

    if-ne v12, v0, :cond_8

    const/16 v18, 0x44

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1456
    :cond_8
    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v10, v0, :cond_9

    const/16 v18, 0x4f

    move/from16 v0, v18

    if-ne v11, v0, :cond_9

    const/16 v18, 0x44

    move/from16 v0, v18

    if-ne v12, v0, :cond_9

    const/16 v18, 0x59

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1460
    :cond_9
    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v10, v0, :cond_a

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v11, v0, :cond_a

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v12, v0, :cond_a

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-ne v13, v0, :cond_a

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v14, v0, :cond_a

    .line 1461
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1466
    :cond_a
    const/16 v18, 0xef

    move/from16 v0, v18

    if-ne v2, v0, :cond_b

    const/16 v18, 0xbb

    move/from16 v0, v18

    if-ne v10, v0, :cond_b

    const/16 v18, 0xbf

    move/from16 v0, v18

    if-ne v11, v0, :cond_b

    .line 1467
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v12, v0, :cond_b

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    .line 1468
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1473
    :cond_b
    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v2, v0, :cond_c

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    .line 1474
    if-nez v11, :cond_c

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v12, v0, :cond_c

    if-nez v13, :cond_c

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v14, v0, :cond_c

    .line 1475
    if-nez v15, :cond_c

    const/16 v18, 0x78

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1476
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1480
    :cond_c
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    .line 1481
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    if-nez v12, :cond_d

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    if-nez v14, :cond_d

    .line 1482
    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v15, v0, :cond_d

    if-nez v16, :cond_d

    .line 1483
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1488
    :cond_d
    if-nez v2, :cond_e

    if-nez v10, :cond_e

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v11, v0, :cond_e

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v12, v0, :cond_e

    .line 1489
    if-nez v13, :cond_e

    if-nez v14, :cond_e

    if-nez v15, :cond_e

    const/16 v18, 0x3c

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1490
    if-nez v17, :cond_e

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v5, v0, :cond_e

    .line 1491
    if-nez v6, :cond_e

    if-nez v7, :cond_e

    if-nez v8, :cond_e

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v9, v0, :cond_e

    .line 1492
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1496
    :cond_e
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_f

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_f

    if-nez v11, :cond_f

    if-nez v12, :cond_f

    .line 1497
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v13, v0, :cond_f

    if-nez v14, :cond_f

    if-nez v15, :cond_f

    if-nez v16, :cond_f

    .line 1498
    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    if-nez v5, :cond_f

    .line 1499
    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v6, v0, :cond_f

    if-nez v7, :cond_f

    if-nez v8, :cond_f

    if-nez v9, :cond_f

    .line 1500
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1504
    :cond_f
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v2, v0, :cond_10

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v10, v0, :cond_10

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v11, v0, :cond_10

    const/16 v18, 0x38

    move/from16 v0, v18

    if-ne v12, v0, :cond_10

    .line 1505
    const-string/jumbo v18, "image/gif"

    return-object v18

    .line 1508
    :cond_10
    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v2, v0, :cond_11

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v10, v0, :cond_11

    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v11, v0, :cond_11

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v12, v0, :cond_11

    .line 1509
    const-string/jumbo v18, "image/x-bitmap"

    return-object v18

    .line 1512
    :cond_11
    const/16 v18, 0x21

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v10, v0, :cond_12

    const/16 v18, 0x58

    move/from16 v0, v18

    if-ne v11, v0, :cond_12

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v12, v0, :cond_12

    .line 1513
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v13, v0, :cond_12

    const/16 v18, 0x32

    move/from16 v0, v18

    if-ne v14, v0, :cond_12

    .line 1514
    const-string/jumbo v18, "image/x-pixmap"

    return-object v18

    .line 1517
    :cond_12
    const/16 v18, 0x89

    move/from16 v0, v18

    if-ne v2, v0, :cond_13

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v10, v0, :cond_13

    const/16 v18, 0x4e

    move/from16 v0, v18

    if-ne v11, v0, :cond_13

    .line 1518
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v12, v0, :cond_13

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v13, v0, :cond_13

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v14, v0, :cond_13

    .line 1519
    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v15, v0, :cond_13

    const/16 v18, 0xa

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1520
    const-string/jumbo v18, "image/png"

    return-object v18

    .line 1523
    :cond_13
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_16

    const/16 v18, 0xd8

    move/from16 v0, v18

    if-ne v10, v0, :cond_16

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v11, v0, :cond_16

    .line 1524
    const/16 v18, 0xe0

    move/from16 v0, v18

    if-ne v12, v0, :cond_14

    .line 1525
    const-string/jumbo v18, "image/jpeg"

    return-object v18

    .line 1534
    :cond_14
    const/16 v18, 0xe1

    move/from16 v0, v18

    if-ne v12, v0, :cond_15

    .line 1535
    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v15, v0, :cond_15

    const/16 v18, 0x78

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    const/16 v18, 0x69

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v3, v0, :cond_15

    .line 1536
    if-nez v4, :cond_15

    .line 1537
    const-string/jumbo v18, "image/jpeg"

    return-object v18

    .line 1540
    :cond_15
    const/16 v18, 0xee

    move/from16 v0, v18

    if-ne v12, v0, :cond_16

    .line 1541
    const-string/jumbo v18, "image/jpg"

    return-object v18

    .line 1545
    :cond_16
    const/16 v18, 0xd0

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    const/16 v18, 0xcf

    move/from16 v0, v18

    if-ne v10, v0, :cond_17

    const/16 v18, 0x11

    move/from16 v0, v18

    if-ne v11, v0, :cond_17

    const/16 v18, 0xe0

    move/from16 v0, v18

    if-ne v12, v0, :cond_17

    .line 1546
    const/16 v18, 0xa1

    move/from16 v0, v18

    if-ne v13, v0, :cond_17

    const/16 v18, 0xb1

    move/from16 v0, v18

    if-ne v14, v0, :cond_17

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v15, v0, :cond_17

    const/16 v18, 0xe1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 1552
    invoke-static/range {p0 .. p0}, Ljava/net/URLConnection;->checkfpx(Ljava/io/InputStream;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1553
    const-string/jumbo v18, "image/vnd.fpx"

    return-object v18

    .line 1557
    :cond_17
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_18

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v10, v0, :cond_18

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v11, v0, :cond_18

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v12, v0, :cond_18

    .line 1558
    const-string/jumbo v18, "audio/basic"

    return-object v18

    .line 1561
    :cond_18
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v2, v0, :cond_19

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v10, v0, :cond_19

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v11, v0, :cond_19

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v12, v0, :cond_19

    .line 1562
    const-string/jumbo v18, "audio/basic"

    return-object v18

    .line 1565
    :cond_19
    const/16 v18, 0x52

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v10, v0, :cond_1a

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v11, v0, :cond_1a

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v12, v0, :cond_1a

    .line 1569
    const-string/jumbo v18, "audio/x-wav"

    return-object v18

    .line 1571
    :cond_1a
    const/16 v18, 0x0

    return-object v18
.end method

.method private lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    .locals 12
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-direct {p0, p1}, Ljava/net/URLConnection;->typeToPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, "contentHandlerClassName":Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/URLConnection;->getContentHandlerPkgPrefixes()Ljava/lang/String;

    move-result-object v4

    .line 1308
    .local v4, "contentHandlerPkgPrefixes":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string/jumbo v10, "|"

    invoke-direct {v9, v4, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    .local v9, "packagePrefixIter":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1311
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1314
    .local v8, "packagePrefix":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1315
    .local v2, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1317
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1324
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 1326
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/ContentHandler;

    .line 1327
    .local v7, "handler":Ljava/net/ContentHandler;
    return-object v7

    .line 1318
    .end local v7    # "handler":Ljava/net/ContentHandler;
    .restart local v1    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 1319
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1320
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 1321
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .local v1, "cls":Ljava/lang/Class;
    goto :goto_1

    .line 1333
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v8    # "packagePrefix":Ljava/lang/String;
    :cond_2
    sget-object v10, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    return-object v10

    .line 1329
    .restart local v8    # "packagePrefix":Ljava/lang/String;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static readBytes([IILjava/io/InputStream;)I
    .locals 4
    .param p0, "c"    # [I
    .param p1, "len"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1744
    new-array v0, p1, [B

    .line 1745
    .local v0, "buf":[B
    invoke-virtual {p2, v0, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 1746
    const/4 v2, -0x1

    return v2

    .line 1750
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1751
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, p0, v1

    .line 1750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1753
    :cond_1
    return v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/ContentHandlerFactory;

    .prologue
    const-class v2, Ljava/net/URLConnection;

    monitor-enter v2

    .line 1218
    :try_start_0
    sget-object v1, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-eqz v1, :cond_0

    .line 1219
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1221
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1222
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1223
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1225
    :cond_1
    sput-object p0, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1217
    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .locals 0
    .param p0, "defaultallowuserinteraction"    # Z

    .prologue
    .line 949
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 948
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1168
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .locals 1
    .param p0, "map"    # Ljava/net/FileNameMap;

    .prologue
    .line 334
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 335
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 336
    :cond_0
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 333
    return-void
.end method

.method private static skipForward(Ljava/io/InputStream;J)J
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1765
    const-wide/16 v0, 0x0

    .line 1766
    .local v0, "eachSkip":J
    const-wide/16 v2, 0x0

    .line 1768
    .local v2, "skipped":J
    :goto_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_2

    .line 1769
    sub-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 1772
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    .line 1773
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1774
    return-wide v2

    .line 1776
    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1779
    :cond_1
    add-long/2addr v2, v0

    goto :goto_0

    .line 1781
    :cond_2
    return-wide v2
.end method

.method private stripOffParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1276
    if-nez p1, :cond_0

    .line 1277
    return-object v1

    .line 1278
    :cond_0
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1280
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 1281
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1283
    :cond_1
    return-object p1
.end method

.method private typeToPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1343
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1345
    .local v2, "len":I
    new-array v3, v2, [C

    .line 1346
    .local v3, "nm":[C
    invoke-virtual {p1, v4, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1347
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 1348
    aget-char v0, v3, v1

    .line 1349
    .local v0, "c":C
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_1

    .line 1350
    const/16 v4, 0x2e

    aput-char v4, v3, v1

    .line 1347
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    :cond_1
    const/16 v4, 0x41

    if-gt v4, v0, :cond_2

    const/16 v4, 0x5a

    if-le v0, v4, :cond_0

    .line 1352
    :cond_2
    const/16 v4, 0x61

    if-gt v4, v0, :cond_3

    const/16 v4, 0x7a

    if-le v0, v4, :cond_0

    .line 1353
    :cond_3
    const/16 v4, 0x30

    if-gt v4, v0, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_0

    .line 1354
    :cond_4
    const/16 v4, 0x5f

    aput-char v4, v3, v1

    goto :goto_1

    .line 1357
    .end local v0    # "c":C
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1096
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1097
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_0
    if-nez p1, :cond_1

    .line 1099
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_2

    .line 1102
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1104
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 738
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 766
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    const-string/jumbo v0, "content-encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getContentHandler()Ljava/net/ContentHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1237
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/net/URLConnection;->stripOffParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "contentType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1239
    .local v3, "handler":Ljava/net/ContentHandler;
    if-nez v1, :cond_0

    .line 1240
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1241
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1245
    :cond_0
    if-nez v1, :cond_1

    .line 1246
    sget-object v4, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1249
    :cond_1
    :try_start_1
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/ContentHandler;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    .local v3, "handler":Ljava/net/ContentHandler;
    if-eqz v3, :cond_2

    monitor-exit p0

    .line 1251
    return-object v3

    .line 1252
    .local v3, "handler":Ljava/net/ContentHandler;
    :catch_0
    move-exception v2

    .line 1255
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_2
    :try_start_2
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-eqz v4, :cond_3

    .line 1256
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v4, v1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1257
    :cond_3
    if-nez v3, :cond_4

    .line 1259
    :try_start_3
    invoke-direct {p0, v1}, Ljava/net/URLConnection;->lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 1264
    .local v3, "handler":Ljava/net/ContentHandler;
    :goto_0
    :try_start_4
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_4
    monitor-exit p0

    .line 1266
    return-object v3

    .line 1260
    :catch_1
    move-exception v2

    .line 1261
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1262
    sget-object v3, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v3    # "handler":Ljava/net/ContentHandler;
    goto :goto_0

    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getContentLength()I
    .locals 4

    .prologue
    .line 484
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 485
    .local v0, "l":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 486
    const/4 v2, -0x1

    return v2

    .line 487
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public getContentLengthLong()J
    .locals 4

    .prologue
    .line 500
    const-string/jumbo v0, "content-length"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-string/jumbo v0, "content-type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 4

    .prologue
    .line 546
    const-string/jumbo v0, "date"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 1040
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public getExpiration()J
    .locals 4

    .prologue
    .line 534
    const-string/jumbo v0, "expires"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # I

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 587
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 1024
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string/jumbo v1, "protocol doesn\'t support input"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModified()J
    .locals 4

    .prologue
    .line 558
    const-string/jumbo v0, "last-modified"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string/jumbo v1, "protocol doesn\'t support output"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    sget-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1141
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_1

    .line 1145
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    .line 1147
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1119
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_1

    .line 1123
    return-object v1

    .line 1125
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 2
    .param p1, "allowuserinteraction"    # Z

    .prologue
    .line 923
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 924
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 922
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 386
    if-gez p1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 385
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "defaultusecaches"    # Z

    .prologue
    .line 1051
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1050
    return-void
.end method

.method public setDoInput(Z)V
    .locals 2
    .param p1, "doinput"    # Z

    .prologue
    .line 867
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 866
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 2
    .param p1, "dooutput"    # Z

    .prologue
    .line 897
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 898
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 896
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 3
    .param p1, "ifmodifiedsince"    # J

    .prologue
    .line 1012
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1013
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_0
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 1011
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 429
    if-gez p1, :cond_0

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 428
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1071
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    if-nez p1, :cond_1

    .line 1074
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_2

    .line 1077
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1079
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 2
    .param p1, "usecaches"    # Z

    .prologue
    .line 986
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 987
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 985
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
