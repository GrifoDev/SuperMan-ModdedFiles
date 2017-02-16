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

    .prologue
    .line 137
    const-class v0, [F

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 524
    double-to-float v0, p1

    iput v0, p0, Ljava/lang/Float;->value:F

    .line 523
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 514
    iput p1, p0, Ljava/lang/Float;->value:F

    .line 513
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
    .line 540
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    .line 538
    return-void
.end method

.method public static compare(FF)I
    .locals 5
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 909
    cmpg-float v4, p0, p1

    if-gez v4, :cond_0

    .line 910
    return v2

    .line 911
    :cond_0
    cmpl-float v4, p0, p1

    if-lez v4, :cond_1

    .line 912
    return v3

    .line 915
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 916
    .local v1, "thisBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 918
    .local v0, "anotherBits":I
    if-ne v1, v0, :cond_3

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    .line 919
    :cond_3
    if-lt v1, v0, :cond_2

    move v2, v3

    .line 920
    goto :goto_0
.end method

.method public static floatToIntBits(F)I
    .locals 3
    .param p0, "value"    # F

    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 746
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 749
    .local v0, "result":I
    and-int v1, v0, v2

    if-ne v1, v2, :cond_0

    .line 751
    const v1, 0x7fffff

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 752
    const/high16 v0, 0x7fc00000    # NaNf

    .line 753
    :cond_0
    return v0
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static hashCode(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 666
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isFinite(F)Z
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 497
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
    .param p0, "v"    # F

    .prologue
    const/4 v0, 0x1

    .line 483
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
    .param p0, "v"    # F

    .prologue
    .line 471
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
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 948
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 962
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 459
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
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 934
    add-float v0, p0, p1

    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .locals 4
    .param p0, "f"    # F

    .prologue
    .line 284
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x800000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 285
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    .line 289
    float-to-double v2, p0

    .line 291
    const/16 v1, -0x380

    .line 289
    invoke-static {v2, v3, v1}, Lsun/misc/FpUtils;->scalb(DI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "p-1022$"

    const-string/jumbo v2, "p-126"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 206
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
    .param p0, "f"    # F

    .prologue
    .line 441
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 424
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

    .prologue
    .line 587
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .locals 2
    .param p1, "anotherFloat"    # Ljava/lang/Float;

    .prologue
    .line 887
    iget v0, p0, Ljava/lang/Float;->value:F

    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherFloat"    # Ljava/lang/Object;

    .prologue
    .line 886
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "anotherFloat":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 641
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 710
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 711
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p1, Ljava/lang/Float;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v2, p0, Ljava/lang/Float;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 710
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Ljava/lang/Float;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 621
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Ljava/lang/Float;->value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Ljava/lang/Float;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
