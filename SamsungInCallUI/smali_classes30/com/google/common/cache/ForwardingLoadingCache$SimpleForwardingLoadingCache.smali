.class public abstract Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;
.super Lcom/google/common/cache/ForwardingLoadingCache;
.source "ForwardingLoadingCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/ForwardingLoadingCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingLoadingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/ForwardingLoadingCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/cache/LoadingCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LoadingCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    .local p1, "delegate":Lcom/google/common/cache/LoadingCache;, "Lcom/google/common/cache/LoadingCache<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/cache/ForwardingLoadingCache;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LoadingCache;

    iput-object v0, p0, Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate:Lcom/google/common/cache/LoadingCache;

    .line 81
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/google/common/cache/Cache;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Lcom/google/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LoadingCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate:Lcom/google/common/cache/LoadingCache;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;, "Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;->delegate()Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method
