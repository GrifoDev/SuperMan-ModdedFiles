.class public Lcom/thoughtworks/xstream/io/json/JsonWriter;
.super Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;
    }
.end annotation


# instance fields
.field private depth:I

.field protected final format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

.field private newLineProposed:Z

.field protected final writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/16 v3, 0xa

    aput-char v3, v2, v5

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v5, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;I)V
    .locals 1

    invoke-virtual {p3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-direct {v0, p1, p4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iput-object p3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/16 v3, 0xa

    aput-char v3, v2, v5

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v5, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v5, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0xa

    aput-char v2, v1, v4

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p2, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v4, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v4, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v3, v4

    invoke-direct {v1, p2, v2, v3}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v3

    invoke-direct {v0, p2, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    invoke-direct {p0, p1, p4, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;-><init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/json/JsonWriter$Format;)V

    return-void
.end method

.method private endNewLine()V
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    goto :goto_0
.end method

.method private startNewLine()V
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    :cond_0
    return-void
.end method

.method private writeNewLine()V
    .locals 3

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->depth:I

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getNewLine()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->getLineIndenter()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    return-void
.end method

.method private writeText(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v3, "\\\""

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v3, "\\b"

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v3, "\\f"

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected addLabel(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->format:Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    :cond_1
    return-void
.end method

.method protected addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V
    .locals 2

    const/16 v1, 0x22

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeText(Ljava/lang/String;)V

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->close()V

    return-void
.end method

.method protected endArray()V
    .locals 2

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->endNewLine()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected endObject()V
    .locals 2

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->endNewLine()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    return-void
.end method

.method protected nextElement()V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    return-void
.end method

.method protected startArray()V
    .locals 2

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->startNewLine()V

    return-void
.end method

.method protected startObject()V
    .locals 2

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->newLineProposed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writeNewLine()V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/json/JsonWriter;->startNewLine()V

    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 0

    return-object p0
.end method
