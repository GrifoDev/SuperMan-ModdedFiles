.class public Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;
.super Ljava/lang/Object;
.source "DTDGrammarBucket.java"


# instance fields
.field protected fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected final fGrammars:Ljava/util/Hashtable;

.field protected fIsStandalone:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    return-void
.end method

.method getActiveGrammar()Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    return-object v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    check-cast p1, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    return-object v0
.end method

.method getStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    return v0
.end method

.method public putGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fGrammars:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setActiveGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fActiveGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    return-void
.end method

.method setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->fIsStandalone:Z

    return-void
.end method
