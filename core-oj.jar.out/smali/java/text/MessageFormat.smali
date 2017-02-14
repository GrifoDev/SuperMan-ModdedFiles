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

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    const-string/jumbo v1, "date"

    aput-object v1, v0, v2

    const-string/jumbo v1, "time"

    aput-object v1, v0, v5

    const-string/jumbo v1, "choice"

    aput-object v1, v0, v6

    sput-object v0, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "currency"

    aput-object v1, v0, v4

    const-string/jumbo v1, "percent"

    aput-object v1, v0, v2

    const-string/jumbo v1, "integer"

    aput-object v1, v0, v5

    sput-object v0, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "short"

    aput-object v1, v0, v4

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v2

    const-string/jumbo v1, "long"

    aput-object v1, v0, v5

    const-string/jumbo v1, "full"

    aput-object v1, v0, v6

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    filled-new-array {v2, v5, v2, v4, v3}, [I

    move-result-object v0

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .locals 3

    const v2, 0xffff

    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 5

    const/16 v4, 0x27

    const/4 v2, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    const-string/jumbo v3, "\'\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eq v1, p0, :cond_3

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeFormat(II[Ljava/lang/StringBuilder;)V
    .locals 23

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    aget-object v16, p3, v8

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_1
    aput-object v19, v17, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v19, ""

    goto :goto_1

    :cond_1
    const/16 v19, 0x1

    :try_start_0
    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gez v4, :cond_2

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

    :catch_0
    move-exception v7

    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "can\'t parse argument number: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

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

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v13, v19, 0x2

    new-array v12, v13, [Ljava/text/Format;

    new-array v14, v13, [I

    new-array v10, v13, [I

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

    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v0, p0

    iput-object v14, v0, Ljava/text/MessageFormat;->offsets:[I

    move-object/from16 v0, p0

    iput-object v10, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->offsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v17, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    aput v20, v19, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object/from16 v19, v0

    aput v4, v19, p2

    const/4 v11, 0x0

    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x2

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unknown format type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_0
    const/16 v19, 0x3

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_1

    :try_start_1
    new-instance v11, Ljava/text/DecimalFormat;

    const/16 v19, 0x3

    aget-object v19, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    aput-object v11, v19, p2

    return-void

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    goto :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    goto :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    goto :goto_2

    :catch_1
    move-exception v6

    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    throw v6

    :pswitch_6
    const/16 v19, 0x3

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_6

    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v11

    goto :goto_2

    :cond_5
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v11

    goto :goto_2

    :cond_6
    :try_start_2
    new-instance v11, Ljava/text/SimpleDateFormat;

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

    goto/16 :goto_2

    :catch_2
    move-exception v6

    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    throw v6

    :pswitch_7
    :try_start_3
    new-instance v11, Ljava/text/ChoiceFormat;

    const/16 v19, 0x3

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v5

    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Choice Pattern incorrect: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v5, -0x1

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v4, v4

    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v4, v5, :cond_3

    iget-object v4, p0, Ljava/text/MessageFormat;->offsets:[I

    array-length v4, v4

    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v4, v5, :cond_3

    iget-object v4, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    array-length v4, v4

    iget v5, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-ltz v3, :cond_1

    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-le v3, v2, :cond_4

    :cond_1
    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_5

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Could not reconstruct MessageFormat from corrupt stream."

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v8, :cond_f

    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v9, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v9, v9, v2

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v8, v2

    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v8, v2

    if-eqz p1, :cond_0

    array-length v8, p1

    if-lt v1, v8, :cond_2

    :cond_0
    const/16 v8, 0x7b

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x7d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget-object v5, p1, v1

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez v5, :cond_7

    const-string/jumbo v0, "null"

    :cond_3
    :goto_2
    if-eqz p4, :cond_c

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    :cond_4
    if-eqz v6, :cond_6

    invoke-virtual {v6, v5}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v7

    invoke-direct {p0, p2, v7}, Ljava/text/MessageFormat;->append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_5

    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    :cond_5
    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v0, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    goto :goto_1

    :cond_7
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    if-eqz v8, :cond_8

    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v6, v8, v2

    instance-of v8, v6, Ljava/text/ChoiceFormat;

    if-eqz v8, :cond_3

    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    invoke-virtual {v8, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x7b

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_3

    new-instance v6, Ljava/text/MessageFormat;

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v6, v0, v8}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v5, p1

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    instance-of v8, v5, Ljava/lang/Number;

    if-eqz v8, :cond_9

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    goto/16 :goto_2

    :cond_9
    instance-of v8, v5, Ljava/util/Date;

    if-eqz v8, :cond_a

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-static {v9, v10, v8}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v6

    goto/16 :goto_2

    :cond_a
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_b

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "null"

    goto/16 :goto_2

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v2, :cond_e

    if-eqz p3, :cond_e

    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    goto/16 :goto_1

    :cond_f
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v9, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_10

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_10

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object p2
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 14

    const/16 v13, 0x27

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v7, -0x1

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_b

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v5, :cond_6

    if-ne v1, v13, :cond_3

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_1

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    aget-object v7, v6, v11

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v11

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, v13, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    sparse-switch v1, :sswitch_data_0

    :goto_2
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_0
    const/4 v7, 0x3

    if-ge v5, v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    aget-object v7, v6, v5

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v5

    goto :goto_1

    :cond_8
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    if-nez v0, :cond_9

    const/4 v5, 0x0

    invoke-direct {p0, v3, v2, v6}, Ljava/text/MessageFormat;->makeFormat(II[Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    aput-object v10, v6, v11

    aput-object v10, v6, v12

    const/4 v7, 0x3

    aput-object v10, v6, v7

    goto :goto_1

    :cond_9
    add-int/lit8 v0, v0, -0x1

    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    if-ne v5, v12, :cond_a

    aget-object v7, v6, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    :cond_a
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    if-nez v0, :cond_c

    if-eqz v5, :cond_c

    const/4 v7, -0x1

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unmatched braces in the pattern."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_c
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    return-void

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

    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/MessageFormat;

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/Format;

    iput-object v2, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v3, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    aput-object v2, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Ljava/text/MessageFormat;->offsets:[I

    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/text/MessageFormat;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/MessageFormat;

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v3, v0, Ljava/text/MessageFormat;->maxOffset:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v3, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    iget-object v2, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    iget-object v3, v0, Ljava/text/MessageFormat;->offsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    iget-object v3, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v2, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/text/AttributedCharacterIterator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/AttributedCharacterIterator;

    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/text/Format;

    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v3, :cond_1

    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v0

    if-le v3, v1, :cond_0

    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/text/Format;

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v0

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v3, "MessageFormat parse error!"

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 13

    if-nez p1, :cond_0

    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v3, -0x1

    const/4 v1, 0x0

    :goto_0
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v11, :cond_2

    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    if-le v11, v3, :cond_1

    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v11, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v11, v3, 0x1

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v7, p2, Ljava/text/ParsePosition;->index:I

    new-instance v10, Ljava/text/ParsePosition;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v11, :cond_b

    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v11, v11, v1

    sub-int v2, v11, v5

    if-eqz v2, :cond_3

    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    add-int/2addr v7, v2

    add-int/2addr v5, v2

    iget-object v11, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v11, v11, v1

    if-nez v11, :cond_9

    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-eq v1, v11, :cond_5

    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    add-int/lit8 v12, v1, 0x1

    aget v9, v11, v12

    :goto_2
    if-lt v5, v9, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_3
    if-gez v4, :cond_7

    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v11, 0x0

    return-object v11

    :cond_4
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v11, 0x0

    return-object v11

    :cond_5
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_2

    :cond_6
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

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

    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    :cond_8
    move v7, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iput v7, v10, Ljava/text/ParsePosition;->index:I

    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    iget-object v12, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v12, v12, v1

    invoke-virtual {v12, p1, v10}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v6, v11

    iget v11, v10, Ljava/text/ParsePosition;->index:I

    if-ne v11, v7, :cond_a

    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v11, 0x0

    return-object v11

    :cond_a
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    goto :goto_4

    :cond_b
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v5

    if-eqz v2, :cond_c

    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_c
    add-int v11, v7, v2

    iput v11, p2, Ljava/text/ParsePosition;->index:I

    return-object v6

    :cond_d
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    const/4 v11, 0x0

    return-object v11
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 2

    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 4

    array-length v1, p1

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v2, 0x1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v2, v0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v6, :cond_c

    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v7, v7, v2

    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    iget-object v6, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v6, v2

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v1, v6, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v6, v1, Ljava/text/NumberFormat;

    if-eqz v6, :cond_7

    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ",number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, ",number,currency"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, ",number,percent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, ",number,integer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    instance-of v6, v1, Ljava/text/DecimalFormat;

    if-eqz v6, :cond_6

    const-string/jumbo v6, ",number,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    instance-of v6, v1, Ljava/text/ChoiceFormat;

    if-eqz v6, :cond_0

    const-string/jumbo v6, ",choice,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/ChoiceFormat;

    invoke-virtual {v1}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    instance-of v6, v1, Ljava/text/DateFormat;

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    :goto_2
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_8

    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v6, v6, v3

    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, ",date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_3
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v6, v6

    if-lt v3, v6, :cond_b

    instance-of v6, v1, Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_0

    const-string/jumbo v6, ",date,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v6, v6, v3

    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, ",time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_0

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
