.class Ljava/util/LinkedHashMap$LinkedHashMapEntry;
.super Ljava/util/HashMap$HashMapEntry;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedHashMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$HashMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/util/LinkedHashMap$LinkedHashMapEntry;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .locals 0
    .param p1, "existingEntry"    # Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->addBefore(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashMapEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$HashMapEntry;)V

    .line 341
    return-void
.end method

.method private addBefore(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashMapEntry<TK;TV;>;"
    .local p1, "existingEntry":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 358
    iget-object v0, p1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 359
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 360
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object p0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 356
    return-void
.end method

.method private remove()V
    .locals 2

    .prologue
    .line 349
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 350
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->before:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 348
    return-void
.end method


# virtual methods
.method recordAccess(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashMapEntry<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    move-object v0, p1

    .line 370
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 371
    .local v0, "lm":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-static {v0}, Ljava/util/LinkedHashMap;->-get0(Ljava/util/LinkedHashMap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget v1, v0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 373
    invoke-direct {p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->remove()V

    .line 374
    invoke-static {v0}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->addBefore(Ljava/util/LinkedHashMap$LinkedHashMapEntry;)V

    .line 369
    :cond_0
    return-void
.end method

.method recordRemoval(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashMapEntry<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->remove()V

    .line 378
    return-void
.end method
