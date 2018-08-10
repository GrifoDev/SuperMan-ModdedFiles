.class public Lcom/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\\""

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\\\"

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\t"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\b"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\n"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\r"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\f"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u003c"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u003e"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u0026"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u003d"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u0027"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    return-void

    :cond_0
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "\\u%04x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz v0, :cond_0

    :pswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eq v0, p2, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_1
    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0
.end method

.method private newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private peek()I
    .locals 2

    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    aput p1, v1, v2

    return-void

    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    goto :goto_0
.end method

.method private replaceTop(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v6, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    if-nez v6, :cond_0

    sget-object v5, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    :goto_0
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    if-lt v2, v3, :cond_7

    :goto_2
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v5, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x80

    if-lt v0, v6, :cond_3

    const/16 v6, 0x2028

    if-eq v0, v6, :cond_4

    const/16 v6, 0x2029

    if-eq v0, v6, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, v5, v0

    if-eqz v4, :cond_2

    :goto_4
    if-lt v2, v1, :cond_6

    :goto_5
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v4, "\\u2028"

    goto :goto_4

    :cond_5
    const-string/jumbo v4, "\\u2029"

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v1, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v3, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    goto :goto_2
.end method

.method private writeDeferredName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeName()V

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    const-string/jumbo v0, "["

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    const-string/jumbo v0, "{"

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eq v0, v2, :cond_2

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "]"

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "}"

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSerializeNulls()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    goto :goto_0
.end method

.method public final setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    return-void
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "false"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "true"

    goto :goto_0
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-nez p1, :cond_0

    const-string/jumbo v0, "false"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0
.end method
