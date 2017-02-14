.class Ljava/util/stream/Collectors$CollectorImpl;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector",
        "<TT;TA;TR;>;"
    }
.end annotation


# instance fields
.field private final accumulator:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final combiner:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final finisher:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<TA;TR;>;"
        }
    .end annotation
.end field

.field private final supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TA;>;",
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TA;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Collectors;->-wrap0()Ljava/util/function/Function;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TA;>;",
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;",
            "Ljava/util/function/BinaryOperator",
            "<TA;>;",
            "Ljava/util/function/Function",
            "<TA;TR;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljava/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Ljava/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    iput-object p4, p0, Ljava/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    iput-object p5, p0, Ljava/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer",
            "<TA;TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    return-object v0
.end method

.method public finisher()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function",
            "<TA;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    return-object v0
.end method
