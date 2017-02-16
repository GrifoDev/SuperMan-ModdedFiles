.class abstract Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedSliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;,
        Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final CHUNK_SIZE:I = 0x80


# instance fields
.field private final permits:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final skipThreshold:J

.field protected final unlimited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->-assertionsDisabled:Z

    .line 902
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;JJ)V
    .locals 4
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    const-wide/16 v2, 0x0

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    .line 913
    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 914
    cmp-long v0, p4, v2

    if-ltz v0, :cond_2

    move-wide v0, p4

    :goto_1
    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 915
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    cmp-long v1, p4, v2

    if-ltz v1, :cond_0

    add-long/2addr p2, p4

    .end local p2    # "skip":J
    :cond_0
    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 911
    return-void

    .line 913
    .restart local p2    # "skip":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 914
    goto :goto_1
.end method

.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator",
            "<TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    .line 921
    iget-boolean v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 922
    iget-object v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 923
    iget-wide v0, p2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 919
    return-void
.end method


# virtual methods
.method protected final acquirePermits(J)J
    .locals 11
    .param p1, "numElements"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    const-wide/16 v4, 0x0

    .line 944
    sget-boolean v6, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    cmp-long v6, p1, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 946
    :cond_1
    iget-object v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 947
    .local v2, "remainingPermits":J
    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 948
    iget-boolean v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v6, :cond_2

    .end local p1    # "numElements":J
    :goto_1
    return-wide p1

    .restart local p1    # "numElements":J
    :cond_2
    move-wide p1, v4

    goto :goto_1

    .line 949
    :cond_3
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 950
    .local v0, "grabbing":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    .line 951
    iget-object v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v8, v2, v0

    invoke-virtual {v6, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 953
    :cond_4
    iget-boolean v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v6, :cond_5

    .line 954
    sub-long v6, p1, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4

    .line 955
    :cond_5
    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    .line 956
    iget-wide v6, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    sub-long v6, v2, v6

    sub-long v6, v0, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4

    .line 958
    :cond_6
    return-wide v0
.end method

.method public final characteristics()I
    .locals 1

    .prologue
    .line 987
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4051

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    .prologue
    .line 983
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method protected final permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .locals 4

    .prologue
    .line 965
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 966
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0

    .line 968
    :cond_0
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    goto :goto_0
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    const/4 v1, 0x0

    .line 973
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 974
    return-object v1

    .line 976
    :cond_0
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 977
    .local v0, "split":Ljava/util/Spliterator;, "TT_SPLITR;"
    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    goto :goto_0
.end method
