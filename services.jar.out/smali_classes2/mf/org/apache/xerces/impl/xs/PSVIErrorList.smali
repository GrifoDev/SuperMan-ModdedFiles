.class final Lmf/org/apache/xerces/impl/xs/PSVIErrorList;
.super Ljava/util/AbstractList;
.source "PSVIErrorList.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/StringList;


# instance fields
.field private final fArray:[Ljava/lang/String;

.field private final fLength:I

.field private final fOffset:I


# direct methods
.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fArray:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fArray:[Ljava/lang/String;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fLength:I

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fOffset:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fLength:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fArray:[Ljava/lang/String;

    shl-int/lit8 v3, v0, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fOffset:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fLength:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fArray:[Ljava/lang/String;

    shl-int/lit8 v3, v0, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fOffset:I

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    return v5

    :cond_3
    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fArray:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fOffset:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fLength:I

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fArray:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->fOffset:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;->getLength()I

    move-result v0

    return v0
.end method
