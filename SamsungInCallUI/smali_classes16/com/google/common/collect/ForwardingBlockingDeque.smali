.class public abstract Lcom/google/common/collect/ForwardingBlockingDeque;
.super Lcom/google/common/collect/ForwardingDeque;
.source "ForwardingBlockingDeque.java"

# interfaces
.implements Ljava/util/concurrent/BlockingDeque;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingDeque",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingDeque",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Deque;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingDeque",
            "<TE;>;"
        }
    .end annotation
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->drainTo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 1
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/BlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingDeque;->pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->putFirst(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/ForwardingBlockingDeque;, "Lcom/google/common/collect/ForwardingBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->takeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
