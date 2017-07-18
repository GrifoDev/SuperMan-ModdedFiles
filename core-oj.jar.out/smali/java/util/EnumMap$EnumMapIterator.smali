.class abstract Ljava/util/EnumMap$EnumMapIterator;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EnumMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field lastReturnedIndex:I

.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    iput-object p1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EnumMapIterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method private checkLastReturnedIndex()V
    .locals 1

    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    :goto_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->index:I

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/EnumMap$EnumMapIterator;->checkLastReturnedIndex()V

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    aput-object v2, v0, v1

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-set0(Ljava/util/EnumMap;I)I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->lastReturnedIndex:I

    return-void
.end method
