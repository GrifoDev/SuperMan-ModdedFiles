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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iput p1, p0, Lsun/misc/LRUCache;->size:I

    return-void
.end method

.method public static moveToFront([Ljava/lang/Object;I)V
    .locals 4

    const/4 v3, 0x0

    aget-object v1, p0, p1

    move v0, p1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aput-object v1, p0, v3

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

    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    if-nez v2, :cond_1

    iget v2, p0, Lsun/misc/LRUCache;->size:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lsun/misc/LRUCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    iget-object v3, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    aget-object v1, v2, v0

    if-nez v1, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p1}, Lsun/misc/LRUCache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v0, :cond_4

    iget-object v2, p0, Lsun/misc/LRUCache;->oa:[Ljava/lang/Object;

    invoke-static {v2, v0}, Lsun/misc/LRUCache;->moveToFront([Ljava/lang/Object;I)V

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
