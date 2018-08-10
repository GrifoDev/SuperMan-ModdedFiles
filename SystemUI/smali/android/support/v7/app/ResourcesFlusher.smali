.class Landroid/support/v7/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flush(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)Z

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)Z

    move-result v0

    return v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)Z
    .locals 7
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v6, 0x1

    sget-boolean v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v4, :cond_0

    :try_start_0
    const-class v4, Landroid/content/res/Resources;

    const-string/jumbo v5, "mDrawableCache"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    :cond_0
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :try_start_1
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return v6

    :catch_0
    move-exception v3

    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)Z
    .locals 7
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v4, :cond_0

    :try_start_0
    const-class v4, Landroid/content/res/Resources;

    const-string/jumbo v5, "mDrawableCache"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v6, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    :cond_0
    const/4 v0, 0x0

    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    :try_start_1
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "ResourcesFlusher"

    const-string/jumbo v5, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)Z

    move-result v3

    :cond_3
    return v3
.end method

.method private static flushNougats(Landroid/content/res/Resources;)Z
    .locals 8
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x1

    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    if-nez v5, :cond_0

    :try_start_0
    const-class v5, Landroid/content/res/Resources;

    const-string/jumbo v6, "mResourcesImpl"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    :cond_0
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_1

    return v4

    :catch_0
    move-exception v2

    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_1
    if-nez v3, :cond_2

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v5, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "mDrawableCache"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    :cond_3
    const/4 v0, 0x0

    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_4

    :try_start_3
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)Z

    move-result v4

    :cond_5
    return v4

    :catch_2
    move-exception v2

    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v1

    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)Z
    .locals 9
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    if-nez v5, :cond_0

    :try_start_0
    const-string/jumbo v5, "android.content.res.ThemedResourceCache"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    :cond_0
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v5, :cond_1

    return v8

    :catch_0
    move-exception v1

    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not find ThemedResourceCache class"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    sget-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v5, :cond_2

    :try_start_1
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const-string/jumbo v6, "mUnthemedEntries"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sput-boolean v7, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    :cond_2
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_3

    return v8

    :catch_1
    move-exception v3

    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :try_start_2
    sget-object v5, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/util/LongSparseArray;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    return v7

    :catch_2
    move-exception v2

    const-string/jumbo v5, "ResourcesFlusher"

    const-string/jumbo v6, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    return v8
.end method
