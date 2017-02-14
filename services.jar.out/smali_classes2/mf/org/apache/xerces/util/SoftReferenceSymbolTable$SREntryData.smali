.class public final Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
.super Ljava/lang/Object;
.source "SoftReferenceSymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SREntryData"
.end annotation


# instance fields
.field public final characters:[C

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v1, v1

    iget-object v2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    new-array v0, p4, [C

    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    iget-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
