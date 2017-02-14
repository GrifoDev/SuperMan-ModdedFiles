.class public Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.super Ljava/lang/Object;
.source "XMLGrammarPoolImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final TABLE_SIZE:I = 0xb


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

.field protected fPoolIsLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    const/16 v0, 0xb

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v0, p1, [Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :goto_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    return-void
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v0, 0x7fffffff

    and-int/2addr v0, v2

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v3, v3

    rem-int/2addr v0, v3

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v3, v2, :cond_1

    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_2
    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v0, 0x7fffffff

    and-int/2addr v0, v2

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v3, v3

    rem-int/2addr v0, v3

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v3, v2, :cond_1

    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v1

    return-object v0

    :cond_2
    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public lockPool()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 6

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v3

    const v0, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v4, v4

    rem-int v4, v0, v4

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v0, v4

    :goto_1
    if-eqz v0, :cond_3

    iget v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v5, v3, :cond_2

    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v5, v2}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p1, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    monitor-exit v1

    return-void

    :cond_3
    new-instance v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v5, v5, v4

    invoke-direct {v0, v3, v2, p1, v5}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;-><init>(ILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v0, v2, v4

    iget v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 8

    const/4 v1, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v4

    const v0, 0x7fffffff

    and-int/2addr v0, v4

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v2, v2

    rem-int v5, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v0, v5

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_3

    iget v6, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    if-eq v6, v4, :cond_1

    :cond_0
    iget-object v0, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    iget-object v6, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v6, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iget-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v1, v0, v5

    :goto_1
    iget-object v0, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v1, 0x0

    iput-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    iget v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    monitor-exit v3

    return-object v0

    :cond_2
    iget-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 8

    const/4 v0, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v1

    iget v1, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v6, v1, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_2
    iget-object v1, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    iget-object v7, v2, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    aput-object v7, v6, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    new-array v0, v1, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public unlockPool()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method
