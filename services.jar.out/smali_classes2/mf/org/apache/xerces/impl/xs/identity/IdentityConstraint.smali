.class public abstract Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
.super Ljava/lang/Object;
.source "IdentityConstraint.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSIDCDefinition;


# instance fields
.field protected fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field protected final fElementName:Ljava/lang/String;

.field protected fFieldCount:I

.field protected fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

.field protected final fIdentityConstraintName:Ljava/lang/String;

.field protected final fNamespace:Ljava/lang/String;

.field protected fNumAnnotations:I

.field protected fSelector:Lmf/org/apache/xerces/impl/xs/identity/Selector;

.field protected type:S


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNamespace:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fIdentityConstraintName:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fElementName:Ljava/lang/String;

    return-void
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/identity/Field;I)[Lmf/org/apache/xerces/impl/xs/identity/Field;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/identity/Field;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNumAnnotations:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNumAnnotations:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNumAnnotations:I

    aput-object p1, v0, v1

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNumAnnotations:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNumAnnotations:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0
.end method

.method public addField(Lmf/org/apache/xerces/impl/xs/identity/Field;)V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    aput-object p1, v0, v1

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->resize([Lmf/org/apache/xerces/impl/xs/identity/Field;I)[Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    goto :goto_0
.end method

.method public equals(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fIdentityConstraintName:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fIdentityConstraintName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fSelector:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fSelector:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNumAnnotations:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getCategory()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->type:S

    return v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldAt(I)Lmf/org/apache/xerces/impl/xs/identity/Field;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    return v0
.end method

.method public getFieldStrs()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fFieldCount:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public getIdentityConstraintName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fIdentityConstraintName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fIdentityConstraintName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRefKey()Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Lmf/org/apache/xerces/impl/xs/identity/Selector;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fSelector:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    return-object v0
.end method

.method public getSelectorStr()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fSelector:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fSelector:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()S
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public setSelector(Lmf/org/apache/xerces/impl/xs/identity/Selector;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->fSelector:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
