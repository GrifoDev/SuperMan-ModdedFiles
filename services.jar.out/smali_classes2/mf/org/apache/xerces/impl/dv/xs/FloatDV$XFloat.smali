.class final Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;
.super Ljava/lang/Object;
.source "FloatDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSFloat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/FloatDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XFloat"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private final value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;->isPossibleFP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "NaN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    :cond_2
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    :cond_3
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I

    move-result v0

    return v0
.end method

.method private compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    return v3

    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    cmpl-float v0, v0, v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v4

    :cond_4
    return v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    if-eqz v0, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    return v3

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eq p1, p0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x1

    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    const-string/jumbo v0, "INF"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    const-string/jumbo v0, "-INF"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NaN"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    const-string/jumbo v0, "0.0E1"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, 0x3

    new-array v5, v0, [C

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x0

    aget-char v0, v5, v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_7

    move v0, v1

    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_8

    :goto_2
    if-nez v1, :cond_6

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    :goto_3
    if-le v1, v0, :cond_9

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    int-to-char v3, v3

    aput-char v3, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    const/16 v1, 0x2e

    aput-char v1, v5, v0

    move v1, v4

    :goto_4
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-ne v3, v8, :cond_a

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-eq v3, v7, :cond_b

    :goto_5
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x45

    aput-char v4, v5, v1

    sub-int v1, v2, v0

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v5, v3

    :goto_6
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_7
    aget-char v1, v5, v3

    if-ne v1, v8, :cond_d

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v0, -0x1

    aget-char v2, v5, v3

    int-to-char v2, v2

    aput-char v2, v5, v1

    const/16 v1, 0x2e

    aput-char v1, v5, v0

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v0, 0x1

    :goto_8
    if-ge v2, v4, :cond_e

    aget-char v6, v5, v2

    int-to-char v6, v6

    aput-char v6, v5, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    sub-int v1, v3, v0

    sub-int v1, v4, v1

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_f

    :goto_9
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x45

    aput-char v4, v5, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x2d

    aput-char v4, v5, v2

    sub-int v2, v3, v0

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v5, v1

    goto :goto_6

    :cond_f
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x30

    aput-char v4, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_9
.end method
