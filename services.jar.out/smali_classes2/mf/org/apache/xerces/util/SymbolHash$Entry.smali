.class public final Lmf/org/apache/xerces/util/SymbolHash$Entry;
.super Ljava/lang/Object;
.source "SymbolHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/SymbolHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Entry"
.end annotation


# instance fields
.field public key:Ljava/lang/Object;

.field public next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/util/SymbolHash$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object p2, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object p3, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    return-void
.end method


# virtual methods
.method public makeClone()Lmf/org/apache/xerces/util/SymbolHash$Entry;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash$Entry;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/SymbolHash$Entry;->makeClone()Lmf/org/apache/xerces/util/SymbolHash$Entry;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/util/SymbolHash$Entry;->next:Lmf/org/apache/xerces/util/SymbolHash$Entry;

    goto :goto_0
.end method
