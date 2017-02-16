.class public interface abstract Ljava/util/stream/Sink$OfInt;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/stream/Sink;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(I)V
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "i"    # Ljava/lang/Integer;

    .prologue
    .line 196
    .local p0, "this":Ljava/util/stream/Sink$OfInt;, "Ljava/util/stream/Sink<TT;>.OfInt;"
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling Sink.OfInt.accept(Integer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/stream/Sink$OfInt;->accept(I)V

    .line 195
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 195
    .local p0, "this":Ljava/util/stream/Sink$OfInt;, "Ljava/util/stream/Sink<TT;>.OfInt;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method
