.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Properties$LineReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final hexDigit:[C

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1112
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Properties;->hexDigit:[C

    .line 118
    return-void

    .line 1112
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "defaults"    # Ljava/util/Properties;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 145
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 144
    return-void
.end method

.method private declared-synchronized enumerate(Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "h"    # Ljava/util/Hashtable;

    .prologue
    monitor-enter p0

    .line 1076
    :try_start_0
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_0

    .line 1077
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v2, p1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1079
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1081
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    monitor-exit p0

    .line 1075
    return-void
.end method

.method private declared-synchronized enumerateStringProperties(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 1091
    :try_start_0
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v3, :cond_0

    .line 1092
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v3, p1}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    .line 1094
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1095
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 1096
    .local v1, "k":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1097
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1098
    check-cast v1, Ljava/lang/String;

    .end local v1    # "k":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .end local v2    # "v":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_2
    monitor-exit p0

    .line 1090
    return-void
.end method

.method private load0(Ljava/util/Properties$LineReader;)V
    .locals 14
    .param p1, "lr"    # Ljava/util/Properties$LineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3d

    const/16 v12, 0x3a

    const/4 v11, 0x0

    .line 346
    const/16 v9, 0x400

    new-array v1, v9, [C

    .line 354
    .local v1, "convtBuf":[C
    :goto_0
    invoke-virtual {p1}, Ljava/util/Properties$LineReader;->readLine()I

    move-result v5

    .local v5, "limit":I
    if-ltz v5, :cond_b

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "c":C
    const/4 v4, 0x0

    .line 357
    .local v4, "keyLen":I
    move v8, v5

    .line 358
    .local v8, "valueStart":I
    const/4 v2, 0x0

    .line 361
    .local v2, "hasSep":Z
    const/4 v6, 0x0

    .line 362
    .end local v0    # "c":C
    .local v6, "precedingBackslash":Z
    :goto_1
    if-ge v4, v5, :cond_4

    .line 363
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v0, v9, v4

    .line 365
    .local v0, "c":C
    if-eq v0, v13, :cond_0

    if-ne v0, v12, :cond_1

    :cond_0
    if-eqz v6, :cond_3

    .line 369
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_7

    .line 373
    :cond_2
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_9

    .line 374
    if-eqz v6, :cond_8

    const/4 v6, 0x0

    .line 378
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 366
    :cond_3
    add-int/lit8 v8, v4, 0x1

    .line 367
    const/4 v2, 0x1

    .line 380
    .end local v0    # "c":C
    :cond_4
    :goto_3
    if-ge v8, v5, :cond_a

    .line 381
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v0, v9, v8

    .line 382
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_6

    .line 383
    if-nez v2, :cond_a

    if-eq v0, v13, :cond_5

    if-ne v0, v12, :cond_a

    .line 384
    :cond_5
    const/4 v2, 0x1

    .line 389
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 370
    :cond_7
    add-int/lit8 v8, v4, 0x1

    .line 371
    goto :goto_3

    .line 374
    :cond_8
    const/4 v6, 0x1

    goto :goto_2

    .line 376
    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    .line 391
    .end local v0    # "c":C
    :cond_a
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    invoke-direct {p0, v9, v11, v4, v1}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    sub-int v10, v5, v8

    invoke-direct {p0, v9, v8, v10, v1}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p0, v3, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    .end local v2    # "hasSep":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyLen":I
    .end local v6    # "precedingBackslash":Z
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "valueStart":I
    :cond_b
    return-void
.end method

.method private loadConvert([CII[C)Ljava/lang/String;
    .locals 11
    .param p1, "in"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "convtBuf"    # [C

    .prologue
    const/4 v10, 0x0

    .line 534
    array-length v9, p4

    if-ge v9, p3, :cond_1

    .line 535
    mul-int/lit8 v3, p3, 0x2

    .line 536
    .local v3, "newLen":I
    if-gez v3, :cond_0

    .line 537
    const v3, 0x7fffffff

    .line 539
    :cond_0
    new-array p4, v3, [C

    .line 542
    .end local v3    # "newLen":I
    :cond_1
    move-object v5, p4

    .line 543
    .local v5, "out":[C
    const/4 v6, 0x0

    .line 544
    .local v6, "outLen":I
    add-int v1, p2, p3

    .local v1, "end":I
    move v7, v6

    .end local v6    # "outLen":I
    .local v7, "outLen":I
    move v4, p2

    .line 546
    .end local p2    # "off":I
    .local v4, "off":I
    :goto_0
    if-ge v4, v1, :cond_9

    .line 547
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v4

    .line 548
    .local v0, "aChar":C
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_8

    .line 549
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .restart local v4    # "off":I
    aget-char v0, p1, p2

    .line 550
    const/16 v9, 0x75

    if-ne v0, v9, :cond_3

    .line 552
    const/4 v8, 0x0

    .line 553
    .local v8, "value":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v9, 0x4

    if-ge v2, v9, :cond_2

    .line 554
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v4

    .line 555
    sparse-switch v0, :sswitch_data_0

    .line 569
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 570
    const-string/jumbo v10, "Malformed \\uxxxx encoding."

    .line 569
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 558
    :sswitch_0
    shl-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x30

    .line 553
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, p2

    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_1

    .line 562
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :sswitch_1
    shl-int/lit8 v9, v8, 0x4

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x61

    .line 563
    goto :goto_2

    .line 566
    :sswitch_2
    shl-int/lit8 v9, v8, 0x4

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x41

    .line 567
    goto :goto_2

    .line 573
    .end local p2    # "off":I
    .restart local v4    # "off":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    int-to-char v9, v8

    aput-char v9, v5, v7

    move p2, v4

    .end local v0    # "aChar":C
    .end local v2    # "i":I
    .end local v4    # "off":I
    .end local v8    # "value":I
    .restart local p2    # "off":I
    :goto_3
    move v7, v6

    .end local v6    # "outLen":I
    .restart local v7    # "outLen":I
    move v4, p2

    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_0

    .line 575
    .restart local v0    # "aChar":C
    :cond_3
    const/16 v9, 0x74

    if-ne v0, v9, :cond_5

    const/16 v0, 0x9

    .line 579
    .end local v0    # "aChar":C
    :cond_4
    :goto_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    move p2, v4

    .end local v4    # "off":I
    .restart local p2    # "off":I
    goto :goto_3

    .line 576
    .end local v6    # "outLen":I
    .end local p2    # "off":I
    .restart local v0    # "aChar":C
    .restart local v4    # "off":I
    .restart local v7    # "outLen":I
    :cond_5
    const/16 v9, 0x72

    if-ne v0, v9, :cond_6

    const/16 v0, 0xd

    .local v0, "aChar":C
    goto :goto_4

    .line 577
    .local v0, "aChar":C
    :cond_6
    const/16 v9, 0x6e

    if-ne v0, v9, :cond_7

    const/16 v0, 0xa

    .local v0, "aChar":C
    goto :goto_4

    .line 578
    .local v0, "aChar":C
    :cond_7
    const/16 v9, 0x66

    if-ne v0, v9, :cond_4

    const/16 v0, 0xc

    .local v0, "aChar":C
    goto :goto_4

    .line 582
    .end local v4    # "off":I
    .local v0, "aChar":C
    .restart local p2    # "off":I
    :cond_8
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    goto :goto_3

    .line 585
    .end local v0    # "aChar":C
    .end local v6    # "outLen":I
    .end local p2    # "off":I
    .restart local v4    # "off":I
    .restart local v7    # "outLen":I
    :cond_9
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5, v10, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v9

    .line 555
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "escapeSpace"    # Z
    .param p3, "escapeUnicode"    # Z

    .prologue
    const/16 v9, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x5c

    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 596
    .local v2, "len":I
    mul-int/lit8 v1, v2, 0x2

    .line 597
    .local v1, "bufLen":I
    if-gez v1, :cond_0

    .line 598
    const v1, 0x7fffffff

    .line 600
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 602
    .local v3, "outBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    if-ge v4, v2, :cond_8

    .line 603
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 606
    .local v0, "aChar":C
    const/16 v5, 0x3d

    if-le v0, v5, :cond_2

    const/16 v5, 0x7f

    if-ge v0, v5, :cond_2

    .line 607
    if-ne v0, v8, :cond_1

    .line 608
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 602
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 614
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 635
    if-lt v0, v9, :cond_3

    const/16 v5, 0x7e

    if-le v0, v5, :cond_6

    :cond_3
    move v5, v6

    :goto_2
    and-int/2addr v5, p3

    if-eqz v5, :cond_7

    .line 636
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 637
    const/16 v5, 0x75

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 638
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 639
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 640
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 641
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 616
    :sswitch_0
    if-eqz v4, :cond_4

    if-eqz p2, :cond_5

    .line 617
    :cond_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 618
    :cond_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 620
    :sswitch_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x74

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 622
    :sswitch_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x6e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 624
    :sswitch_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x72

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 626
    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 632
    :sswitch_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    move v5, v7

    .line 635
    goto :goto_2

    .line 643
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 647
    .end local v0    # "aChar":C
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 614
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x20 -> :sswitch_0
        0x21 -> :sswitch_5
        0x23 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3d -> :sswitch_5
    .end sparse-switch
.end method

.method private store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "comments"    # Ljava/lang/String;
    .param p3, "escUnicode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    if-eqz p2, :cond_0

    .line 822
    invoke-static {p1, p2}, Ljava/util/Properties;->writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 824
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 826
    monitor-enter p0

    .line 827
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 828
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 829
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 830
    .local v2, "val":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 834
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 826
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    monitor-exit p0

    .line 839
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 819
    return-void
.end method

.method private static toHex(I)C
    .locals 2
    .param p0, "nibble"    # I

    .prologue
    .line 1108
    sget-object v0, Ljava/util/Properties;->hexDigit:[C

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    return v0
.end method

.method private static writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 10
    .param p0, "bw"    # Ljava/io/BufferedWriter;
    .param p1, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 652
    const-string/jumbo v5, "#"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 654
    .local v3, "len":I
    const/4 v1, 0x0

    .line 655
    .local v1, "current":I
    const/4 v2, 0x0

    .line 656
    .local v2, "last":I
    const/4 v5, 0x6

    new-array v4, v5, [C

    .line 657
    .local v4, "uu":[C
    const/16 v5, 0x5c

    const/4 v6, 0x0

    aput-char v5, v4, v6

    .line 658
    const/16 v5, 0x75

    const/4 v6, 0x1

    aput-char v5, v4, v6

    .line 659
    :goto_0
    if-ge v1, v3, :cond_8

    .line 660
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 661
    .local v0, "c":C
    if-gt v0, v9, :cond_0

    if-ne v0, v7, :cond_4

    .line 662
    :cond_0
    :goto_1
    if-eq v2, v1, :cond_1

    .line 663
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 664
    :cond_1
    if-le v0, v9, :cond_5

    .line 665
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x2

    aput-char v5, v4, v6

    .line 666
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x3

    aput-char v5, v4, v6

    .line 667
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x4

    aput-char v5, v4, v6

    .line 668
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    move-result v5

    const/4 v6, 0x5

    aput-char v5, v4, v6

    .line 669
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 682
    :cond_2
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .line 684
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_4
    if-ne v0, v8, :cond_3

    goto :goto_1

    .line 671
    :cond_5
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 672
    if-ne v0, v8, :cond_6

    .line 673
    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_6

    .line 674
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_6

    .line 675
    add-int/lit8 v1, v1, 0x1

    .line 677
    :cond_6
    add-int/lit8 v5, v3, -0x1

    if-eq v1, v5, :cond_7

    .line 678
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_2

    .line 679
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-eq v5, v6, :cond_2

    .line 680
    :cond_7
    const-string/jumbo v5, "#"

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 686
    .end local v0    # "c":C
    :cond_8
    if-eq v2, v1, :cond_9

    .line 687
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 688
    :cond_9
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 651
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 952
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 953
    .local v0, "oval":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 954
    .end local v0    # "oval":Ljava/lang/Object;
    .local v1, "sval":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "sval":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 1028
    const-string/jumbo v4, "-- listing properties --"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1029
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 1030
    .local v1, "h":Ljava/util/Hashtable;
    invoke-direct {p0, v1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1031
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1032
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1033
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1034
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_0

    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1037
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1056
    const-string/jumbo v4, "-- listing properties --"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 1058
    .local v1, "h":Ljava/util/Hashtable;
    invoke-direct {p0, v1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 1059
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1060
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1061
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1062
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_0

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1065
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 342
    :try_start_0
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 341
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 318
    :try_start_0
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 317
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 867
    if-nez p1, :cond_0

    .line 868
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 869
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Ljava/util/XMLUtils;->load(Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 870
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 865
    return-void
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 990
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 991
    .local v0, "h":Ljava/util/Hashtable;
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    .line 992
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 710
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v2, "8859_1"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 815
    const/4 v1, 0x1

    .line 813
    invoke-direct {p0, v0, p2, v1}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 811
    return-void
.end method

.method public store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedWriter;

    .line 769
    .end local p1    # "writer":Ljava/io/Writer;
    :goto_0
    const/4 v0, 0x0

    .line 766
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 764
    return-void

    .line 767
    .restart local p1    # "writer":Ljava/io/Writer;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    if-nez p1, :cond_0

    .line 897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 898
    :cond_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    if-nez p1, :cond_0

    .line 936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 937
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/util/XMLUtils;->save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1015
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    .line 1016
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
