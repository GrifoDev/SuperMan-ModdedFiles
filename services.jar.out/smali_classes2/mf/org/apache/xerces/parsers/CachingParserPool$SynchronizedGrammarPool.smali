.class public final Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;
.super Ljava/lang/Object;
.source "CachingParserPool.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/parsers/CachingParserPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynchronizedGrammarPool"
.end annotation


# instance fields
.field private fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockPool()V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->lockPool()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockPool()V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->unlockPool()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
