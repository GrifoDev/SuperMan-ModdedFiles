.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$1;,
        Landroid/app/ResourcesManager$ActivityResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_OVERLAY_THEMES_ENABLED:Z = true

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final AFW_ID:I

.field private final DEBUG_THEMES:Z

.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustedDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private prevMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ResourcesManager$1;

    invoke-direct {v0}, Landroid/app/ResourcesManager$1;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/app/ResourcesManager;->DEBUG_THEMES:Z

    const/16 v0, 0xa

    iput v0, p0, Landroid/app/ResourcesManager;->AFW_ID:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    iput v1, p0, Landroid/app/ResourcesManager;->prevMode:I

    return-void
.end method

.method private applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z
    .locals 18

    :try_start_0
    const-string/jumbo v15, "ResourcesManager#applyConfigurationToResourcesLocked"

    const-wide/16 v16, 0x2000

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_0

    if-nez p2, :cond_0

    const/4 v15, 0x0

    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v15

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_2

    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    or-int/lit16 v2, v2, 0xd00

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/app/ResourcesManager;->updateResourcesForOpenThemeChange(Landroid/content/res/Configuration;I)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    :goto_0
    if-ltz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesImpl;

    :goto_1
    if-eqz v12, :cond_b

    iget v6, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v6, :cond_9

    const/4 v10, 0x1

    :goto_2
    move-object v7, v5

    invoke-virtual {v11}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v8

    if-eqz v10, :cond_3

    if-eqz v8, :cond_a

    :cond_3
    if-nez v13, :cond_4

    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {v12}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    if-eqz p2, :cond_5

    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4, v3}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    move-object v3, v4

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v7

    if-nez v10, :cond_6

    invoke-static {v7, v13}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_6
    if-eqz v8, :cond_7

    iget-object v15, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v15}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v7, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_8
    const/4 v12, 0x0

    goto :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v5, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v15

    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v15

    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    move-object/from16 v0, p1

    iget v15, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v15, v15, 0xf

    move-object/from16 v0, p0

    iput v15, v0, Landroid/app/ResourcesManager;->prevMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_d

    const/4 v15, 0x1

    :goto_4
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v15

    :cond_d
    const/4 v15, 0x0

    goto :goto_4
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/content/res/Configuration;->setAppBounds(IIII)V

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    return-void

    :cond_0
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method private cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V
    .locals 2

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    :cond_0
    return-void
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Landroid/view/DisplayAdjustments;

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v5}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v5}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    iget v5, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {p0, v5, v2}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v4, Landroid/content/res/ResourcesImpl;

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    return-object v4
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    :goto_1
    if-eqz v1, :cond_1

    if-ne p1, v1, :cond_1

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    return-object v4

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Z)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Z)Landroid/content/res/ResourcesImpl;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .locals 4

    iget v3, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-nez v2, :cond_1

    invoke-static {p2, v0}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_1
.end method

.method private getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    monitor-exit p0

    return-object v6

    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ResourcesManager$ActivityResources;

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 24

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v15

    iget-object v5, v15, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v15, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    new-instance v22, Landroid/content/res/Configuration;

    iget-object v5, v15, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_2
    monitor-exit p0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v20

    if-nez v20, :cond_3

    const/4 v5, 0x0

    return-object v5

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3
    monitor-enter p0

    const/4 v5, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Z)Landroid/content/res/ResourcesImpl;

    move-result-object v16

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v23, Landroid/util/ArrayMap;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArrayMap;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_6

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v8, v6

    :goto_0
    if-ge v5, v8, :cond_5

    aget-object v21, v6, v5

    if-eqz v21, :cond_4

    const-string/jumbo v9, "/data/overlays/currentstyle"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getOpenThemeOverlays()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    :cond_6
    new-instance v4, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, p2

    iget v9, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v13, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    move-object/from16 v0, p2

    iget-boolean v14, v0, Landroid/content/res/ResourcesKey;->mIsDesktopMode:Z

    invoke-direct/range {v4 .. v14}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;IZ)V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    :goto_2
    if-eqz p1, :cond_a

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v19

    :goto_3
    monitor-exit p0

    return-object v19

    :cond_7
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    move-object/from16 v20, v17

    goto :goto_1

    :cond_8
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    move-object/from16 v20, v16

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_a
    :try_start_4
    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v19

    goto :goto_3
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 7

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    if-ne v5, p3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Landroid/content/res/CompatResources;

    invoke-direct {v3, p2}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_1
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_2
    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, p2}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_1
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 6

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-ne v4, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->needsCompatResources()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/res/CompatResources;

    invoke-direct {v2, p1}, Landroid/content/res/CompatResources;-><init>(Ljava/lang/ClassLoader;)V

    :goto_1
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_2
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_1
.end method

.method private isDesktopMode()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private isDesktopModeEnteringOrExiting(Landroid/content/res/Configuration;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    and-int/lit16 v2, p2, 0x200

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/app/ResourcesManager;->prevMode:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/app/ResourcesManager;->prevMode:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_4

    iget-object v9, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v9, "ResourcesManager"

    const-string/jumbo v10, "failed to redirect ResourcesImpl"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_2

    :cond_4
    iget-object v9, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_5

    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    :goto_4
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    if-eqz v4, :cond_6

    invoke-direct {p0, v4}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-nez v3, :cond_8

    const-string/jumbo v9, "ResourcesManager"

    const-string/jumbo v10, "failed to redirect ResourcesImpl2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    goto :goto_5

    :cond_9
    return-void
.end method

.method private updateResourcesForOpenThemeChange(Landroid/content/res/Configuration;I)V
    .locals 21

    const/high16 v2, 0x10000

    and-int v2, v2, p2

    if-eqz v2, :cond_4

    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v16

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/res/ResourcesImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    move-object/from16 v0, v17

    iget-boolean v2, v0, Landroid/content/res/ResourcesKey;->mIsDesktopMode:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :goto_1
    if-eqz v15, :cond_1

    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    if-eqz v5, :cond_0

    array-length v2, v5

    if-nez v2, :cond_2

    :cond_0
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "ResourcesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateResourcesForOpenThemeChange adding to updatedResourceKeys for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and overlays = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget v7, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v11, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    move-object/from16 v0, v17

    iget-boolean v12, v0, Landroid/content/res/ResourcesKey;->mIsDesktopMode:Z

    invoke-direct/range {v2 .. v12}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;IZ)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    monitor-enter p0

    :try_start_0
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/ref/WeakReference;

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesImpl;

    :goto_1
    if-eqz v14, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v2, v2

    :goto_2
    add-int/lit8 v17, v2, 0x1

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v2, v17, -0x1

    aput-object p2, v6, v2

    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    move-object/from16 v0, v16

    iget v7, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v11, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    move-object/from16 v0, v16

    iget-boolean v12, v0, Landroid/content/res/ResourcesKey;->mIsDesktopMode:Z

    invoke-direct/range {v2 .. v12}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;IZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    move-result v0

    return v0
.end method

.method final applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 19

    :try_start_0
    const-string/jumbo v2, "ResourcesManager#applyNewResourceDirsLocked"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v17, Landroid/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/ref/WeakReference;

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/ResourcesImpl;

    :goto_1
    if-eqz v14, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, v16

    iget v7, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v11, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    move-object/from16 v0, v16

    iget-boolean v12, v0, Landroid/content/res/ResourcesKey;->mIsDesktopMode:Z

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v12}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;IZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v2

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add split asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget v5, p1, Landroid/content/res/ResourcesKey;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    iget v5, p1, Landroid/content/res/ResourcesKey;->mUserId:I

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    iget-boolean v5, p1, Landroid/content/res/ResourcesKey;->mIsDesktopMode:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_5

    aget-object v2, v5, v4

    const-string/jumbo v7, ".apk"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "ResourcesManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Asset path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' does not exist or contains no resources."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 13

    :try_start_0
    const-string/jumbo v3, "ResourcesManager#createBaseActivityResources"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Landroid/content/res/ResourcesKey;

    if-eqz p7, :cond_0

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_0
    invoke-direct {p0}, Landroid/app/ResourcesManager;->isDesktopMode()Z

    move-result v12

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v2 .. v12}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;IZ)V

    if-eqz p9, :cond_1

    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    const/4 v3, 0x0

    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-virtual {p0, p1, v0, v1, v3}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p9

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public final forceApplyConfigurationToResourcesLocked()V
    .locals 3

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    return-void
.end method

.method public getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .locals 12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 13

    :try_start_0
    const-string/jumbo v3, "ResourcesManager#getResources"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Landroid/content/res/ResourcesKey;

    if-eqz p7, :cond_0

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_0
    invoke-direct {p0}, Landroid/app/ResourcesManager;->isDesktopMode()Z

    move-result v12

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v2 .. v12}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;IZ)V

    if-eqz p9, :cond_1

    :goto_1
    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p9

    goto :goto_1

    :catchall_0
    move-exception v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesKey;

    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalidated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " asset managers that referenced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_2

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V
    .locals 23

    :try_start_0
    const-string/jumbo v3, "ResourcesManager#updateResourcesForActivity"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v14

    iget-object v3, v14, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    xor-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_3
    new-instance v16, Landroid/content/res/Configuration;

    iget-object v3, v14, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_2

    iget-object v3, v14, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :goto_0
    iget-object v3, v14, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    xor-int/lit8 v13, v3, 0x1

    iget-object v3, v14, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_8

    iget-object v3, v14, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/res/Resources;

    if-nez v20, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v14, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->unset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_3
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v17

    if-nez v17, :cond_4

    const-string/jumbo v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_6
    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/content/res/ResourcesKey;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v11, v0, Landroid/content/res/ResourcesKey;->mUserId:I

    move-object/from16 v0, v17

    iget-boolean v12, v0, Landroid/content/res/ResourcesKey;->mIsDesktopMode:Z

    move/from16 v7, p3

    invoke-direct/range {v2 .. v12}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v21

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v21, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :cond_8
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
