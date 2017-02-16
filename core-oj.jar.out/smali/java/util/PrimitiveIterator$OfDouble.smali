.class public interface abstract Ljava/util/PrimitiveIterator$OfDouble;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava/util/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PrimitiveIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PrimitiveIterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/PrimitiveIterator",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_PrimitiveIterator$OfDouble-mthref-0(Ljava/util/function/Consumer;D)V
    .locals 1

    .prologue
    .line 298
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 259
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 291
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 289
    :goto_0
    return-void

    .line 295
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 298
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/PrimitiveIterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 260
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :goto_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 273
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfDouble.nextLong()"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    .local p0, "this":Ljava/util/PrimitiveIterator$OfDouble;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfDouble;"
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public abstract nextDouble()D
.end method
