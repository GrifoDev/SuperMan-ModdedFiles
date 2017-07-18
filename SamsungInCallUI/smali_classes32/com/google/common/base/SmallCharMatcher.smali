.class final Lcom/google/common/base/SmallCharMatcher;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "SmallCharMatcher.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "no precomputation is done in GWT"
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final DESIRED_LOAD_FACTOR:D = 0.5

.field static final MAX_SIZE:I = 0x3ff


# instance fields
.field private final containsZero:Z

.field private final filter:J

.field private final table:[C


# direct methods
.method private constructor <init>([CJZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p5}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    iput-wide p2, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    iput-boolean p4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    return-void
.end method

.method private checkFilter(I)Z
    .locals 4

    const-wide/16 v2, 0x1

    iget-wide v0, p0, Lcom/google/common/base/SmallCharMatcher;->filter:J

    shr-long/2addr v0, p1

    and-long/2addr v0, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static chooseTableSize(I)I
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static from(Ljava/util/BitSet;Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 12

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v9

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    invoke-static {v9}, Lcom/google/common/base/SmallCharMatcher;->chooseTableSize(I)I

    move-result v0

    new-array v1, v0, [C

    array-length v0, v1

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    :goto_0
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v6

    or-long/2addr v2, v10

    invoke-static {v6}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v0

    and-int v7, v0, v8

    :goto_1
    aget-char v0, v1, v7

    if-nez v0, :cond_0

    int-to-char v0, v6

    aput-char v0, v1, v7

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v7, 0x1

    and-int v7, v0, v8

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/common/base/SmallCharMatcher;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/SmallCharMatcher;-><init>([CJZLjava/lang/String;)V

    return-object v0
.end method

.method static smear(I)I
    .locals 3

    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public matches(C)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/common/base/SmallCharMatcher;->checkFilter(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    invoke-static {p1}, Lcom/google/common/base/SmallCharMatcher;->smear(I)I

    move-result v4

    and-int v2, v4, v1

    move v0, v2

    :cond_2
    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    aget-char v4, v4, v0

    if-ne v4, p1, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 5

    iget-boolean v4, p0, Lcom/google/common/base/SmallCharMatcher;->containsZero:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/SmallCharMatcher;->table:[C

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
