.class public Landroid/graphics/drawable/NinePatchDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mEnableShadow:Z

.field private mMutated:Z

.field private mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

.field private mOpticalInsets:Landroid/graphics/Insets;

.field private mOutlineInsets:Landroid/graphics/Rect;

.field private mOutlineRadius:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetDensity:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mEnableShadow:Z

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4, p5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p2, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p1, p2, p4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mEnableShadow:Z

    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private checkAvailablePixel(Landroid/graphics/Bitmap;II)Z
    .locals 3

    const/4 v2, 0x0

    if-lez p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p2, v0, :cond_2

    if-lez p3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p3, v0, :cond_2

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-gtz v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    return v2
.end method

.method private computeBitmapSize()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v4, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v7

    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v8, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v8, v12, :cond_2

    iget v12, v8, Landroid/graphics/Insets;->left:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iget v12, v8, Landroid/graphics/Insets;->top:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v11

    iget v12, v8, Landroid/graphics/Insets;->right:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v6

    iget v12, v8, Landroid/graphics/Insets;->bottom:I

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    invoke-static {v3, v11, v6, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v9, v12, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    if-nez v12, :cond_1

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->right:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v14, 0x0

    invoke-static {v13, v7, v10, v14}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v13

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v12, v7, v10, v13}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    invoke-virtual {v4}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v5, v2, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v10

    move/from16 v16, v0

    int-to-float v0, v7

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v12 .. v16}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    invoke-static {v12, v7, v10}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    :goto_2
    return-void

    :cond_2
    sget-object v12, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private needsMirroring()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    return-void

    :cond_1
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    or-int/2addr v13, v14

    iput v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v13

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_2

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    xor-int/lit8 v13, v13, 0x1

    iput-boolean v13, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v13, v5, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v7, v8, v12}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v7, v12, v3, v6, v5}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": <nine-patch> requires a valid src attribute"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v13

    if-nez v13, :cond_1

    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ": <nine-patch> requires a valid 9-patch source image"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    new-instance v13, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v14

    invoke-direct {v13, v1, v14}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v6, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    invoke-static {v4}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v13

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    :cond_2
    iget-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    iget v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    iput v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    const/4 v13, 0x5

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_3

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v11, v13}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v13

    iput-object v13, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    if-eqz v10, :cond_4

    iput-object v10, v9, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    :cond_4
    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_0
    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/NinePatchDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x1

    :goto_0
    iget v14, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v15, v9

    iget v0, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v14

    if-nez v14, :cond_8

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    int-to-float v14, v14

    iget-object v15, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v15}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v15

    int-to-float v15, v15

    div-float v11, v14, v15

    iget v14, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v11, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    if-nez v14, :cond_0

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->left:I

    iput v14, v12, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    iput v14, v12, Landroid/graphics/Rect;->top:I

    iget v14, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v12, Landroid/graphics/Rect;->right:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v12, Landroid/graphics/Rect;->bottom:I

    move-object v1, v12

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    move-result v6

    if-eqz v6, :cond_2

    if-ltz v10, :cond_9

    :goto_3
    iget v14, v1, Landroid/graphics/Rect;->left:I

    iget v15, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v3, v14, v15

    iget v14, v1, Landroid/graphics/Rect;->top:I

    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v4, v14, v15

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v14, v13, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v1, v15}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-ltz v10, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_4
    if-ltz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v9, -0x1

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    goto :goto_3
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/NinePatch;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->left:I

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v2, v2, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const/16 v17, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    move-result-object v17

    :cond_1
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_6

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/drawable/NinePatchDrawable;->mEnableShadow:Z

    if-nez v2, :cond_5

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    float-to-double v0, v2

    move-wide/from16 v20, v0

    if-eqz v8, :cond_5

    const-wide/16 v2, 0x0

    cmpl-double v2, v20, v2

    if-lez v2, :cond_5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide v2, 0x4046800000000000L    # 45.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v19, v2, 0x1

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v22, v2, 0x1

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v23, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v14, v2, -0x2

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v16, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v15, v2, -0x2

    move/from16 v0, v19

    int-to-long v2, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v10, v2

    move/from16 v0, v22

    int-to-long v2, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;->checkAvailablePixel(Landroid/graphics/Bitmap;II)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_2
    int-to-long v2, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v10, v2

    move/from16 v0, v22

    int-to-long v2, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;->checkAvailablePixel(Landroid/graphics/Bitmap;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_3
    int-to-long v2, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v10, v2

    int-to-long v2, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;->checkAvailablePixel(Landroid/graphics/Bitmap;II)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_4
    move/from16 v0, v19

    int-to-long v2, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v10, v2

    int-to-long v2, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v11}, Landroid/graphics/drawable/NinePatchDrawable;->checkAvailablePixel(Landroid/graphics/Bitmap;II)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_5
    iget v2, v9, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v2, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v2, v5

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v2, v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/NinePatchDrawable;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void

    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    or-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v1, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-boolean v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-boolean p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setEnableShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mEnableShadow:Z

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0xa0

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    return-void
.end method
