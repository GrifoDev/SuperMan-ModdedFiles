.class public abstract Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;
.super Lcom/thoughtworks/xstream/io/AbstractWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;,
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;,
        Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
    }
.end annotation


# static fields
.field public static final DROP_ROOT_MODE:I = 0x1

.field public static final EXPLICIT_MODE:I = 0x4

.field public static final IEEE_754_MODE:I = 0x8

.field private static final NUMBER_TYPES:Ljava/util/Set;

.field private static final STATE_END_ATTRIBUTES:I = 0x20

.field private static final STATE_END_ELEMENTS:I = 0x100

.field private static final STATE_END_OBJECT:I = 0x2

.field private static final STATE_NEXT_ATTRIBUTE:I = 0x10

.field private static final STATE_NEXT_ELEMENT:I = 0x80

.field private static final STATE_ROOT:I = 0x1

.field private static final STATE_SET_VALUE:I = 0x200

.field private static final STATE_START_ATTRIBUTES:I = 0x8

.field private static final STATE_START_ELEMENTS:I = 0x40

.field private static final STATE_START_OBJECT:I = 0x4

.field public static final STRICT_MODE:I = 0x2


# instance fields
.field private expectedStates:I

.field private mode:I

.field private stack:Lcom/thoughtworks/xstream/core/util/FastStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Short;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Ljava/lang/Long;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Ljava/lang/Float;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-class v3, Ljava/lang/Double;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->NUMBER_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 5

    const/4 v0, 0x4

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/AbstractWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    new-instance v1, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;-><init>(ILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    new-instance v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    iget v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {v1, v0, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v1

    :cond_0
    iget v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    return-void
.end method

.method private handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x20

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v5

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v6, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    if-le v5, v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v3

    :goto_0
    if-le v5, v3, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    add-int/lit8 v7, v5, -0x2

    invoke-virtual {v0, v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->isArray(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_0
    if-ne p2, v2, :cond_3

    const/16 v0, 0x40

    invoke-direct {p0, v0, v2, p3, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return p2

    :cond_3
    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :sswitch_1
    sparse-switch p2, :sswitch_data_1

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :sswitch_2
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v2, p3, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    goto :goto_2

    :sswitch_4
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    if-le v5, v8, :cond_2

    :cond_4
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto :goto_2

    :sswitch_5
    sparse-switch p2, :sswitch_data_2

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :sswitch_6
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    :cond_5
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v9, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v0, 0x40

    sparse-switch p2, :sswitch_data_3

    goto :goto_2

    :sswitch_7
    const/16 v2, 0x200

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_8
    const/16 v2, 0x200

    invoke-direct {p0, v0, v2, v1, p4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_9
    invoke-direct {p0, v0, v2, p3, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_a
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto :goto_2

    :sswitch_b
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    if-nez v4, :cond_8

    :cond_7
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move p2, v2

    goto/16 :goto_2

    :sswitch_c
    sparse-switch p2, :sswitch_data_4

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :sswitch_d
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    if-nez v0, :cond_9

    iget v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_9

    invoke-virtual {p0, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto/16 :goto_2

    :sswitch_e
    invoke-direct {p0, p1, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_f
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    :sswitch_10
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto/16 :goto_2

    :cond_9
    :sswitch_11
    sparse-switch p2, :sswitch_data_5

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :sswitch_12
    iget v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    if-le v5, v8, :cond_e

    :cond_a
    if-eqz v0, :cond_b

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    :cond_b
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    :cond_c
    invoke-virtual {p0, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    :cond_e
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto/16 :goto_2

    :sswitch_13
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    if-ne v5, v8, :cond_f

    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Single value cannot be root element"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-nez p4, :cond_11

    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-ne v6, v0, :cond_10

    const-string v0, "null"

    sget-object v1, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    :cond_11
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_15

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v0, :cond_12

    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_15

    :cond_12
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/high16 v2, 0x20000000000000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_13

    const-wide/high16 v2, -0x20000000000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    :cond_13
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, p4, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p0, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0, v6}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    :sswitch_14
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto/16 :goto_2

    :cond_16
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    :sswitch_15
    packed-switch p2, :pswitch_data_0

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    :sswitch_16
    packed-switch p2, :pswitch_data_1

    :sswitch_17
    sparse-switch p2, :sswitch_data_6

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :pswitch_1
    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_17

    const-string v0, "@"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startObject()V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, p4, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    :cond_17
    const-string v0, ""

    goto :goto_3

    :sswitch_18
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    :cond_18
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startArray()V

    goto/16 :goto_2

    :sswitch_19
    if-eqz v4, :cond_19

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    :cond_19
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1a

    const-string v0, "@"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    invoke-virtual {p0, p4, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V

    goto/16 :goto_2

    :cond_1a
    const-string v0, ""

    goto :goto_4

    :sswitch_1a
    invoke-direct {p0, p1, v9, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x40

    invoke-direct {p0, v0, v3, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    sparse-switch p2, :sswitch_data_7

    goto/16 :goto_2

    :sswitch_1b
    const/16 v0, 0x200

    invoke-direct {p0, v3, v0, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_1c
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1b

    const-string v0, "$"

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->addLabel(Ljava/lang/String;)V

    :cond_1b
    const/16 v0, 0x200

    invoke-direct {p0, v3, v0, v1, p4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endObject()V

    goto/16 :goto_2

    :sswitch_1d
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1c

    const-string v0, ""

    :goto_5
    invoke-direct {p0, v3, v2, p3, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1c
    move-object v0, v1

    goto :goto_5

    :sswitch_1e
    invoke-direct {p0, p1, v9, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_1f
    invoke-direct {p0, p1, v9, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_20
    sparse-switch p2, :sswitch_data_8

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :sswitch_21
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->nextElement()V

    goto/16 :goto_2

    :sswitch_22
    const/16 v0, 0x40

    const/16 v2, 0x100

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_23
    sparse-switch p2, :sswitch_data_9

    new-instance v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;

    invoke-direct {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$IllegalWriterStateException;-><init>(IILjava/lang/String;)V

    throw v0

    :sswitch_24
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->mode:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->endArray()V

    goto/16 :goto_2

    :sswitch_25
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_26
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v8, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v3, v1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleStateTransition(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_16
        0x10 -> :sswitch_17
        0x20 -> :sswitch_20
        0x40 -> :sswitch_11
        0x80 -> :sswitch_c
        0x100 -> :sswitch_15
        0x200 -> :sswitch_23
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_6
        0x8 -> :sswitch_a
        0x10 -> :sswitch_b
        0x80 -> :sswitch_6
        0x200 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_7
        0x4 -> :sswitch_9
        0x80 -> :sswitch_7
        0x200 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_f
        0x4 -> :sswitch_d
        0x80 -> :sswitch_f
        0x100 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x4 -> :sswitch_12
        0x80 -> :sswitch_14
        0x100 -> :sswitch_14
        0x200 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_1f
        0x4 -> :sswitch_1a
        0x10 -> :sswitch_19
        0x20 -> :sswitch_18
        0x80 -> :sswitch_1e
        0x200 -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0x2 -> :sswitch_1b
        0x4 -> :sswitch_1d
        0x200 -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_22
        0x40 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        0x1 -> :sswitch_26
        0x80 -> :sswitch_25
        0x100 -> :sswitch_24
    .end sparse-switch
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x295

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    return-void
.end method

.method protected abstract addLabel(Ljava/lang/String;)V
.end method

.method protected abstract addValue(Ljava/lang/String;Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;)V
.end method

.method protected abstract endArray()V
.end method

.method public endNode()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    const/16 v0, 0x80

    move v1, v0

    :goto_0
    invoke-direct {p0, v1, v4, v4}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iput v1, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    or-int/lit16 v0, v0, 0x81

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected abstract endObject()V
.end method

.method protected getType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;
    .locals 1

    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NULL:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->BOOLEAN:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->NUMBER_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->NUMBER:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;->STRING:Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$Type;

    goto :goto_0
.end method

.method protected isArray(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/io/Externalizable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract nextElement()V
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->type:Ljava/lang/Class;

    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u0000"

    :cond_1
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x81

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    return-void
.end method

.method protected abstract startArray()V
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v2, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->stack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;

    iget v0, v0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;->status:I

    invoke-direct {v2, p2, v0}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter$StackElement;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->handleCheckedStateTransition(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x295

    iput v0, p0, Lcom/thoughtworks/xstream/io/json/AbstractJsonWriter;->expectedStates:I

    return-void
.end method

.method protected abstract startObject()V
.end method
