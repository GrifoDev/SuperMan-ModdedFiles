.class public final enum Ljava/util/stream/StreamOpFlag;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamOpFlag$MaskBuilder;,
        Ljava/util/stream/StreamOpFlag$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/StreamOpFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/StreamOpFlag;

.field private static final CLEAR_BITS:I = 0x2

.field public static final enum DISTINCT:Ljava/util/stream/StreamOpFlag;

.field private static final FLAG_MASK:I

.field private static final FLAG_MASK_IS:I

.field private static final FLAG_MASK_NOT:I

.field public static final INITIAL_OPS_VALUE:I

.field public static final IS_DISTINCT:I

.field public static final IS_ORDERED:I

.field public static final IS_SHORT_CIRCUIT:I

.field public static final IS_SIZED:I

.field public static final IS_SORTED:I

.field public static final NOT_DISTINCT:I

.field public static final NOT_ORDERED:I

.field public static final NOT_SIZED:I

.field public static final NOT_SORTED:I

.field public static final OP_MASK:I

.field public static final enum ORDERED:Ljava/util/stream/StreamOpFlag;

.field private static final PRESERVE_BITS:I = 0x3

.field private static final SET_BITS:I = 0x1

.field public static final enum SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

.field public static final enum SIZED:Ljava/util/stream/StreamOpFlag;

.field public static final enum SORTED:Ljava/util/stream/StreamOpFlag;

.field public static final SPLITERATOR_CHARACTERISTICS_MASK:I

.field public static final STREAM_MASK:I

.field public static final TERMINAL_OP_MASK:I

.field public static final UPSTREAM_TERMINAL_OP_MASK:I


# instance fields
.field private final bitPosition:I

.field private final clear:I

.field private final maskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final preserve:I

.field private final set:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/stream/StreamOpFlag;

    const-string/jumbo v1, "DISTINCT"

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v4, v4, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    new-instance v0, Ljava/util/stream/StreamOpFlag;

    const-string/jumbo v1, "SORTED"

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v5, v5, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    new-instance v0, Ljava/util/stream/StreamOpFlag;

    const-string/jumbo v1, "ORDERED"

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v6, v6, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    new-instance v0, Ljava/util/stream/StreamOpFlag;

    const-string/jumbo v1, "SIZED"

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v7, v7, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    new-instance v0, Ljava/util/stream/StreamOpFlag;

    const-string/jumbo v1, "SHORT_CIRCUIT"

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v2}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v0, v1, v8, v3, v2}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/stream/StreamOpFlag;

    sget-object v1, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    aput-object v1, v0, v6

    sget-object v1, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    aput-object v1, v0, v7

    sget-object v1, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    aput-object v1, v0, v8

    sput-object v0, Ljava/util/stream/StreamOpFlag;->$VALUES:[Ljava/util/stream/StreamOpFlag;

    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->OP_MASK:I

    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->TERMINAL_OP_MASK:I

    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->UPSTREAM_TERMINAL_OP_MASK:I

    invoke-static {}, Ljava/util/stream/StreamOpFlag;->createFlagMask()I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK:I

    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    shl-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    or-int/2addr v0, v1

    sput v0, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v0, Ljava/util/stream/StreamOpFlag;->IS_DISTINCT:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v0, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v0, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v0, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p4}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->build()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    mul-int/lit8 p3, p3, 0x2

    iput p3, p0, Ljava/util/stream/StreamOpFlag;->bitPosition:I

    const/4 v0, 0x1

    shl-int/2addr v0, p3

    iput v0, p0, Ljava/util/stream/StreamOpFlag;->set:I

    const/4 v0, 0x2

    shl-int/2addr v0, p3

    iput v0, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    const/4 v0, 0x3

    shl-int/2addr v0, p3

    iput v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    return-void
.end method

.method public static combineOpFlags(II)I
    .locals 1

    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->getMask(I)I

    move-result v0

    and-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0
.end method

.method private static createFlagMask()I
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/stream/StreamOpFlag;->values()[Ljava/util/stream/StreamOpFlag;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget v5, v0, Ljava/util/stream/StreamOpFlag;->preserve:I

    or-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static createMask(Ljava/util/stream/StreamOpFlag$Type;)I
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/stream/StreamOpFlag;->values()[Ljava/util/stream/StreamOpFlag;

    move-result-object v4

    const/4 v2, 0x0

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    iget-object v2, v0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v6, v0, Ljava/util/stream/StreamOpFlag;->bitPosition:I

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static fromCharacteristics(I)I
    .locals 1

    sget v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method public static fromCharacteristics(Ljava/util/Spliterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<*>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, -0x5

    return v1

    :cond_0
    sget v1, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    return v1
.end method

.method private static getMask(I)I
    .locals 2

    if-nez p0, :cond_0

    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK:I

    :goto_0
    return v0

    :cond_0
    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p0

    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    not-int v0, v0

    goto :goto_0
.end method

.method private static set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .locals 3

    new-instance v0, Ljava/util/stream/StreamOpFlag$MaskBuilder;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Ljava/util/stream/StreamOpFlag$Type;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Ljava/util/stream/StreamOpFlag$MaskBuilder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static toCharacteristics(I)I
    .locals 1

    sget v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method public static toStreamFlags(I)I
    .locals 2

    not-int v0, p0

    shr-int/lit8 v0, v0, 0x1

    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, v1

    and-int/2addr v0, p0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/StreamOpFlag;
    .locals 1

    const-class v0, Ljava/util/stream/StreamOpFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/StreamOpFlag;

    return-object v0
.end method

.method public static values()[Ljava/util/stream/StreamOpFlag;
    .locals 1

    sget-object v0, Ljava/util/stream/StreamOpFlag;->$VALUES:[Ljava/util/stream/StreamOpFlag;

    return-object v0
.end method


# virtual methods
.method public canSet(Ljava/util/stream/StreamOpFlag$Type;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public clear()I
    .locals 1

    iget v0, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    return v0
.end method

.method public isCleared(I)Z
    .locals 2

    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKnown(I)Z
    .locals 2

    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljava/util/stream/StreamOpFlag;->set:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreserved(I)Z
    .locals 2

    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamFlag()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public set()I
    .locals 1

    iget v0, p0, Ljava/util/stream/StreamOpFlag;->set:I

    return v0
.end method
