.class public interface abstract Ljava/util/Spliterator$OfLong;
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
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterator$OfLong$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;,
        Ljava/util/Spliterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "Ljava/util/Spliterator$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_Spliterator$OfLong-mthref-0(Ljava/util/function/Consumer;J)V
    .locals 1

    .prologue
    .line 740
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic -java_util_Spliterator$OfLong-mthref-1(Ljava/util/function/Consumer;J)V
    .locals 1

    .prologue
    .line 763
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 717
    .local p0, "this":Ljava/util/Spliterator$OfLong;, "Ljava/util/Spliterator<TT;>.OfLong;"
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "this":Ljava/util/Spliterator$OfLong;, "Ljava/util/Spliterator<TT;>.OfLong;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 757
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 755
    :goto_0
    return-void

    .line 760
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    :cond_0
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 762
    const-string/jumbo v1, "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)"

    .line 761
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 763
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/Spliterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/Spliterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 718
    .local p0, "this":Ljava/util/Spliterator$OfLong;, "Ljava/util/Spliterator<TT;>.OfLong;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 714
    .local p0, "this":Ljava/util/Spliterator$OfLong;, "Ljava/util/Spliterator<TT;>.OfLong;"
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

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
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "this":Ljava/util/Spliterator$OfLong;, "Ljava/util/Spliterator<TT;>.OfLong;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 734
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0

    .line 737
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    :cond_0
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 739
    const-string/jumbo v1, "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)"

    .line 738
    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 740
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/Spliterator$OfLong$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/Spliterator$OfLong$-boolean_tryAdvance_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public abstract tryAdvance(Ljava/util/function/LongConsumer;)Z
.end method

.method public abstract trySplit()Ljava/util/Spliterator$OfLong;
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 711
    .local p0, "this":Ljava/util/Spliterator$OfLong;, "Ljava/util/Spliterator<TT;>.OfLong;"
    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 711
    .local p0, "this":Ljava/util/Spliterator$OfLong;, "Ljava/util/Spliterator<TT;>.OfLong;"
    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
