.class final Ljava/util/ResourceBundle$LoaderReference;
.super Ljava/lang/ref/WeakReference;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/util/ResourceBundle$CacheKeyReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoaderReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/ClassLoader;",
        ">;",
        "Ljava/util/ResourceBundle$CacheKeyReference;"
    }
.end annotation


# instance fields
.field private cacheKey:Ljava/util/ResourceBundle$CacheKey;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Ljava/util/ResourceBundle$LoaderReference;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/util/ResourceBundle$CacheKey;
    .locals 1

    iget-object v0, p0, Ljava/util/ResourceBundle$LoaderReference;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    return-object v0
.end method
