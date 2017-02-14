.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final CT_ALPHA:B = 0x4t

.field private static final CT_COMMENT:B = 0x10t

.field private static final CT_DIGIT:B = 0x2t

.field private static final CT_QUOTE:B = 0x8t

.field private static final CT_WHITESPACE:B = 0x1t

.field private static final NEED_CHAR:I = 0x7fffffff

.field private static final SKIP_LF:I = 0x7ffffffe

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field private static final TT_NOTHING:I = -0x4

.field public static final TT_NUMBER:I = -0x2

.field public static final TT_WORD:I = -0x3


# instance fields
.field private LINENO:I

.field private buf:[C

.field private ctype:[B

.field private eolIsSignificantP:Z

.field private forceLower:Z

.field private input:Ljava/io/InputStream;

.field public nval:D

.field private peekc:I

.field private pushedBack:Z

.field private reader:Ljava/io/Reader;

.field private slashSlashCommentsP:Z

.field private slashStarCommentsP:Z

.field public sval:Ljava/lang/String;

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    iput-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/StreamTokenizer;->buf:[C

    const v0, 0x7fffffff

    iput v0, p0, Ljava/io/StreamTokenizer;->peekc:I

    const/4 v0, 0x1

    iput v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    iput-boolean v2, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/4 v0, -0x4

    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v0, 0xa0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v0, 0x20

    invoke-virtual {p0, v2, v0}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    return-void
.end method

.method private read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/StreamTokenizer;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public commentChar(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x10

    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method

.method public eolIsSignificant(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    return-void
.end method

.method public lineno()I
    .locals 1

    iget v0, p0, Ljava/io/StreamTokenizer;->LINENO:I

    return v0
.end method

.method public lowerCaseMode(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLower:Z

    return-void
.end method

.method public nextToken()I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->pushedBack:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/io/StreamTokenizer;->pushedBack:Z

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    return v20

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    if-gez v4, :cond_1

    const v4, 0x7fffffff

    :cond_1
    const v20, 0x7ffffffe

    move/from16 v0, v20

    if-ne v4, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    if-gez v4, :cond_2

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_2
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_3

    const v4, 0x7fffffff

    :cond_3
    const v20, 0x7fffffff

    move/from16 v0, v20

    if-ne v4, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    if-gez v4, :cond_4

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_4
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    const v20, 0x7fffffff

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekc:I

    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v4, v0, :cond_5

    aget-byte v7, v6, v4

    :goto_0
    and-int/lit8 v20, v7, 0x1

    if-eqz v20, :cond_c

    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v4, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    const v20, 0x7ffffffe

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->peekc:I

    const/16 v20, 0xa

    const/16 v21, 0xa

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_5
    const/4 v7, 0x4

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    :cond_7
    :goto_1
    if-gez v4, :cond_a

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_8
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->eolIsSignificantP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v20, 0xa

    const/16 v21, 0xa

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_9
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    goto :goto_1

    :cond_a
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v4, v0, :cond_b

    aget-byte v7, v6, v4

    :goto_2
    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x4

    goto :goto_2

    :cond_c
    and-int/lit8 v20, v7, 0x2

    if-eqz v20, :cond_15

    const/4 v15, 0x0

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v4, v0, :cond_f

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-eq v4, v0, :cond_e

    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v4, v0, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    const/16 v20, 0x2d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v20, 0x2d

    return v20

    :cond_e
    const/4 v15, 0x1

    :cond_f
    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    :goto_3
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v4, v0, :cond_10

    if-nez v17, :cond_10

    const/16 v17, 0x1

    :goto_4
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    goto :goto_3

    :cond_10
    const/16 v20, 0x30

    move/from16 v0, v20

    if-gt v0, v4, :cond_11

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v4, v0, :cond_11

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v20, v20, v18

    add-int/lit8 v22, v4, -0x30

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v18, v20, v22

    add-int v9, v9, v17

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    if-eqz v9, :cond_13

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-int/lit8 v9, v9, -0x1

    :goto_5
    if-lez v9, :cond_12

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v10, v10, v20

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_12
    div-double v18, v18, v10

    :cond_13
    if-eqz v15, :cond_14

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    :cond_14
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/io/StreamTokenizer;->nval:D

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_15
    and-int/lit8 v20, v7, 0x4

    if-eqz v20, :cond_1b

    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v13, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->buf:[C

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v14, v13, 0x1

    int-to-char v0, v4

    move/from16 v21, v0

    aput-char v21, v20, v13

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    if-gez v4, :cond_17

    const/4 v7, 0x1

    :goto_7
    and-int/lit8 v20, v7, 0x6

    if-eqz v20, :cond_19

    move v13, v14

    goto :goto_6

    :cond_17
    const/16 v20, 0x100

    move/from16 v0, v20

    if-ge v4, v0, :cond_18

    aget-byte v7, v6, v4

    goto :goto_7

    :cond_18
    const/4 v7, 0x4

    goto :goto_7

    :cond_19
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v14}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->forceLower:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    :cond_1a
    const/16 v20, -0x3

    const/16 v21, -0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_1b
    and-int/lit8 v20, v7, 0x8

    if-eqz v20, :cond_23

    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    move v14, v13

    :goto_8
    if-ltz v8, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v8, v0, :cond_21

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v8, v0, :cond_21

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v8, v0, :cond_21

    const/16 v20, 0x5c

    move/from16 v0, v20

    if-ne v8, v0, :cond_20

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    move v12, v4

    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_1f

    const/16 v20, 0x37

    move/from16 v0, v20

    if-gt v4, v0, :cond_1f

    add-int/lit8 v4, v4, -0x30

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v5

    const/16 v20, 0x30

    move/from16 v0, v20

    if-gt v0, v5, :cond_1e

    const/16 v20, 0x37

    move/from16 v0, v20

    if-gt v5, v0, :cond_1e

    shl-int/lit8 v20, v4, 0x3

    add-int/lit8 v21, v5, -0x30

    add-int v4, v20, v21

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v5

    const/16 v20, 0x30

    move/from16 v0, v20

    if-gt v0, v5, :cond_1d

    const/16 v20, 0x37

    move/from16 v0, v20

    if-gt v5, v0, :cond_1d

    const/16 v20, 0x33

    move/from16 v0, v20

    if-gt v12, v0, :cond_1d

    shl-int/lit8 v20, v4, 0x3

    add-int/lit8 v21, v5, -0x30

    add-int v4, v20, v21

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v14, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->buf:[C

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    add-int/lit8 v13, v14, 0x1

    int-to-char v0, v4

    move/from16 v21, v0

    aput-char v21, v20, v14

    move v14, v13

    goto/16 :goto_8

    :cond_1d
    move v8, v5

    goto :goto_9

    :cond_1e
    move v8, v5

    goto :goto_9

    :cond_1f
    sparse-switch v4, :sswitch_data_0

    :goto_a
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    goto :goto_9

    :sswitch_0
    const/4 v4, 0x7

    goto :goto_a

    :sswitch_1
    const/16 v4, 0x8

    goto :goto_a

    :sswitch_2
    const/16 v4, 0xc

    goto :goto_a

    :sswitch_3
    const/16 v4, 0xa

    goto :goto_a

    :sswitch_4
    const/16 v4, 0xd

    goto :goto_a

    :sswitch_5
    const/16 v4, 0x9

    goto :goto_a

    :sswitch_6
    const/16 v4, 0xb

    goto :goto_a

    :cond_20
    move v4, v8

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v8

    goto :goto_9

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_22

    const v8, 0x7fffffff

    :cond_22
    move-object/from16 v0, p0

    iput v8, v0, Ljava/io/StreamTokenizer;->peekc:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/io/StreamTokenizer;->buf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v14}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    move/from16 v20, v0

    return v20

    :cond_23
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v4, v0, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    move/from16 v20, v0

    if-nez v20, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_31

    :cond_24
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0x2a

    move/from16 v0, v20

    if-ne v4, v0, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    const/16 v16, 0x0

    :goto_b
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v4, v0, :cond_25

    const/16 v20, 0x2a

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_29

    :cond_25
    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v4, v0, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_26

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    :cond_26
    :goto_c
    if-gez v4, :cond_28

    const/16 v20, -0x1

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    return v20

    :cond_27
    const/16 v20, 0xa

    move/from16 v0, v20

    if-ne v4, v0, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Ljava/io/StreamTokenizer;->LINENO:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->LINENO:I

    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    goto :goto_c

    :cond_28
    move/from16 v16, v4

    goto :goto_b

    :cond_29
    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    :cond_2a
    const/16 v20, 0x2f

    move/from16 v0, v20

    if-ne v4, v0, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2d

    :cond_2b
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_2c

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v4, v0, :cond_2c

    if-gez v4, :cond_2b

    :cond_2c
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    :cond_2d
    const/16 v20, 0x2f

    aget-byte v20, v6, v20

    and-int/lit8 v20, v20, 0x10

    if-eqz v20, :cond_30

    :cond_2e
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_2f

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v4, v0, :cond_2f

    if-gez v4, :cond_2e

    :cond_2f
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    :cond_30
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    const/16 v20, 0x2f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v20, 0x2f

    return v20

    :cond_31
    and-int/lit8 v20, v7, 0x10

    if-eqz v20, :cond_34

    :cond_32
    invoke-direct/range {p0 .. p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v4

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v4, v0, :cond_33

    const/16 v20, 0xd

    move/from16 v0, v20

    if-eq v4, v0, :cond_33

    if-gez v4, :cond_32

    :cond_33
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->peekc:I

    invoke-virtual/range {p0 .. p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v20

    return v20

    :cond_34
    move-object/from16 v0, p0

    iput v4, v0, Ljava/io/StreamTokenizer;->ttype:I

    return v4

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method

.method public ordinaryChars(II)V
    .locals 3

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 p1, v0, 0x1

    aput-byte v2, v1, v0

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public parseNumbers()V
    .locals 5

    const/16 v4, 0x2e

    const/16 v3, 0x2d

    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aget-byte v2, v1, v4

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    return-void
.end method

.method public pushBack()V
    .locals 2

    iget v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushedBack:Z

    :cond_0
    return-void
.end method

.method public quoteChar(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->ctype:[B

    const/16 v1, 0x8

    aput-byte v1, v0, p1

    :cond_0
    return-void
.end method

.method public resetSyntax()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public slashSlashComments(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashCommentsP:Z

    return-void
.end method

.method public slashStarComments(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarCommentsP:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x27

    const/4 v4, 0x0

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v2, :sswitch_data_0

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Ljava/io/StreamTokenizer;->ctype:[B

    iget v3, p0, Ljava/io/StreamTokenizer;->ttype:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Token["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/io/StreamTokenizer;->LINENO:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_0
    const-string/jumbo v0, "EOF"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "EOL"

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "NOTHING"

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    new-array v1, v2, [C

    const/4 v2, 0x2

    aput-char v5, v1, v2

    aput-char v5, v1, v4

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v2, v2

    const/4 v3, 0x1

    aput-char v2, v1, v3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 p1, v0, 0x1

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public wordChars(II)V
    .locals 3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    iget-object v1, p0, Ljava/io/StreamTokenizer;->ctype:[B

    add-int/lit8 p1, v0, 0x1

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    return-void
.end method
