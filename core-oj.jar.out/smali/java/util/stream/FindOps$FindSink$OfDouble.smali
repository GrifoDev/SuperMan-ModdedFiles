.class final Ljava/util/stream/FindOps$FindSink$OfDouble;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/OptionalDouble;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 233
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Double;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 177
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfDouble;->get()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/OptionalDouble;
    .locals 2

    .prologue
    .line 238
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfDouble;, "Ljava/util/stream/FindOps$FindSink<TT;TO;>.OfDouble;"
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink;->hasValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
