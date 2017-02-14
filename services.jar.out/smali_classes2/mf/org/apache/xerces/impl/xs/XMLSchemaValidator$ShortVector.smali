.class public final Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ShortVector"
.end annotation


# instance fields
.field private fData:[S

.field private fLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    array-length v0, v0

    if-le v0, p1, :cond_1

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    goto :goto_0
.end method


# virtual methods
.method public add(S)V
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->ensureCapacity(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    return-void
.end method

.method public contains(S)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    aget-short v2, v2, v0

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fLength:I

    return v0
.end method

.method public valueAt(I)S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->fData:[S

    aget-short v0, v0, p1

    return v0
.end method
