.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;
.super Ljava/lang/Object;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Context"
.end annotation


# instance fields
.field private charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

.field private characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

.field closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

.field inuse:Z

.field length:I

.field limit:I

.field match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

.field start:I

.field private stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

.field target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    return-void
.end method

.method private resetCommon(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    if-nez v0, :cond_1

    :cond_0
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->reset()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    array-length v0, v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;-><init>()V

    aput-object v2, v1, v0

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method reset(Ljava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;->resetTarget(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->resetCommon(I)V

    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->stringTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;

    goto :goto_0
.end method

.method reset(Ljava/text/CharacterIterator;III)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->resetTarget(Ljava/text/CharacterIterator;)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->resetCommon(I)V

    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;-><init>(Ljava/text/CharacterIterator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->characterIteratorTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;

    goto :goto_0
.end method

.method reset([CIII)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;->resetTarget([C)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-direct {p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->resetCommon(I)V

    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;-><init>([C)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->charArrayTarget:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;

    goto :goto_0
.end method

.method declared-synchronized setInUse(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
