.class final Ljava/util/stream/Stream$1;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Stream;->iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$f:Ljava/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)V
    .locals 1

    iput-object p1, p0, Ljava/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/stream/Streams;->NONE:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    sget-object v1, Ljava/util/stream/Streams;->NONE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    iget-object v1, p0, Ljava/util/stream/Stream$1;->t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
