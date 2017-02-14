.class public Lcom/android/launcher2/BadgeCache$CacheKey;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BadgeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheKey"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public user:Lcom/android/launcher2/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/launcher2/BadgeCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/BadgeCache$CacheKey;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/BadgeCache$CacheKey;

    iget-object v2, v0, Lcom/android/launcher2/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher2/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BadgeCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher2/BadgeCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/BadgeCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/android/launcher2/BadgeCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/BadgeCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v0}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v0

    goto :goto_0
.end method
