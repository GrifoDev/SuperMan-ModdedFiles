.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field private static final DATE_TIME_MODIFIERS:[I

.field private static final DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final INITIAL_FORMATS:I = 0xa

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_DEFAULT:I = 0x0

.field private static final MODIFIER_FULL:I = 0x4

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_LONG:I = 0x3

.field private static final MODIFIER_MEDIUM:I = 0x2

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final MODIFIER_SHORT:I = 0x1

.field private static final NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final SEG_INDEX:I = 0x1

.field private static final SEG_MODIFIER:I = 0x3

.field private static final SEG_RAW:I = 0x0

.field private static final SEG_TYPE:I = 0x2

.field private static final TYPE_CHOICE:I = 0x4

.field private static final TYPE_DATE:I = 0x2

.field private static final TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_TIME:I = 0x3

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private maxOffset:I

.field private offsets:[I

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1366
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1367
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 1368
    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    .line 1369
    const-string/jumbo v1, "date"

    aput-object v1, v0, v2

    .line 1370
    const-string/jumbo v1, "time"

    aput-object v1, v0, v5

    .line 1371
    const-string/jumbo v1, "choice"

    aput-object v1, v0, v6

    .line 1366
    sput-object v0, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    .line 1380
    new-array v0, v6, [Ljava/lang/String;

    .line 1381
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 1382
    const-string/jumbo v1, "currency"

    aput-object v1, v0, v4

    .line 1383
    const-string/jumbo v1, "percent"

    aput-object v1, v0, v2

    .line 1384
    const-string/jumbo v1, "integer"

    aput-object v1, v0, v5

    .line 1380
    sput-object v0, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1393
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1394
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 1395
    const-string/jumbo v1, "short"

    aput-object v1, v0, v4

    .line 1396
    const-string/jumbo v1, "medium"

    aput-object v1, v0, v2

    .line 1397
    const-string/jumbo v1, "long"

    aput-object v1, v0, v5

    .line 1398
    const-string/jumbo v1, "full"

    aput-object v1, v0, v6

    .line 1393
    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1402
    filled-new-array {v2, v5, v2, v4, v3}, [I

    move-result-object v0

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    .line 347
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xa

    .line 362
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1183
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1192
    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1199
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1207
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1216
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 363
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 364
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v1, 0xa

    .line 380
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1183
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1192
    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1199
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1207
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1216
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 381
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 382
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .prologue
    const v2, 0xffff

    .line 1343
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1346
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1347
    :goto_0
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    .local v0, "aChar":C
    if-eq v0, v2, :cond_0

    .line 1348
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1342
    .end local v0    # "aChar":C
    :cond_0
    return-void
.end method

.method private static final copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "target"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x27

    .line 1547
    const/4 v2, 0x0

    .line 1549
    .local v2, "quoted":Z
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    .line 1550
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1551
    .local v0, "ch":C
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_1

    .line 1552
    if-nez v2, :cond_0

    .line 1553
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1554
    const/4 v2, 0x1

    .line 1556
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1549
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1557
    :cond_1
    if-ne v0, v4, :cond_2

    .line 1558
    const-string/jumbo v3, "\'\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1560
    :cond_2
    if-eqz v2, :cond_3

    .line 1561
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1562
    const/4 v2, 0x0

    .line 1564
    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1567
    .end local v0    # "ch":C
    :cond_4
    if-eqz v2, :cond_5

    .line 1568
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1546
    :cond_5
    return-void
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    .line 1529
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1530
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1531
    return v0

    .line 1529
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1535
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1536
    .local v1, "ls":Ljava/lang/String;
    if-eq v1, p0, :cond_3

    .line 1537
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 1538
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1539
    return v0

    .line 1537
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1542
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 839
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 840
    .local v0, "temp":Ljava/text/MessageFormat;
    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeFormat(II[Ljava/lang/StringBuilder;)V
    .locals 23
    .param p1, "position"    # I
    .param p2, "offsetNumber"    # I
    .param p3, "textSegments"    # [Ljava/lang/StringBuilder;

    .prologue
    .line 1413
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1414
    .local v17, "segments":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 1415
    aget-object v16, p3, v8

    .line 1416
    .local v16, "oneseg":Ljava/lang/StringBuilder;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_1
    aput-object v19, v17, v8

    .line 1414
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1416
    :cond_0
    const-string/jumbo v19, ""

    goto :goto_1

    .line 1422
    .end local v16    # "oneseg":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v19, 0x1

    :try_start_0
    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1427
    .local v4, "argumentNumber":I
    if-gez v4, :cond_2

    .line 1428
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "negative argument number: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1423
    .end local v4    # "argumentNumber":I
    :catch_0
    move-exception v7

    .line 1424
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "can\'t parse argument number: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1425
    const/16 v21, 0x1

    aget-object v21, v17, v21

    .line 1424
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1433
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "argumentNumber":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v13, v19, 0x2

    .line 1435
    .local v13, "newLength":I
    new-array v12, v13, [Ljava/text/Format;

    .line 1436
    .local v12, "newFormats":[Ljava/text/Format;
    new-array v14, v13, [I

    .line 1437
    .local v14, "newOffsets":[I
    new-array v10, v13, [I

    .line 1438
    .local v10, "newArgumentNumbers":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->offsets:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1441
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1442
    move-object/from16 v0, p0

    iput-object v14, v0, Ljava/text/MessageFormat;->offsets:[I

    .line 1443
    move-object/from16 v0, p0

    iput-object v10, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1445
    .end local v10    # "newArgumentNumbers":[I
    .end local v12    # "newFormats":[Ljava/text/Format;
    .end local v13    # "newLength":I
    .end local v14    # "newOffsets":[I
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1446
    .local v15, "oldMaxOffset":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->offsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v17, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    aput v20, v19, p2

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object/from16 v19, v0

    aput v4, v19, p2

    .line 1451
    const/4 v11, 0x0

    .line 1452
    .local v11, "newFormat":Ljava/text/Format;
    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_4

    .line 1453
    const/16 v19, 0x2

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1454
    .local v18, "type":I
    packed-switch v18, :pswitch_data_0

    .line 1520
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1521
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unknown format type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1522
    const/16 v21, 0x2

    aget-object v21, v17, v21

    .line 1521
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1461
    :pswitch_0
    const/16 v19, 0x3

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_1

    .line 1476
    :try_start_1
    new-instance v11, Ljava/text/DecimalFormat;

    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    aget-object v19, v17, v19

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v20

    .line 1476
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1525
    .end local v18    # "type":I
    :cond_4
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    aput-object v11, v19, p2

    .line 1411
    return-void

    .line 1463
    .restart local v11    # "newFormat":Ljava/text/Format;
    .restart local v18    # "type":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    .line 1466
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    .line 1469
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    .line 1472
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    .line 1478
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_1
    move-exception v6

    .line 1479
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1480
    throw v6

    .line 1488
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_6
    const/16 v19, 0x3

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1489
    .local v9, "mod":I
    if-ltz v9, :cond_6

    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 1490
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 1491
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v19, v19, v9

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    .line 1491
    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    .line 1494
    .local v11, "newFormat":Ljava/text/Format;
    :cond_5
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v19, v19, v9

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    .line 1494
    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_2

    .line 1500
    .local v11, "newFormat":Ljava/text/Format;
    :cond_6
    :try_start_2
    new-instance v11, Ljava/text/SimpleDateFormat;

    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    aget-object v19, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .local v11, "newFormat":Ljava/text/Format;
    goto/16 :goto_2

    .line 1501
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_2
    move-exception v6

    .line 1502
    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1503
    throw v6

    .line 1511
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "mod":I
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_7
    :try_start_3
    new-instance v11, Ljava/text/ChoiceFormat;

    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .local v11, "newFormat":Ljava/text/Format;
    goto/16 :goto_2

    .line 1512
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_3
    move-exception v5

    .line 1513
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1514
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Choice Pattern incorrect: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1515
    const/16 v21, 0x3

    aget-object v21, v17, v21

    .line 1514
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1461
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1578
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1579
    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v5, -0x1

    if-lt v4, v5, :cond_3

    .line 1580
    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v4, v4

    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v4, v5, :cond_3

    .line 1581
    iget-object v4, p0, Ljava/text/MessageFormat;->offsets:[I

    array-length v4, v4

    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v4, v5, :cond_3

    .line 1582
    iget-object v4, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    array-length v4, v4

    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v1, v3

    .line 1583
    .local v1, "isValid":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1584
    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 1585
    .local v2, "lastOffset":I
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1586
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-ltz v3, :cond_1

    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-le v3, v2, :cond_4

    .line 1587
    :cond_1
    const/4 v1, 0x0

    .line 1594
    .end local v0    # "i":I
    .end local v1    # "isValid":Z
    .end local v2    # "lastOffset":I
    :cond_2
    if-nez v1, :cond_5

    .line 1595
    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Could not reconstruct MessageFormat from corrupt stream."

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move v1, v3

    .line 1579
    goto :goto_0

    .line 1590
    .restart local v0    # "i":I
    .restart local v1    # "isValid":Z
    .restart local v2    # "lastOffset":I
    :cond_4
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v2, v3, v0

    .line 1585
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1577
    .end local v0    # "i":I
    .end local v1    # "isValid":Z
    .end local v2    # "lastOffset":I
    :cond_5
    return-void
.end method

.method private subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fp"    # Ljava/text/FieldPosition;
    .param p4, "characterIterators"    # Ljava/util/List;

    .prologue
    .line 1234
    const/4 v4, 0x0

    .line 1235
    .local v4, "lastOffset":I
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1236
    .local v3, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v8, :cond_f

    .line 1237
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v9, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v9, v9, v2

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1238
    iget-object v8, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v8, v2

    .line 1239
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v8, v2

    .line 1240
    .local v1, "argumentNumber":I
    if-eqz p1, :cond_0

    array-length v8, p1

    if-lt v1, v8, :cond_2

    .line 1241
    :cond_0
    const/16 v8, 0x7b

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x7d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1236
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    :cond_2
    aget-object v5, p1, v1

    .line 1250
    .local v5, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1251
    .local v0, "arg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1252
    .local v6, "subFormatter":Ljava/text/Format;
    if-nez v5, :cond_7

    .line 1253
    const-string/jumbo v0, "null"

    .line 1283
    .end local v0    # "arg":Ljava/lang/String;
    .end local v6    # "subFormatter":Ljava/text/Format;
    :cond_3
    :goto_2
    if-eqz p4, :cond_c

    .line 1286
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_4

    .line 1288
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1287
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1292
    :cond_4
    if-eqz v6, :cond_6

    .line 1294
    invoke-virtual {v6, v5}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v7

    .line 1296
    .local v7, "subIterator":Ljava/text/AttributedCharacterIterator;
    invoke-direct {p0, p2, v7}, Ljava/text/MessageFormat;->append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 1297
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_5

    .line 1300
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1299
    invoke-virtual {p0, v7, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1298
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1304
    :cond_5
    const/4 v0, 0x0

    .line 1306
    .end local v7    # "subIterator":Ljava/text/AttributedCharacterIterator;
    :cond_6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 1307
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1310
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1309
    invoke-virtual {p0, v0, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1308
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    goto :goto_1

    .line 1254
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v6    # "subFormatter":Ljava/text/Format;
    :cond_7
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    if-eqz v8, :cond_8

    .line 1255
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v6, v8, v2

    .line 1256
    .local v6, "subFormatter":Ljava/text/Format;
    instance-of v8, v6, Ljava/text/ChoiceFormat;

    if-eqz v8, :cond_3

    .line 1257
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    invoke-virtual {v8, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "arg":Ljava/lang/String;
    const/16 v8, 0x7b

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_3

    .line 1259
    new-instance v6, Ljava/text/MessageFormat;

    .end local v6    # "subFormatter":Ljava/text/Format;
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v6, v0, v8}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1260
    .restart local v6    # "subFormatter":Ljava/text/Format;
    move-object v5, p1

    .line 1261
    const/4 v0, 0x0

    .local v0, "arg":Ljava/lang/String;
    goto :goto_2

    .line 1264
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_8
    instance-of v8, v5, Ljava/lang/Number;

    if-eqz v8, :cond_9

    .line 1266
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    .local v6, "subFormatter":Ljava/text/Format;
    goto/16 :goto_2

    .line 1267
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_9
    instance-of v8, v5, Ljava/util/Date;

    if-eqz v8, :cond_a

    .line 1270
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    const/4 v9, 0x3

    const/4 v10, 0x3

    .line 1269
    invoke-static {v9, v10, v8}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v6

    .local v6, "subFormatter":Ljava/text/Format;
    goto/16 :goto_2

    .line 1271
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_a
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_b

    move-object v0, v5

    .line 1272
    check-cast v0, Ljava/lang/String;

    .local v0, "arg":Ljava/lang/String;
    goto/16 :goto_2

    .line 1275
    .local v0, "arg":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    goto/16 :goto_2

    .line 1316
    .end local v0    # "arg":Ljava/lang/String;
    .end local v6    # "subFormatter":Ljava/text/Format;
    :cond_c
    if-eqz v6, :cond_d

    .line 1317
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1319
    :cond_d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1320
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1321
    if-nez v2, :cond_e

    if-eqz p3, :cond_e

    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1322
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v9

    .line 1321
    invoke-virtual {v8, v9}, Ljava/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1323
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1324
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1326
    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    goto/16 :goto_1

    .line 1330
    .end local v1    # "argumentNumber":I
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_f
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v9, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    if-eqz p4, :cond_10

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_10

    .line 1333
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1332
    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_10
    return-object p2
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 14
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x27

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 427
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/StringBuilder;

    .line 430
    .local v6, "segments":[Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v9

    .line 432
    const/4 v5, 0x0

    .line 433
    .local v5, "part":I
    const/4 v2, 0x0

    .line 434
    .local v2, "formatNumber":I
    const/4 v4, 0x0

    .line 435
    .local v4, "inQuote":Z
    const/4 v0, 0x0

    .line 436
    .local v0, "braceStack":I
    const/4 v7, -0x1

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 437
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_b

    .line 438
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 439
    .local v1, "ch":C
    if-nez v5, :cond_6

    .line 440
    if-ne v1, v13, :cond_3

    .line 441
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 442
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_1

    .line 443
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v3, v3, 0x1

    .line 437
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    :cond_1
    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 448
    :cond_3
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_4

    if-eqz v4, :cond_5

    .line 454
    :cond_4
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 449
    :cond_5
    const/4 v5, 0x1

    .line 450
    aget-object v7, v6, v11

    if-nez v7, :cond_0

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v11

    goto :goto_1

    .line 457
    :cond_6
    if-eqz v4, :cond_7

    .line 458
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    if-ne v1, v13, :cond_0

    .line 460
    const/4 v4, 0x0

    goto :goto_1

    .line 463
    :cond_7
    sparse-switch v1, :sswitch_data_0

    .line 501
    :goto_2
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    :sswitch_0
    const/4 v7, 0x3

    if-ge v5, v7, :cond_8

    .line 466
    add-int/lit8 v5, v5, 0x1

    aget-object v7, v6, v5

    if-nez v7, :cond_0

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v5

    goto :goto_1

    .line 470
    :cond_8
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 474
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 475
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 478
    :sswitch_2
    if-nez v0, :cond_9

    .line 479
    const/4 v5, 0x0

    .line 480
    invoke-direct {p0, v3, v2, v6}, Ljava/text/MessageFormat;->makeFormat(II[Ljava/lang/StringBuilder;)V

    .line 481
    add-int/lit8 v2, v2, 0x1

    .line 483
    aput-object v10, v6, v11

    .line 484
    aput-object v10, v6, v12

    .line 485
    const/4 v7, 0x3

    aput-object v10, v6, v7

    goto :goto_1

    .line 487
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 488
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 493
    :sswitch_3
    if-ne v5, v12, :cond_a

    aget-object v7, v6, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 494
    :cond_a
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 498
    :sswitch_4
    const/4 v4, 0x1

    goto :goto_2

    .line 507
    .end local v1    # "ch":C
    :cond_b
    if-nez v0, :cond_c

    if-eqz v5, :cond_c

    .line 508
    const/4 v7, -0x1

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 509
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unmatched braces in the pattern."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 511
    :cond_c
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 426
    return-void

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x27 -> :sswitch_4
        0x2c -> :sswitch_0
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1078
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/MessageFormat;

    .line 1081
    .local v1, "other":Ljava/text/MessageFormat;
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/Format;

    iput-object v2, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1082
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1083
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1084
    iget-object v3, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    aput-object v2, v3, v0

    .line 1082
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Ljava/text/MessageFormat;->offsets:[I

    .line 1088
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1090
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1097
    if-ne p0, p1, :cond_0

    .line 1098
    const/4 v1, 0x1

    return v1

    .line 1099
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/text/MessageFormat;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1100
    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 1101
    check-cast v0, Ljava/text/MessageFormat;

    .line 1102
    .local v0, "other":Ljava/text/MessageFormat;
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v3, v0, Ljava/text/MessageFormat;->maxOffset:I

    if-ne v2, v3, :cond_5

    .line 1103
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1102
    if-eqz v2, :cond_5

    .line 1104
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v3, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1105
    :cond_3
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    iget-object v2, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    .line 1106
    :cond_4
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    iget-object v3, v0, Ljava/text/MessageFormat;->offsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    .line 1102
    if-eqz v2, :cond_5

    .line 1107
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    iget-object v3, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    .line 1102
    if-eqz v2, :cond_5

    .line 1108
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v2, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 1102
    :cond_5
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 864
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "arguments":Ljava/lang/Object;
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 4
    .param p1, "arguments"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 903
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 904
    .local v1, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v0, "iterators":Ljava/util/ArrayList;
    if-nez p1, :cond_0

    .line 907
    new-instance v2, Ljava/lang/NullPointerException;

    .line 908
    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    .line 907
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 910
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "arguments":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v2, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 911
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 912
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 916
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/text/AttributedCharacterIterator;

    .line 915
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/AttributedCharacterIterator;

    .line 914
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 750
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/text/Format;

    .line 751
    .local v0, "resultArray":[Ljava/text/Format;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 5

    .prologue
    .line 720
    const/4 v1, -0x1

    .line 721
    .local v1, "maximumArgumentNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v3, :cond_1

    .line 722
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v0

    if-le v3, v1, :cond_0

    .line 723
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v3, v0

    .line 721
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_1
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/text/Format;

    .line 727
    .local v2, "resultArray":[Ljava/text/Format;
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v3, :cond_2

    .line 728
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v0

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 730
    :cond_2
    return-object v2
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1036
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1037
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 1038
    .local v1, "result":[Ljava/lang/Object;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-nez v2, :cond_0

    .line 1039
    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v3, "MessageFormat parse error!"

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1041
    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 13
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 947
    if-nez p1, :cond_0

    .line 948
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    .line 949
    .local v0, "empty":[Ljava/lang/Object;
    return-object v0

    .line 952
    .end local v0    # "empty":[Ljava/lang/Object;
    :cond_0
    const/4 v3, -0x1

    .line 953
    .local v3, "maximumArgumentNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v11, :cond_2

    .line 954
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    if-le v11, v3, :cond_1

    .line 955
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v11, v1

    .line 953
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    :cond_2
    add-int/lit8 v11, v3, 0x1

    new-array v6, v11, [Ljava/lang/Object;

    .line 960
    .local v6, "resultArray":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 961
    .local v5, "patternOffset":I
    iget v7, p2, Ljava/text/ParsePosition;->index:I

    .line 962
    .local v7, "sourceOffset":I
    new-instance v10, Ljava/text/ParsePosition;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/text/ParsePosition;-><init>(I)V

    .line 963
    .local v10, "tempStatus":Ljava/text/ParsePosition;
    const/4 v1, 0x0

    :goto_1
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v11, :cond_b

    .line 965
    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v11, v11, v1

    sub-int v2, v11, v5

    .line 966
    .local v2, "len":I
    if-eqz v2, :cond_3

    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 968
    :cond_3
    add-int/2addr v7, v2

    .line 969
    add-int/2addr v5, v2

    .line 976
    iget-object v11, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v11, v11, v1

    if-nez v11, :cond_9

    .line 980
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-eq v1, v11, :cond_5

    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    add-int/lit8 v12, v1, 0x1

    aget v9, v11, v12

    .line 983
    .local v9, "tempLength":I
    :goto_2
    if-lt v5, v9, :cond_6

    .line 984
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 990
    .local v4, "next":I
    :goto_3
    if-gez v4, :cond_7

    .line 991
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 992
    const/4 v11, 0x0

    return-object v11

    .line 971
    .end local v4    # "next":I
    .end local v9    # "tempLength":I
    :cond_4
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 972
    const/4 v11, 0x0

    return-object v11

    .line 980
    :cond_5
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_2

    .line 986
    .restart local v9    # "tempLength":I
    :cond_6
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "next":I
    goto :goto_3

    .line 994
    :cond_7
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 995
    .local v8, "strValue":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v12, v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 996
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    .line 997
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 996
    aput-object v12, v6, v11

    .line 998
    :cond_8
    move v7, v4

    .line 963
    .end local v4    # "next":I
    .end local v8    # "strValue":Ljava/lang/String;
    .end local v9    # "tempLength":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    :cond_9
    iput v7, v10, Ljava/text/ParsePosition;->index:I

    .line 1002
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    .line 1003
    iget-object v12, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v12, v12, v1

    invoke-virtual {v12, p1, v10}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v12

    .line 1002
    aput-object v12, v6, v11

    .line 1004
    iget v11, v10, Ljava/text/ParsePosition;->index:I

    if-ne v11, v7, :cond_a

    .line 1005
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1006
    const/4 v11, 0x0

    return-object v11

    .line 1008
    :cond_a
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    goto :goto_4

    .line 1011
    .end local v2    # "len":I
    :cond_b
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v5

    .line 1012
    .restart local v2    # "len":I
    if-eqz v2, :cond_c

    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1014
    :cond_c
    add-int v11, v7, v2

    iput v11, p2, Ljava/text/ParsePosition;->index:I

    .line 1019
    return-object v6

    .line 1016
    :cond_d
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1017
    const/4 v11, 0x0

    return-object v11
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1069
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 2
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .prologue
    .line 693
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le p1, v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 696
    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    .line 692
    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 2
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .prologue
    .line 668
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_1

    .line 669
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 670
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    .line 668
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    :cond_1
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 4
    .param p1, "newFormats"    # [Ljava/text/Format;

    .prologue
    .line 640
    array-length v1, p1

    .line 641
    .local v1, "runsToCopy":I
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    .line 642
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v2, 0x1

    .line 644
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 645
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_1
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4
    .param p1, "newFormats"    # [Ljava/text/Format;

    .prologue
    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v2, :cond_1

    .line 610
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v2, v0

    .line 611
    .local v1, "j":I
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 612
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 609
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 403
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 402
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 8

    .prologue
    .line 524
    const/4 v4, 0x0

    .line 525
    .local v4, "lastOffset":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v6, :cond_c

    .line 527
    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v7, v7, v2

    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 528
    iget-object v6, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v6, v2

    .line 529
    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    iget-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v1, v6, v2

    .line 531
    .local v1, "fmt":Ljava/text/Format;
    if-nez v1, :cond_1

    .line 579
    .end local v1    # "fmt":Ljava/text/Format;
    :cond_0
    :goto_1
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_1
    instance-of v6, v1, Ljava/text/NumberFormat;

    if-eqz v6, :cond_7

    .line 534
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 535
    const-string/jumbo v6, ",number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 536
    :cond_2
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 537
    const-string/jumbo v6, ",number,currency"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 538
    :cond_3
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 539
    const-string/jumbo v6, ",number,percent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 540
    :cond_4
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 541
    const-string/jumbo v6, ",number,integer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 543
    :cond_5
    instance-of v6, v1, Ljava/text/DecimalFormat;

    if-eqz v6, :cond_6

    .line 544
    const-string/jumbo v6, ",number,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/DecimalFormat;

    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 545
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_6
    instance-of v6, v1, Ljava/text/ChoiceFormat;

    if-eqz v6, :cond_0

    .line 546
    const-string/jumbo v6, ",choice,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/ChoiceFormat;

    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 551
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_7
    instance-of v6, v1, Ljava/text/DateFormat;

    if-eqz v6, :cond_0

    .line 553
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_8

    .line 554
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v6, v6, v3

    .line 555
    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 554
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 556
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 557
    const-string/jumbo v6, ",date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .end local v0    # "df":Ljava/text/DateFormat;
    :cond_8
    :goto_3
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v6, v6

    if-lt v3, v6, :cond_b

    .line 568
    instance-of v6, v1, Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_0

    .line 569
    const-string/jumbo v6, ",date,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 560
    .restart local v0    # "df":Ljava/text/DateFormat;
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_9
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v6, v6, v3

    .line 561
    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 560
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 562
    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 563
    const-string/jumbo v6, ",time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 553
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 573
    .end local v0    # "df":Ljava/text/DateFormat;
    :cond_b
    if-eqz v3, :cond_0

    .line 574
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 581
    .end local v1    # "fmt":Ljava/text/Format;
    .end local v3    # "index":I
    :cond_c
    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 582
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
