.class public final Ljava/lang/Short;
.super Ljava/lang/Number;
.source "Short.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Short$ShortCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_VALUE:S = 0x7fffs

.field public static final MIN_VALUE:S = -0x8000s

.field public static final SIZE:I = 0x10

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x684d37133460da52L


# instance fields
.field private final value:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, [S

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 321
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    iput-short v0, p0, Ljava/lang/Short;->value:S

    .line 320
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 304
    iput-short p1, p0, Ljava/lang/Short;->value:S

    .line 303
    return-void
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .prologue
    .line 457
    sub-int v0, p0, p1

    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Short;
    .locals 4
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    .local v0, "i":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out of range from input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_1
    int-to-short v1, v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1
.end method

.method public static hashCode(S)I
    .locals 0
    .param p0, "value"    # S

    .prologue
    .line 405
    return p0
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 144
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method public static parseShort(Ljava/lang/String;I)S
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "i":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Value out of range. Value:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" Radix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    int-to-short v1, v0

    return v1
.end method

.method public static reverseBytes(S)S
    .locals 2
    .param p0, "i"    # S

    .prologue
    .line 484
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static toString(S)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # S

    .prologue
    .line 73
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 200
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Short;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(S)Ljava/lang/Short;
    .locals 4
    .param p0, "s"    # S

    .prologue
    .line 231
    const/16 v0, 0x80

    .line 232
    .local v0, "offset":I
    move v1, p0

    .line 233
    .local v1, "sAsInt":I
    const/16 v2, -0x80

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 234
    sget-object v2, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    add-int/lit16 v3, v1, 0x80

    aget-object v2, v2, v3

    return-object v2

    .line 236
    :cond_0
    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v2
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .prologue
    .line 329
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherShort"    # Ljava/lang/Object;

    .prologue
    .line 438
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "anotherShort":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Short;)I
    .locals 2
    .param p1, "anotherShort"    # Ljava/lang/Short;

    .prologue
    .line 439
    iget-short v0, p0, Ljava/lang/Short;->value:S

    iget-short v1, p1, Ljava/lang/Short;->value:S

    invoke-static {v0, v1}, Ljava/lang/Short;->compare(SS)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 369
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 419
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 420
    iget-short v1, p0, Ljava/lang/Short;->value:S

    check-cast p1, Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 422
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 361
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 393
    iget-short v0, p0, Ljava/lang/Short;->value:S

    invoke-static {v0}, Ljava/lang/Short;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 345
    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 353
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 337
    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-short v0, p0, Ljava/lang/Short;->value:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
