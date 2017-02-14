.class public interface abstract Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
.super Ljava/lang/Object;
.source "XMLGrammarPool.java"


# virtual methods
.method public abstract cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
.end method

.method public abstract clear()V
.end method

.method public abstract lockPool()V
.end method

.method public abstract retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
.end method

.method public abstract retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
.end method

.method public abstract unlockPool()V
.end method
