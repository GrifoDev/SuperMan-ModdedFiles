.class public interface abstract Ljava/util/stream/Sink$OfLong;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava/util/stream/Sink;
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Sink",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(J)V
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 2
    .param p1, "i"    # Ljava/lang/Long;

    .prologue
    .line 213
    .local p0, "this":Ljava/util/stream/Sink$OfLong;, "Ljava/util/stream/Sink<TT;>.OfLong;"
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling Sink.OfLong.accept(Long)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/stream/Sink$OfLong;->accept(J)V

    .line 212
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 212
    .local p0, "this":Ljava/util/stream/Sink$OfLong;, "Ljava/util/stream/Sink<TT;>.OfLong;"
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method
