.class Ljava/util/WeakHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
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
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Values;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

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

    new-instance v0, Ljava/util/WeakHashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$ValueIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$ValueIterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/WeakHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    return-object v0
.end method
