.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, [F

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Ljava/lang/Float;->value:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    return-void
.end method

.method public static compare(FF)I
    .locals 5

    const/4 v3, 0x1

    const/4 v2, -0x1

    cmpg-float v4, p0, p1

    if-gez v4, :cond_0

    return v2

    :cond_0
    cmpl-float v4, p0, p1

    if-lez v4, :cond_1

    return v3

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-ne v1, v0, :cond_3

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    :cond_3
    if-lt v1, v0, :cond_2

    move v2, v3

    goto :goto_0
.end method

.method public static floatToIntBits(F)I
    .locals 3

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    and-int v1, v0, v2

    if-ne v1, v2, :cond_0

    const v1, 0x7fffff

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v0, 0x7fc00000    # NaNf

    :cond_0
    return v0
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static hashCode(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isFinite(F)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInfinite(F)Z
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNaN(F)Z
    .locals 1

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static max(FF)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static min(FF)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public static sum(FF)F
    .locals 1

    add-float v0, p0, p1

    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    float-to-double v2, p0

    const/16 v1, -0x380

    invoke-static {v2, v3, v1}, Lsun/misc/FpUtils;->scalb(DI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "p-1022$"

    const-string/jumbo v2, "p-126"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->loadFloat(F)Ljava/lang/FloatingDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/FloatingDecimal;->toJavaFormatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .locals 1

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/Float;

    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/FloatingDecimal;->readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/FloatingDecimal;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .locals 2

    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Float;

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v2, p0, Ljava/lang/Float;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
