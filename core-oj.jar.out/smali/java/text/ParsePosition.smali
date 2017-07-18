.class public Ljava/text/ParsePosition;
.super Ljava/lang/Object;
.source "ParsePosition.java"


# instance fields
.field errorIndex:I

.field index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/text/ParsePosition;->index:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    iput p1, p0, Ljava/text/ParsePosition;->index:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    instance-of v2, p1, Ljava/text/ParsePosition;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/text/ParsePosition;

    iget v2, p0, Ljava/text/ParsePosition;->index:I

    iget v3, v0, Ljava/text/ParsePosition;->index:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ljava/text/ParsePosition;->errorIndex:I

    iget v3, v0, Ljava/text/ParsePosition;->errorIndex:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getErrorIndex()I
    .locals 1

    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/text/ParsePosition;->index:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/text/ParsePosition;->errorIndex:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljava/text/ParsePosition;->index:I

    or-int/2addr v0, v1

    return v0
.end method

.method public setErrorIndex(I)V
    .locals 0

    iput p1, p0, Ljava/text/ParsePosition;->errorIndex:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Ljava/text/ParsePosition;->index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/text/ParsePosition;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/ParsePosition;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",errorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
