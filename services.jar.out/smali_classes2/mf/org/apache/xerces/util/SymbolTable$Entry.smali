.class public final Lmf/org/apache/xerces/util/SymbolTable$Entry;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public final characters:[C

.field public next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable$Entry;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    iget-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v0, v0

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iput-object p2, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    return-void
.end method

.method public constructor <init>([CIILmf/org/apache/xerces/util/SymbolTable$Entry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [C

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    iget-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->characters:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/util/SymbolTable$Entry;->next:Lmf/org/apache/xerces/util/SymbolTable$Entry;

    return-void
.end method
