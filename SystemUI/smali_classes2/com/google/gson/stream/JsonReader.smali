.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final NON_EXECUTE_PREFIX:[C


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_1
    sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ne v2, v3, :cond_1

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_0
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :cond_0
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return v6

    :cond_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v0, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_4
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lez v2, :cond_3

    aget-char v2, v0, v6

    const v3, 0xfeff

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method private isLiteral(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :sswitch_1
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private locationString()Ljava/lang/String;
    .locals 4

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v2, 0x1

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private nextNonWhitespace(Z)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_0
    if-eq v4, v3, :cond_1

    :goto_1
    add-int/lit8 v5, v4, 0x1

    aget-char v1, v0, v4

    const/16 v7, 0xa

    if-eq v1, v7, :cond_2

    const/16 v7, 0x20

    if-ne v1, v7, :cond_3

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :cond_2
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    move v4, v5

    goto :goto_0

    :cond_3
    const/16 v7, 0xd

    if-eq v1, v7, :cond_0

    const/16 v7, 0x9

    if-eq v1, v7, :cond_4

    const/16 v7, 0x2f

    if-eq v1, v7, :cond_5

    const/16 v7, 0x23

    if-eq v1, v7, :cond_9

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v1

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-eq v5, v3, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v6, v0, v7

    sparse-switch v6, :sswitch_data_0

    return v1

    :cond_7
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-nez v2, :cond_6

    return v1

    :sswitch_0
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const-string/jumbo v7, "*/"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v7, 0x2

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :cond_8
    const-string/jumbo v7, "Unterminated comment"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    :sswitch_1
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    :cond_9
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    :cond_a
    if-nez p1, :cond_b

    const/4 v7, -0x1

    return v7

    :cond_b
    new-instance v7, Ljava/io/EOFException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "End of input"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v6, v4

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_1

    sub-int v7, v5, v6

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "Unterminated string"

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    :cond_1
    add-int/lit8 v4, v5, 0x1

    aget-char v2, v0, v5

    if-eq v2, p1, :cond_2

    const/16 v7, 0x5c

    if-eq v2, v7, :cond_3

    const/16 v7, 0xa

    if-eq v2, v7, :cond_4

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_3
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int v7, v4, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v6, v4

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-lt v1, v3, :cond_2

    if-eqz v0, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_2
    :sswitch_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3d -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private peekKeyword()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v6, v7

    const/16 v6, 0x74

    if-ne v0, v6, :cond_2

    :cond_0
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "TRUE"

    const/4 v5, 0x5

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x1

    :goto_1
    if-lt v1, v4, :cond_7

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v6, v7, :cond_c

    :cond_1
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v4

    aget-char v6, v6, v7

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v6

    if-nez v6, :cond_d

    :goto_2
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    :cond_2
    const/16 v6, 0x54

    if-eq v0, v6, :cond_0

    const/16 v6, 0x66

    if-ne v0, v6, :cond_4

    :cond_3
    const-string/jumbo v2, "false"

    const-string/jumbo v3, "FALSE"

    const/4 v5, 0x6

    goto :goto_0

    :cond_4
    const/16 v6, 0x46

    if-eq v0, v6, :cond_3

    const/16 v6, 0x6e

    if-ne v0, v6, :cond_6

    :cond_5
    const-string/jumbo v2, "null"

    const-string/jumbo v3, "NULL"

    const/4 v5, 0x7

    goto :goto_0

    :cond_6
    const/16 v6, 0x4e

    if-eq v0, v6, :cond_5

    return v8

    :cond_7
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v6, v7, :cond_a

    :cond_8
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v1

    aget-char v0, v6, v7

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v0, v6, :cond_b

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_8

    return v8

    :cond_b
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v0, v6, :cond_9

    return v8

    :cond_c
    add-int/lit8 v6, v4, 0x1

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_d
    return v8
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int v14, v9, v5

    if-eq v14, v6, :cond_1

    :goto_1
    add-int v14, v9, v5

    aget-char v3, v2, v14

    sparse-switch v3, :sswitch_data_0

    const/16 v14, 0x30

    if-ge v3, v14, :cond_9

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v14

    if-eqz v14, :cond_15

    const/4 v14, 0x0

    return v14

    :cond_1
    array-length v14, v2

    if-eq v5, v14, :cond_2

    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    return v14

    :sswitch_0
    if-eqz v7, :cond_3

    const/4 v14, 0x5

    if-eq v7, v14, :cond_4

    const/4 v14, 0x0

    return v14

    :cond_3
    const/4 v8, 0x1

    const/4 v7, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_1
    const/4 v14, 0x5

    if-eq v7, v14, :cond_5

    const/4 v14, 0x0

    return v14

    :cond_5
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_2
    const/4 v14, 0x2

    if-ne v7, v14, :cond_7

    :cond_6
    const/4 v7, 0x5

    goto :goto_2

    :cond_7
    const/4 v14, 0x4

    if-eq v7, v14, :cond_6

    const/4 v14, 0x0

    return v14

    :sswitch_3
    const/4 v14, 0x2

    if-eq v7, v14, :cond_8

    const/4 v14, 0x0

    return v14

    :cond_8
    const/4 v7, 0x3

    goto :goto_2

    :cond_9
    const/16 v14, 0x39

    if-gt v3, v14, :cond_0

    const/4 v14, 0x1

    if-ne v7, v14, :cond_b

    :cond_a
    add-int/lit8 v14, v3, -0x30

    neg-int v14, v14

    int-to-long v12, v14

    const/4 v7, 0x2

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_a

    const/4 v14, 0x2

    if-eq v7, v14, :cond_d

    const/4 v14, 0x3

    if-eq v7, v14, :cond_13

    const/4 v14, 0x5

    if-ne v7, v14, :cond_14

    :cond_c
    const/4 v7, 0x7

    goto :goto_2

    :cond_d
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_e

    const/4 v14, 0x0

    return v14

    :cond_e
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v12

    add-int/lit8 v16, v3, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-lez v14, :cond_10

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_f

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-nez v14, :cond_12

    cmp-long v14, v10, v12

    if-ltz v14, :cond_11

    const/4 v14, 0x1

    :goto_4
    if-nez v14, :cond_12

    :cond_f
    const/4 v14, 0x1

    :goto_5
    and-int/2addr v4, v14

    move-wide v12, v10

    goto :goto_2

    :cond_10
    const/4 v14, 0x0

    goto :goto_3

    :cond_11
    const/4 v14, 0x0

    goto :goto_4

    :cond_12
    const/4 v14, 0x0

    goto :goto_5

    :cond_13
    const/4 v7, 0x4

    goto :goto_2

    :cond_14
    const/4 v14, 0x6

    if-eq v7, v14, :cond_c

    goto :goto_2

    :cond_15
    const/4 v14, 0x2

    if-eq v7, v14, :cond_18

    :cond_16
    const/4 v14, 0x2

    if-ne v7, v14, :cond_1b

    :cond_17
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v14, 0x10

    return v14

    :cond_18
    if-eqz v4, :cond_16

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v12, v14

    if-nez v14, :cond_19

    if-eqz v8, :cond_16

    :cond_19
    if-nez v8, :cond_1a

    neg-long v12, v12

    :cond_1a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v14, 0xf

    return v14

    :cond_1b
    const/4 v14, 0x4

    if-eq v7, v14, :cond_17

    const/4 v14, 0x7

    if-eq v7, v14, :cond_17

    const/4 v14, 0x0

    return v14

    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private push(I)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v4, v4

    if-eq v3, v4, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v3, v4

    return-void

    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    goto :goto_0
.end method

.method private readEscapeCharacter()C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-eq v5, v6, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v5, v6

    sparse-switch v2, :sswitch_data_0

    const-string/jumbo v5, "Invalid escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :sswitch_0
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v5, v6, :cond_3

    :cond_2
    const/4 v4, 0x0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v3, 0x4

    :goto_0
    if-lt v3, v1, :cond_4

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v4

    :cond_3
    invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Unterminated escape sequence"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_4
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v3

    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    const/16 v5, 0x30

    if-ge v0, v5, :cond_8

    :cond_5
    const/16 v5, 0x61

    if-ge v0, v5, :cond_9

    :cond_6
    const/16 v5, 0x41

    if-ge v0, v5, :cond_a

    :cond_7
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\\u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    const/16 v5, 0x66

    if-gt v0, v5, :cond_6

    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_1

    :cond_a
    const/16 v5, 0x46

    if-gt v0, v5, :cond_7

    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_1

    :sswitch_1
    const/16 v5, 0x9

    return v5

    :sswitch_2
    const/16 v5, 0x8

    return v5

    :sswitch_3
    const/16 v5, 0xa

    return v5

    :sswitch_4
    const/16 v5, 0xd

    return v5

    :sswitch_5
    const/16 v5, 0xc

    return v5

    :sswitch_6
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :sswitch_7
    return v2

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    :cond_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Unterminated string"

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_1
    add-int/lit8 v3, v4, 0x1

    aget-char v1, v0, v4

    if-eq v1, p1, :cond_2

    const/16 v5, 0x5c

    if-eq v1, v5, :cond_3

    const/16 v5, 0xa

    if-eq v1, v5, :cond_4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_3
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-gt v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v1, v2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :sswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput v3, v1, v2

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v1, 0x8

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method doPeek()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v3, v4

    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v8, v3, v4

    if-eq v1, v9, :cond_5

    :goto_0
    :sswitch_0
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v7, v3, v4

    :cond_2
    :goto_1
    :pswitch_0
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v2

    if-nez v2, :cond_12

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v2

    if-nez v2, :cond_13

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0xa

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xa

    return v3

    :cond_3
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    const-string/jumbo v3, "Unterminated array"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :sswitch_2
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_1

    :cond_4
    if-eq v1, v9, :cond_0

    if-eq v1, v8, :cond_8

    const/4 v3, 0x6

    if-eq v1, v3, :cond_b

    const/4 v3, 0x7

    if-eq v1, v3, :cond_d

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    const-string/jumbo v3, "Unterminated object"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :sswitch_4
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto/16 :goto_0

    :sswitch_6
    const/16 v3, 0xd

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xd

    return v3

    :sswitch_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0xc

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xc

    return v3

    :sswitch_8
    if-ne v1, v9, :cond_6

    const-string/jumbo v3, "Expected name"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_6
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    :cond_7
    const/16 v3, 0xe

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0xe

    return v3

    :cond_8
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aput v9, v3, v4

    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    const-string/jumbo v3, "Expected \':\'"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :pswitch_2
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v3, v4, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v3, v4

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    :cond_b
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_c

    :goto_2
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x7

    aput v5, v3, v4

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    goto :goto_2

    :cond_d
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x11

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x11

    return v3

    :sswitch_9
    if-eq v1, v6, :cond_10

    :sswitch_a
    if-ne v1, v6, :cond_11

    :cond_f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v3, 0x7

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/4 v3, 0x7

    return v3

    :cond_10
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    :cond_11
    if-eq v1, v7, :cond_f

    const-string/jumbo v3, "Unexpected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    :sswitch_b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v3, 0x8

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x8

    return v3

    :sswitch_c
    const/16 v3, 0x9

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v3, 0x9

    return v3

    :sswitch_d
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/4 v3, 0x3

    return v3

    :sswitch_e
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    :cond_12
    return v2

    :cond_13
    return v2

    :cond_14
    const-string/jumbo v3, "Expected value"

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_1
        0x3b -> :sswitch_3
        0x5d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_5
        0x7d -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void
.end method

.method public endObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_1

    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    const/4 v1, 0x1

    return v1

    :cond_2
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return v4
.end method

.method public nextDouble()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xb

    const/16 v4, 0x8

    const/4 v7, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_2

    :goto_0
    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_5

    :cond_0
    if-eq v0, v4, :cond_6

    const/16 v1, 0x22

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :cond_1
    :goto_2
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v1, :cond_8

    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    return-wide v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_3
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    iget-wide v4, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v4, v4

    return-wide v4

    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    if-eq v0, v8, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected a double but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v1, 0x27

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    new-instance v1, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_3
.end method

.method public nextInt()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v10, 0x0

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v1, :cond_1

    :goto_0
    const/16 v5, 0xf

    if-eq v1, v5, :cond_2

    const/16 v5, 0x10

    if-eq v1, v5, :cond_4

    if-ne v1, v6, :cond_5

    :cond_0
    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_7

    const/16 v5, 0x22

    :goto_1
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v4, v6

    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    return v4

    :cond_4
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_3
    const/16 v5, 0xb

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v4, v2

    int-to-double v6, v4

    cmpl-double v5, v6, v2

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    const/16 v5, 0x9

    if-eq v1, v5, :cond_0

    if-eq v1, v7, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected an int but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0x27

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    return v4
.end method

.method public nextLong()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xa

    const/16 v7, 0x8

    const/4 v10, 0x0

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v1, :cond_1

    :goto_0
    const/16 v6, 0xf

    if-eq v1, v6, :cond_2

    const/16 v6, 0x10

    if-eq v1, v6, :cond_3

    if-ne v1, v7, :cond_4

    :cond_0
    if-eq v1, v8, :cond_5

    if-eq v1, v7, :cond_6

    const/16 v6, 0x22

    :goto_1
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    goto :goto_0

    :cond_2
    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    iget-wide v6, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v6

    :cond_3
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v9, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_3
    const/16 v6, 0xb

    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v4, v2

    long-to-double v6, v4

    cmpl-double v6, v6, v2

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected a long but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    const/16 v6, 0x9

    if-eq v1, v6, :cond_0

    if-eq v1, v8, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected a long but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const/16 v6, 0x27

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v10, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    return-wide v4
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    return-object v1

    :cond_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4

    const/16 v2, 0xf

    if-eq v0, v2, :cond_5

    const/16 v2, 0x10

    if-eq v0, v2, :cond_6

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-object v1

    :cond_2
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v0, :cond_0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public skipValue()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-eqz v1, :cond_3

    :goto_0
    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/16 v2, 0xe

    if-ne v1, v2, :cond_8

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    :cond_2
    :goto_1
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const-string/jumbo v4, "null"

    aput-object v4, v2, v3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->push(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    :cond_9
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_a
    const/16 v2, 0xc

    if-eq v1, v2, :cond_9

    const/16 v2, 0x9

    if-ne v1, v2, :cond_c

    :cond_b
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_1

    :cond_c
    const/16 v2, 0xd

    if-eq v1, v2, :cond_b

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
