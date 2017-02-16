.class public interface abstract Ljava/util/Spliterator$OfDouble;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;,
        Ljava/util/Spliterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_Spliterator$OfDouble-mthref-0(Ljava/util/function/Consumer;D)V
    .locals 1

    .prologue
    .line 804
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic -java_util_Spliterator$OfDouble-mthref-1(Ljava/util/function/Consumer;D)V
    .locals 1

    .prologue
    .line 828
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
    .line 781
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

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
    .line 821
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 822
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 820
    :goto_0
    return-void

    .line 825
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 827
    const-string/jumbo v1, "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)"

    .line 826
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 828
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/Spliterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/Spliterator$OfDouble$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .prologue
    .line 782
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 778
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 798
    check-cast p1, Ljava/util/function/DoubleConsumer;

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0

    .line 801
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 803
    const-string/jumbo v1, "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)"

    .line 802
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 804
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/Spliterator$OfDouble$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    return v0
.end method

.method public abstract tryAdvance(Ljava/util/function/DoubleConsumer;)Z
.end method

.method public abstract trySplit()Ljava/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 775
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 775
    .local p0, "this":Ljava/util/Spliterator$OfDouble;, "Ljava/util/Spliterator<TT;>.OfDouble;"
    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
