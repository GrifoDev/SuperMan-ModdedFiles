.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, [D

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Ljava/lang/Double;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-void
.end method

.method public static compare(DD)I
    .locals 8

    const/4 v5, 0x1

    const/4 v4, -0x1

    cmpg-double v6, p0, p2

    if-gez v6, :cond_0

    return v4

    :cond_0
    cmpl-double v6, p0, p2

    if-lez v6, :cond_1

    return v5

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    cmp-long v6, v2, v0

    if-nez v6, :cond_3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4

    :cond_3
    cmp-long v6, v2, v0

    if-ltz v6, :cond_2

    move v4, v5

    goto :goto_0
.end method

.method public static doubleToLongBits(D)J
    .locals 6

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    and-long v2, v0, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    :cond_0
    return-wide v0
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static hashCode(D)I
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public static isFinite(D)Z
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInfinite(D)Z
    .locals 4

    const/4 v0, 0x1

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, p0, v2

    if-eqz v1, :cond_0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, p0, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaN(D)Z
    .locals 2

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static max(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum(DD)D
    .locals 2

    add-double v0, p0, p2

    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .locals 10

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isFinite(D)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, p0, p1}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_1

    const-string/jumbo v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string/jumbo v5, "0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/16 v6, 0x0

    cmpl-double v5, p0, v6

    if-nez v5, :cond_2

    const-string/jumbo v5, "0.0p0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const-wide/high16 v6, 0x10000000000000L

    cmpg-double v5, p0, v6

    if-gez v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const-wide v8, 0xfffffffffffffL

    and-long/2addr v6, v8

    const-wide/high16 v8, 0x1000000000000000L

    or-long v2, v6, v8

    if-eqz v4, :cond_4

    const-string/jumbo v5, "0."

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/16 v7, 0x10

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "0000000000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "0"

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_6

    const/16 v5, -0x3fe

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "1."

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "0{1,12}$"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v5

    goto :goto_4
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .locals 2

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Double;

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/FloatingDecimal;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .locals 4

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Double;

    iget-wide v2, p1, Ljava/lang/Double;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Ljava/lang/Double;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ljava/lang/Double;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
