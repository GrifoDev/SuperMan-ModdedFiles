.class public Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ElementStack"
.end annotation


# instance fields
.field protected fElements:[Lmf/org/apache/xerces/xni/QName;

.field protected fSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    return-void
.end method

.method public popElement(Lmf/org/apache/xerces/xni/QName;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    return-void
.end method

.method public pushElement(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/xni/QName;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/xni/QName;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fSize:I

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->fElements:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
