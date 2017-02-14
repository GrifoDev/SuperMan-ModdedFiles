.class final Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;
.super Ljava/lang/Object;
.source "DoubleDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XDouble"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
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
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    :goto_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0

    :cond_2
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I

    move-result v0

    return v0
.end method

.method private compareTo(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v0

    if-nez v2, :cond_2

    return v6

    :cond_2
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    cmpl-double v0, v0, v0

    if-eqz v0, :cond_3

    return v6

    :cond_3
    return v7

    :cond_4
    return v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    if-eqz v0, :cond_1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    return v5

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eq p1, p0, :cond_0

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return v5

    :cond_0
    return v4

    :cond_1
    return v4

    :cond_2
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v5
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 12

    const/4 v1, 0x1

    const/16 v11, 0x30

    const/16 v10, 0x2e

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    const-string/jumbo v0, "INF"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_3

    const-string/jumbo v0, "-INF"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NaN"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    const-string/jumbo v0, "0.0E1"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, 0x3

    new-array v5, v0, [C

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x0

    aget-char v0, v5, v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_7

    move v0, v1

    :goto_1
    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_8

    :goto_2
    if-nez v1, :cond_6

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v1, v2, v6

    if-gtz v1, :cond_c

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

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

    if-ne v3, v11, :cond_a

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-eq v3, v10, :cond_b

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

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_7
    aget-char v1, v5, v3

    if-ne v1, v11, :cond_d

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
