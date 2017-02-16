.class Ljava/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:D

.field final synthetic val$spliterator:Ljava/util/Spliterator$OfDouble;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfDouble;)V
    .locals 1
    .param p1, "val$spliterator"    # Ljava/util/Spliterator$OfDouble;

    .prologue
    .line 803
    iput-object p1, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 803
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .prologue
    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 810
    iput-wide p1, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    .line 808
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 259
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 815
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Ljava/util/Spliterators$4Adapter;->val$spliterator:Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    .line 817
    :cond_0
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public nextDouble()D
    .locals 2

    .prologue
    .line 822
    iget-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$4Adapter;->valueReady:Z

    .line 826
    iget-wide v0, p0, Ljava/util/Spliterators$4Adapter;->nextElement:D

    return-wide v0

    .line 823
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
