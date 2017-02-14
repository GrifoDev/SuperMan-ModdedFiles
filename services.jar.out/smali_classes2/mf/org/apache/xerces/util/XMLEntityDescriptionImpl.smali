.class public Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XMLEntityDescriptionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLEntityDescription;


# instance fields
.field protected fEntityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    return-void
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x3a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    if-nez v1, :cond_4

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    if-nez v1, :cond_5

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5
.end method
