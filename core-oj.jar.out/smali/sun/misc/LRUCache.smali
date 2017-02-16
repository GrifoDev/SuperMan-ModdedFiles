.class public abstract Lsun/misc/LRUCache;
.super Ljava/lang/Object;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private oa:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 39
    iput p1, p0, Lsun/misc/LRUCache;->size:I

    .line 38
    return-void
.end method

.method public static moveToFront([Ljava/lang/Object;I)V
    .locals 4
    .param p0, "oa"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 47
    aget-object v1, p0, p1

    .line 48
    .local v1, "ob":Ljava/lang/Object;
    move v0, p1

    .local v0, "j":I
    :goto_0
    if-lez v0, :cond_0

    .line 49
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    :cond_0
    aput-object v1, p0, v3

    .line 46
    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation
.end method

.method public forName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lsun/misc/LRUCache;, "Lsun/misc/LRUCache<TN;TV;>;"
    .local p1, "name":Ljava/lang/Object;, "TN;"
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 55
    iget v2, p0, Lsun/misc/LRUCache;->size:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lsun/misc/LRUCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "ob":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 72
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 73
    return-object v1

    .line 57
    .end local v1    # "ob":Ljava/lang/Object;, "TV;"
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 58
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 59
    .restart local v1    # "ob":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_3

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0, v1, p1}, Lsun/misc/LRUCache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    if-lez v0, :cond_4

    .line 63
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    invoke-static {v2, v0}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    .line 64
    :cond_4
    return-object v1
.end method

.method protected abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TN;)Z"
        }
    .end annotation
.end method
