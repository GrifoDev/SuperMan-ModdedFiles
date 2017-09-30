.class public Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;


# static fields
.field private static final AMP:[C

.field private static final APOS:[C

.field private static final CLOSE:[C

.field private static final CR:[C

.field private static final GT:[C

.field private static final LT:[C

.field private static final NULL:[C

.field private static final QUOT:[C

.field public static XML_1_0:I

.field public static XML_1_1:I

.field public static XML_QUIRKS:I


# instance fields
.field protected depth:I

.field private final elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final lineIndenter:[C

.field private final mode:I

.field private newLine:Ljava/lang/String;

.field private readyForNewLine:Z

.field private tagInProgress:Z

.field private tagIsEmpty:Z

.field private final writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    const/4 v0, 0x0

    sput v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_0:I

    const/4 v0, 0x1

    sput v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_1:I

    const-string v0, "&#x0;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->NULL:[C

    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->AMP:[C

    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->LT:[C

    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->GT:[C

    const-string v0, "&#xd;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CR:[C

    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->QUOT:[C

    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->APOS:[C

    const-string v0, "</"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CLOSE:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[C)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[C)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p4}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v0, Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->lineIndenter:[C

    iput-object p5, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->newLine:Ljava/lang/String;

    iput p2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-lt p2, v0, :cond_0

    sget v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_1:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid XML mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 6

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6

    sget v2, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    const/4 v0, 0x2

    new-array v3, v0, [C

    fill-array-data v3, :array_0

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\n"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[C)V
    .locals 1

    sget v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;[CLjava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 6

    sget v2, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;I[CLcom/thoughtworks/xstream/io/naming/NameCoder;Ljava/lang/String;)V

    return-void
.end method

.method private finishTag()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    :cond_0
    iput-boolean v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagInProgress:Z

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->endOfLine()V

    :cond_1
    iput-boolean v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    iput-boolean v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    return-void
.end method

.method private writeText(Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-eq v3, v4, :cond_2

    const v3, 0xd7ff

    if-le v2, v3, :cond_2

    const v3, 0xe000

    if-ge v2, v3, :cond_2

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in XML stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->NULL:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v1, "Invalid character 0x0 in XML stream"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->AMP:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->LT:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->GT:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_1

    :sswitch_4
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->QUOT:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_1

    :sswitch_5
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->APOS:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_1

    :sswitch_6
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CR:[C

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    goto :goto_1

    :sswitch_7
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_1_0:I

    if-ne v3, v4, :cond_5

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    const/16 v3, 0xb

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    const/16 v3, 0xf

    if-lt v2, v3, :cond_5

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_5

    :cond_4
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in XML 1.0 stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->mode:I

    sget v4, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->XML_QUIRKS:I

    if-eq v3, v4, :cond_7

    const v3, 0xfffe

    if-eq v2, v3, :cond_6

    const v3, 0xffff

    if-ne v2, v3, :cond_7

    :cond_6
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in XML stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const-string v4, "&#x"

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto/16 :goto_1

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xd -> :sswitch_6
        0x22 -> :sswitch_4
        0x26 -> :sswitch_1
        0x27 -> :sswitch_5
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x22

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeAttributeValue(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->close()V

    return-void
.end method

.method public endNode()V
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    sget-object v1, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->CLOSE:[C

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    goto :goto_0
.end method

.method protected endOfLine()V
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->getNewLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->lineIndenter:[C

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write([C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    return-void
.end method

.method protected getNewLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->finishTag()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(C)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writer:Lcom/thoughtworks/xstream/core/util/QuickWriter;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagInProgress:Z

    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->depth:I

    iput-boolean v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->readyForNewLine:Z

    iput-boolean v3, p0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->tagIsEmpty:Z

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->startNode(Ljava/lang/String;)V

    return-void
.end method

.method protected writeAttributeValue(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Ljava/lang/String;Z)V

    return-void
.end method

.method protected writeText(Lcom/thoughtworks/xstream/core/util/QuickWriter;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;->writeText(Ljava/lang/String;Z)V

    return-void
.end method
