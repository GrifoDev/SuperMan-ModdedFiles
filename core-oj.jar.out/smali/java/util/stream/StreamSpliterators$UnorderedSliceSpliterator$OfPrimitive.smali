.class abstract Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_BUFF:",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive",
        "<TT_CONS;>;T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator",
        "<TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfPrimitive;JJ)V
    .locals 0
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
    .line 1071
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;JJ)V

    .line 1070
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive",
            "<TT;TT_CONS;TT_BUFF;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1074
    return-void
.end method


# virtual methods
.method protected abstract acceptConsumed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method protected abstract bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_BUFF;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const/4 v1, 0x0

    .line 1103
    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    .local v0, "permitStatus":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v5, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v0, v5, :cond_5

    .line 1104
    sget-object v5, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v0, v5, :cond_4

    .line 1106
    if-nez v1, :cond_2

    .line 1107
    const/16 v5, 0x80

    invoke-virtual {p0, v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;

    move-result-object v1

    .line 1111
    :goto_1
    move-object v4, v1

    .line 1112
    .local v4, "sbc":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v2, 0x0

    .line 1113
    .local v2, "permitsRequested":J
    :cond_0
    iget-object v5, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v5, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v5, v4}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    const-wide/16 v6, 0x80

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 1114
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_3

    .line 1115
    return-void

    .line 1109
    .end local v2    # "permitsRequested":J
    .end local v4    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->reset()V

    goto :goto_1

    .line 1116
    .restart local v2    # "permitsRequested":J
    .restart local v4    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    :cond_3
    invoke-virtual {p0, v2, v3}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    move-result-wide v6

    invoke-virtual {v1, p1, v6, v7}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->forEach(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1120
    .end local v2    # "permitsRequested":J
    .end local v4    # "sbc":Ljava/lang/Object;, "TT_CONS;"
    :cond_4
    iget-object v5, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v5, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v5, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 1121
    return-void

    .line 1098
    :cond_5
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    .local p1, "action":Ljava/lang/Object;, "TT_CONS;"
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 1080
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    move-object v0, p0

    .line 1084
    .local v0, "consumer":Ljava/lang/Object;, "TT_CONS;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v2, :cond_2

    .line 1085
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava/util/Spliterator;

    check-cast v1, Ljava/util/Spliterator$OfPrimitive;

    invoke-interface {v1, p0}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1086
    return v4

    .line 1087
    :cond_1
    invoke-virtual {p0, v6, v7}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->acquirePermits(J)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 1088
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->acceptConsumed(Ljava/lang/Object;)V

    .line 1089
    const/4 v1, 0x1

    return v1

    .line 1092
    :cond_2
    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>.OfPrimitive<TT;TT_CONS;TT_BUFF;TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
