.class Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;
.super Ljava/lang/Object;
.source "XMLSchemaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationArray"
.end annotation


# instance fields
.field length:I

.field locations:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLocation(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    aput-object p1, v0, v1

    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    const/4 v1, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->resize(II)V

    goto :goto_0
.end method

.method public getFirstLocation()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    return v0
.end method

.method public getLocationArray()[Ljava/lang/String;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->resize(II)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4

    const/4 v3, 0x0

    new-array v0, p2, [Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->locations:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->length:I

    return-void
.end method
