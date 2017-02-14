.class public Lmf/org/apache/xerces/util/XMLStringBuffer;
.super Lmf/org/apache/xerces/xni/XMLString;
.source "XMLStringBuffer.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    new-array v0, p1, [C

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 1

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x20

    if-lt v0, v1, :cond_1

    :goto_1
    new-array v0, v0, [C

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    goto :goto_1
.end method

.method public append(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v2, v2

    if-gt v0, v2, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {p1, v4, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x20

    if-lt v0, v2, :cond_1

    :goto_1
    new-array v0, v0, [C

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v3, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v0, v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    goto :goto_1
.end method

.method public append(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 3

    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    return-void
.end method

.method public append([CII)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v1, v1

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    array-length v0, v0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget v2, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iput v0, p0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    return-void
.end method
