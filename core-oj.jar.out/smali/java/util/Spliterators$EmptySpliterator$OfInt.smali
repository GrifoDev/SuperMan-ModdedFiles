.class final Ljava/util/Spliterators$EmptySpliterator$OfInt;
.super Ljava/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators$EmptySpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$EmptySpliterator",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 870
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfInt;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfInt;"
    invoke-direct {p0}, Ljava/util/Spliterators$EmptySpliterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 849
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfInt;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    .line 844
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfInt;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfInt;"
    invoke-virtual {p0, p1}, Ljava/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    .prologue
    .line 840
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfInt;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 840
    .local p0, "this":Ljava/util/Spliterators$EmptySpliterator$OfInt;, "Ljava/util/Spliterators$EmptySpliterator<TT;TS;TC;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/Spliterators$EmptySpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
