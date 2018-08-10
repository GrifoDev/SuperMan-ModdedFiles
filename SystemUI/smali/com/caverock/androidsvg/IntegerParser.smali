.class public Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"


# instance fields
.field isNegative:Z

.field pos:I

.field value:J


# direct methods
.method public constructor <init>(ZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/caverock/androidsvg/IntegerParser;->isNegative:Z

    iput-wide p2, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    iput p4, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return-void
.end method

.method public static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 8

    move v1, p1

    const-wide/16 v2, 0x0

    if-ge p1, p2, :cond_1

    :goto_0
    if-lt v1, p2, :cond_2

    :cond_0
    if-eq v1, p1, :cond_9

    new-instance v4, Lcom/caverock/androidsvg/IntegerParser;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    return-object v4

    :cond_1
    const/4 v4, 0x0

    return-object v4

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ge v0, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-ge v0, v4, :cond_6

    :cond_4
    const/16 v4, 0x61

    if-lt v0, v4, :cond_0

    const/16 v4, 0x66

    if-gt v0, v4, :cond_0

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x61

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    :goto_1
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_8

    const/4 v4, 0x0

    return-object v4

    :cond_5
    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x30

    int-to-long v6, v6

    add-long v2, v4, v6

    goto :goto_1

    :cond_6
    const/16 v4, 0x46

    if-gt v0, v4, :cond_4

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x41

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .locals 2

    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
