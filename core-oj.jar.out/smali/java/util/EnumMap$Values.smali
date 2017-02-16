.class Ljava/util/EnumMap$Values;
.super Ljava/util/AbstractCollection;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 0

    .prologue
    .line 427
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$Values;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    .prologue
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 450
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 449
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 435
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/EnumMap$ValueIterator;

    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$ValueIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 438
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1, p1}, Ljava/util/EnumMap;->-wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 441
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 443
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/util/EnumMap;->-set0(Ljava/util/EnumMap;I)I

    .line 444
    const/4 v1, 0x1

    return v1

    .line 440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 432
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    move-result v0

    return v0
.end method
