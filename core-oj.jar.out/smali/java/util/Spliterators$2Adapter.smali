.class Ljava/util/Spliterators$2Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:I

.field final synthetic val$spliterator:Ljava/util/Spliterator$OfInt;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfInt;)V
    .locals 1
    .param p1, "val$spliterator"    # Ljava/util/Spliterator$OfInt;

    .prologue
    .line 713
    iput-object p1, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 713
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 720
    iput p1, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    .line 718
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Ljava/util/function/IntConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Ljava/util/Spliterators$2Adapter;->val$spliterator:Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    .line 727
    :cond_0
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Spliterators$2Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Spliterators$2Adapter;->valueReady:Z

    .line 736
    iget v0, p0, Ljava/util/Spliterators$2Adapter;->nextElement:I

    return v0

    .line 733
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
