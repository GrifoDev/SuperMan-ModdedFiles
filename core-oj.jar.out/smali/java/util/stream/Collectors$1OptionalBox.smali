.class Ljava/util/stream/Collectors$1OptionalBox;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionalBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field present:Z

.field final synthetic val$op:Ljava/util/function/BinaryOperator;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 1

    iput-object p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    goto :goto_0
.end method
