.class public interface abstract Ljava/util/PrimitiveIterator$OfLong;
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
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PrimitiveIterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/PrimitiveIterator",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_PrimitiveIterator$OfLong-mthref-0(Ljava/util/function/Consumer;J)V
    .locals 1

    .prologue
    .line 224
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
    .line 186
    .local p0, "this":Ljava/util/PrimitiveIterator$OfLong;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfLong;"
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

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
    .line 216
    .local p0, "this":Ljava/util/PrimitiveIterator$OfLong;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfLong;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 215
    :goto_0
    return-void

    .line 221
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Long;>;"
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 224
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/PrimitiveIterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;

    invoke-direct {v0, p1}, Ljava/util/PrimitiveIterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 187
    .local p0, "this":Ljava/util/PrimitiveIterator$OfLong;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfLong;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 200
    .local p0, "this":Ljava/util/PrimitiveIterator$OfLong;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfLong;"
    sget-boolean v0, Ljava/util/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "{0} calling PrimitiveIterator.OfLong.nextLong()"

    invoke-static {v0, v1}, Ljava/util/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Ljava/util/PrimitiveIterator$OfLong;, "Ljava/util/PrimitiveIterator<TT;TT_CONS;>.OfLong;"
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public abstract nextLong()J
.end method
