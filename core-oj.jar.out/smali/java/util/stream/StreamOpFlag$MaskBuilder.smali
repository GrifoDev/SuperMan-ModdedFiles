.class Ljava/util/stream/StreamOpFlag$MaskBuilder;
.super Ljava/lang/Object;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamOpFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskBuilder"
.end annotation


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    .line 391
    return-void
.end method


# virtual methods
.method build()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 413
    invoke-static {}, Ljava/util/stream/StreamOpFlag$Type;->values()[Ljava/util/stream/StreamOpFlag$Type;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 414
    .local v0, "t":Ljava/util/stream/StreamOpFlag$Type;
    iget-object v5, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "t":Ljava/util/stream/StreamOpFlag$Type;
    :cond_0
    iget-object v1, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    return-object v1
.end method

.method clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .prologue
    .line 405
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;
    .param p2, "i"    # Ljava/lang/Integer;

    .prologue
    .line 396
    iget-object v0, p0, Ljava/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object p0
.end method

.method set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .prologue
    .line 401
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .prologue
    .line 409
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->mask(Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method
