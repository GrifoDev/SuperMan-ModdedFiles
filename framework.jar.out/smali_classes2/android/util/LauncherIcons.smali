.class public final Landroid/util/LauncherIcons;
.super Ljava/lang/Object;
.source "LauncherIcons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LauncherIcons$ShadowDrawable;
    }
.end annotation


# static fields
.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final ICON_SIZE_BLUR_FACTOR:F = 0.010416667f

.field private static final ICON_SIZE_KEY_SHADOW_DELTA_FACTOR:F = 0.020833334f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d


# instance fields
.field private final mIconSize:I

.field private final mRes:Landroid/content/res/Resources;

.field private final mShadowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/util/LauncherIcons;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/util/LauncherIcons;->mRes:Landroid/content/res/Resources;

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/util/LauncherIcons;->mIconSize:I

    return-void
.end method

.method private getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget v7, p0, Landroid/util/LauncherIcons;->mIconSize:I

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v8, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v8

    return-object v5

    :cond_0
    monitor-exit v8

    invoke-virtual {p1, v10, v10, v6, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    int-to-float v7, v6

    const v8, 0x3c2aaaab

    mul-float v1, v8, v7

    int-to-float v7, v6

    const v8, 0x3caaaaab

    mul-float v3, v8, v7

    int-to-float v7, v6

    mul-float v8, v11, v1

    add-float/2addr v7, v8

    add-float/2addr v7, v3

    float-to-int v0, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-float v7, v3, v11

    add-float/2addr v7, v1

    invoke-virtual {v2, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x1e000000

    invoke-virtual {v4, v1, v9, v9, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x3d000000    # 0.03125f

    invoke-virtual {v4, v1, v9, v9, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Landroid/util/LauncherIcons;->mShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    return-object v5

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method


# virtual methods
.method public getBadgeDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10803d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v5, 0x10803cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez p1, :cond_0

    new-array v3, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v6

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    :goto_0
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v5

    :cond_0
    const/4 v5, 0x4

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v6

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    goto :goto_0
.end method

.method public wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    instance-of v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0, v1}, Landroid/util/LauncherIcons;->getShadowBitmap(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/util/LauncherIcons$ShadowDrawable;

    invoke-direct {v1, v0, p1}, Landroid/util/LauncherIcons$ShadowDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
