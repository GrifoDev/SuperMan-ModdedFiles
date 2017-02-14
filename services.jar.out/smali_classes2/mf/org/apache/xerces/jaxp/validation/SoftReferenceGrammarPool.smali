.class final Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.super Ljava/lang/Object;
.source "SoftReferenceGrammarPool.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;,
        Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0xb

.field protected static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field protected fPoolIsLocked:Z

.field protected final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    const/16 v0, 0xb

    new-array v0, v0, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-array v0, p1, [Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method private clean()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-nez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    iget-object v2, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v2, v0, v1

    :goto_0
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-nez v0, :cond_1

    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iput-object v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object v0

    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v1, p1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_1
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :goto_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V

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
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    return-void
.end method

.method public containsGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v3

    const v0, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v1, v0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/Grammar;

    if-eqz v0, :cond_1

    iget v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v0, v3, :cond_2

    :cond_0
    :goto_1
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    const/4 v0, 0x1

    return v0

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4
.end method

.method public equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    instance-of v0, p2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v0, :cond_3

    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    check-cast p2, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_1
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2

    :cond_4
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_5
    return v2

    :cond_6
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_7
    return v2
.end method

.method public getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v3

    const v0, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v1, v0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/grammars/Grammar;

    if-eqz v0, :cond_1

    iget v4, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v4, v3, :cond_2

    :cond_0
    :goto_1
    iget-object v0, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v4, v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v2

    return-object v0

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5
.end method

.method public hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public lockPool()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 8

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v1

    const v0, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v2, v2

    rem-int v2, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v4, v1, :cond_2

    :cond_1
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v4, v3}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    :goto_2
    monitor-exit v7

    return-void

    :cond_3
    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, p1, v2}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lmf/org/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v5, v4, v2

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;-><init>(IILmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/Grammar;Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v0, v1, v2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v2

    const v0, 0x7fffffff

    and-int/2addr v0, v2

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v3

    rem-int/2addr v0, v3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aget-object v0, v3, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    if-eq v3, v2, :cond_1

    :cond_0
    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

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

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lmf/org/apache/xerces/xni/grammars/Grammar;

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
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method
