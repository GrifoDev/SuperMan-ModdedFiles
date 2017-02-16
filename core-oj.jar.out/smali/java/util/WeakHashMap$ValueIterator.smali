.class Ljava/util/WeakHashMap$ValueIterator;
.super Ljava/util/WeakHashMap$HashIterator;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 0

    .prologue
    .line 814
    .local p0, "this":Ljava/util/WeakHashMap$ValueIterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueIterator;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$ValueIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$ValueIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/WeakHashMap;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$ValueIterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$ValueIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 816
    .local p0, "this":Ljava/util/WeakHashMap$ValueIterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueIterator;->nextEntry()Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
