.class Landroid/text/PackedObjectVector;
.super Ljava/lang/Object;
.source "PackedObjectVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    return-void
.end method

.method private growBuffer()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v3, v4

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    div-int v1, v3, v4

    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v4, v5

    sub-int v0, v3, v4

    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    mul-int/2addr v4, v5

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int/2addr v4, v0

    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v5

    sub-int v5, v1, v0

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v0

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    iput-object v2, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    return-void
.end method

.method private moveRowGapTo(I)V
    .locals 8

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-ne p1, v5, :cond_0

    return-void

    :cond_0
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-le p1, v5, :cond_2

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, p1

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v7, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int v1, v5, v6

    :goto_0
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    if-ge v1, v5, :cond_4

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, v6

    sub-int v5, v1, v5

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int v0, v5, v6

    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v4, v5, v6

    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aput-object v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int v3, v5, p1

    add-int v5, p1, v3

    add-int/lit8 v1, v5, -0x1

    :goto_2
    if-lt v1, p1, :cond_4

    sub-int v5, v1, p1

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, v6

    sub-int v0, v5, v3

    const/4 v2, 0x0

    :goto_3
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v4, v5, v6

    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aput-object v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    return-void
.end method


# virtual methods
.method public deleteAt(II)V
    .locals 2

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    if-ge v0, v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-object v2, v3, v4

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt v0, v3, :cond_0

    iget v3, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_1

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, " << \n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "-----\n\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getValue(II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v1

    :cond_0
    iget-object v1, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v2, p1

    add-int/2addr v2, p2

    aget-object v0, v1, v2

    return-object v0
.end method

.method public insertAt(I[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/text/PackedObjectVector;->growBuffer()V

    :cond_0
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, p1, v0, v2}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_2

    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setValue(IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    :cond_0
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    aput-object p3, v0, v1

    return-void
.end method

.method public size()I
    .locals 2

    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 1

    iget v0, p0, Landroid/text/PackedObjectVector;->mColumns:I

    return v0
.end method
