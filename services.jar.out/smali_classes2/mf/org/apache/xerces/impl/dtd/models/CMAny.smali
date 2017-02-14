.class public Lmf/org/apache/xerces/impl/dtd/models/CMAny;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMAny.java"


# instance fields
.field private fPosition:I

.field private final fType:I

.field private final fURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fType:I

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fURI:Ljava/lang/String;

    iput p3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0
.end method

.method final getPosition()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    return v0
.end method

.method final getType()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fType:I

    return v0
.end method

.method final getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fURI:Ljava/lang/String;

    return-object v0
.end method

.method public isNullable()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final setPosition(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x29

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "##any:uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    if-gez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, " (Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
