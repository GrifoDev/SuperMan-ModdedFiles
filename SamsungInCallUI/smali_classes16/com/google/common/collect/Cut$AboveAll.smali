.class final Lcom/google/common/collect/Cut$AboveAll;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AboveAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Cut",
        "<",
        "Ljava/lang/Comparable",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/google/common/collect/Cut$AboveAll;

    invoke-direct {v0}, Lcom/google/common/collect/Cut$AboveAll;-><init>()V

    sput-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 216
    return-void
.end method

.method static synthetic access$100()Lcom/google/common/collect/Cut$AboveAll;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/google/common/collect/Cut$AboveAll;->INSTANCE:Lcom/google/common/collect/Cut$AboveAll;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/common/collect/Cut;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "o":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<Ljava/lang/Comparable<*>;>;"
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 211
    check-cast p1, Lcom/google/common/collect/Cut;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$AboveAll;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 257
    const-string v0, "+\u221e)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    return-void
.end method

.method endpoint()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greatestValueBelow(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "value":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method leastValueAbove(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Ljava/lang/Comparable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "+\u221e"

    return-object v0
.end method

.method typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 2
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;
    .locals 1
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;)",
            "Lcom/google/common/collect/Cut",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<Ljava/lang/Comparable<*>;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
