.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;
    }
.end annotation


# static fields
.field private static final synthetic -android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I = null

.field private static final DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field private static final RADIUS_TYPE_FRACTION:I = 0x1

.field private static final RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final RADIUS_TYPE_PIXELS:I = 0x0

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientIsDirty:Z

.field private mGradientRadius:F

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method private static synthetic -getandroid-graphics-drawable-GradientDrawable$OrientationSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->-android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->-android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/graphics/drawable/GradientDrawable$Orientation;->values()[Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Landroid/graphics/drawable/GradientDrawable;->-android-graphics-drawable-GradientDrawable$OrientationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 5

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_0
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    sget-object v4, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private buildPathIfDirty()V
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    :cond_0
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 14

    const/4 v13, -0x1

    const/high16 v12, 0x43b40000    # 360.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v8, :cond_1

    iget-boolean v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    return-object v8

    :cond_1
    iput-boolean v10, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iget-boolean v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    const v9, 0x461c4000    # 10000.0f

    div-float v4, v8, v9

    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float v6, v8, v11

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v7, v8, v11

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-eq v8, v13, :cond_3

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v8

    :goto_1
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v13, :cond_4

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v2, v8

    :goto_2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sub-float v8, v6, v2

    sub-float v9, v7, v2

    invoke-virtual {v1, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    neg-float v8, v5

    neg-float v9, v5

    invoke-virtual {v0, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v8, :cond_5

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    :goto_3
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    cmpg-float v8, v4, v12

    if-gez v8, :cond_6

    const/high16 v8, -0x3c4c0000    # -360.0f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    add-float v8, v6, v2

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v8, v6, v2

    add-float/2addr v8, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    neg-float v8, v4

    invoke-virtual {v3, v1, v4, v8, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :goto_4
    return-object v3

    :cond_2
    const/high16 v4, 0x43b40000    # 360.0f

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float v5, v8, v9

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float v2, v8, v9

    goto :goto_2

    :cond_5
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    goto :goto_3

    :cond_6
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_4
.end method

.method private ensureValidRect()Z
    .locals 27

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v19, v2, v8

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float v8, v8, v19

    iget v9, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v9, v9, v19

    iget v10, v15, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float v10, v10, v19

    iget v12, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float v12, v12, v19

    invoke-virtual {v2, v8, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-nez v2, :cond_4

    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000    # 10000.0f

    div-float v21, v2, v8

    :goto_0
    invoke-static {}, Landroid/graphics/drawable/GradientDrawable;->-getandroid-graphics-drawable-GradientDrawable$OrientationSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v21, v2

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v21, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    :goto_2
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_3
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move v5, v3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v21, v2

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v21, v2

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v21, v2

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v21, v2

    move v6, v4

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v21, v2

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v21, v2

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v21, v2

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v21, v2

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v21, v2

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v21, v2

    move v6, v4

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v8, v9

    add-float v3, v2, v8

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v8, v9

    add-float v4, v2, v8

    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_a

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-ltz v2, :cond_8

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    int-to-float v0, v2

    move/from16 v26, v0

    :goto_3
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-ltz v2, :cond_9

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    int-to-float v0, v2

    move/from16 v17, v0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v11, v2

    :cond_5
    :goto_5
    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000    # 10000.0f

    div-float/2addr v2, v8

    mul-float/2addr v11, v2

    :cond_6
    move-object/from16 v0, p0

    iput v11, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    const/4 v2, 0x0

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_7

    const v11, 0x3a83126f    # 0.001f

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    move v9, v3

    move v10, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v26

    goto :goto_3

    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v17

    goto :goto_4

    :cond_a
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v11, v2

    goto :goto_5

    :cond_b
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v8, v9

    add-float v3, v2, v8

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v8, v9

    add-float v4, v2, v8

    move-object/from16 v24, v7

    const/16 v25, 0x0

    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object/from16 v24, v0

    array-length v0, v7

    move/from16 v20, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, v24

    array-length v2, v0

    add-int/lit8 v8, v20, 0x1

    if-eq v2, v8, :cond_d

    :cond_c
    add-int/lit8 v2, v20, 0x1

    new-array v0, v2, [I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    :cond_d
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v7, v2, v0, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v2, v20, -0x1

    aget v2, v7, v2

    aput v2, v24, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object/from16 v25, v0

    add-int/lit8 v2, v20, -0x1

    int-to-float v2, v2

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v16, v8, v2

    if-eqz v25, :cond_e

    move-object/from16 v0, v25

    array-length v2, v0

    add-int/lit8 v8, v20, 0x1

    if-eq v2, v8, :cond_f

    :cond_e
    add-int/lit8 v2, v20, 0x1

    new-array v0, v2, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000    # 10000.0f

    div-float v21, v2, v8

    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float v2, v2, v16

    mul-float v2, v2, v21

    aput v2, v25, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v25, v20

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/SweepGradient;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v3, v4, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    move v1, p2

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    goto :goto_1
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v2, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-gt v1, v2, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "size"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "gradient"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "solid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "stroke"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "corners"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "padding"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "drawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad element under <shape>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method static isOpaque(I)Z
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpaqueForState()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private modulateAlpha(I)I
    .locals 3

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v2, v2, 0x7

    add-int v0, v1, v2

    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private setStrokeInternal(IIFF)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    cmpl-float v1, p3, v3

    if-lez v1, :cond_1

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    aput p4, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v6

    iput-object v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iget v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    float-to-int v6, v6

    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p1, v11, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v12, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-ne v4, v2, :cond_0

    if-eq v5, v2, :cond_2

    :cond_0
    :goto_0
    const/16 v6, 0x8

    new-array v6, v6, [F

    int-to-float v7, v4

    aput v7, v6, v8

    int-to-float v7, v4

    aput v7, v6, v9

    int-to-float v7, v5

    aput v7, v6, v10

    int-to-float v7, v5

    aput v7, v6, v11

    int-to-float v7, v1

    aput v7, v6, v12

    int-to-float v7, v1

    const/4 v8, 0x5

    aput v7, v6, v8

    int-to-float v7, v0

    const/4 v8, 0x6

    aput v7, v6, v8

    int-to-float v7, v0

    const/4 v8, 0x7

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_1
    return-void

    :cond_2
    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_1

    goto :goto_0
.end method

.method private updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v10

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/4 v11, 0x5

    invoke-static {p2, v11, v10}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v10

    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    const/4 v11, 0x6

    invoke-static {p2, v11, v10}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v10

    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iget-boolean v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v11, 0x2

    invoke-virtual {p2, v11, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v11, 0x4

    invoke-virtual {p2, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    const/16 v10, 0x8

    invoke-virtual {p2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v3, :cond_1

    const/4 v10, 0x3

    new-array v10, v10, [I

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v11, 0x1

    aput v1, v10, v11

    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v11, 0x2

    aput v2, v10, v11

    const/4 v10, 0x3

    new-array v10, v10, [F

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    iget-object v11, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/high16 v12, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_0

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    :goto_0
    const/4 v12, 0x1

    aput v10, v11, v12

    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    aput v11, v10, v12

    :goto_1
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-nez v10, :cond_4

    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    int-to-float v10, v10

    const/4 v11, 0x3

    invoke-virtual {p2, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    float-to-int v0, v10

    rem-int/lit16 v0, v0, 0x168

    rem-int/lit8 v10, v0, 0x2d

    if-eqz v10, :cond_2

    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "<gradient> tag requires \'angle\' attribute to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "be a multiple of 45"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    goto :goto_0

    :cond_1
    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v11, 0x1

    aput v2, v10, v11

    goto :goto_1

    :cond_2
    iput v0, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    sparse-switch v0, :sswitch_data_0

    :cond_3
    :goto_2
    return-void

    :sswitch_0
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :sswitch_1
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :sswitch_2
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :sswitch_3
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :sswitch_4
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :sswitch_5
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :sswitch_6
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :sswitch_7
    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_4
    const/4 v10, 0x7

    invoke-virtual {p2, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_8

    iget v10, v8, Landroid/util/TypedValue;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v10, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v4

    iget v10, v8, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v10, v10, 0x0

    and-int/lit8 v9, v10, 0xf

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v5, 0x2

    :goto_3
    iput v4, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v5, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    iget v10, v8, Landroid/util/TypedValue;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_7

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    iget v10, v6, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "<gradient> tag requires \'gradientRadius\' "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "attribute with radial type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
        0xb4 -> :sswitch_4
        0xe1 -> :sswitch_5
        0x10e -> :sswitch_6
        0x13b -> :sswitch_7
    .end sparse-switch
.end method

.method private updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .locals 7

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x3

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    return-void
.end method

.method private updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return-void
.end method

.method private updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .locals 4

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v6

    iput-object v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v7, 0x2

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    const/4 v7, 0x3

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v5, v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v0, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v5, :cond_1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v0, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_1

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v6, v5, v7

    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v6, v5, v8

    invoke-direct {v1, v5, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v7, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-static {v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->-wrap0(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void

    :cond_2
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, -0x1

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v7

    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    invoke-virtual {p1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iget-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-ne v7, v10, :cond_2

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    const/4 v8, 0x7

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-ne v7, v9, :cond_0

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    const/4 v8, 0x4

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    :cond_0
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/16 v8, 0x8

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-ne v7, v9, :cond_1

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    const/4 v8, 0x5

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    :cond_1
    iget-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/4 v8, 0x6

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    :cond_2
    const/16 v7, 0x9

    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eq v6, v9, :cond_3

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_4

    iput-object v5, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    :cond_4
    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->left:I

    const/16 v8, 0xb

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->top:I

    const/16 v8, 0xd

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->right:I

    const/16 v8, 0xc

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iget-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    const/16 v8, 0xa

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    :cond_3
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    :cond_4
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v16

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v11

    if-lez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    const/4 v13, 0x1

    :goto_1
    if-lez v10, :cond_9

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :goto_3
    if-eqz v13, :cond_c

    if-eqz v12, :cond_c

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    const/16 v3, 0xff

    if-ge v11, v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v4, 0xff

    if-lt v3, v4, :cond_1

    if-eqz v9, :cond_b

    :cond_1
    const/16 v20, 0x1

    :goto_4
    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v5, v3, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float v6, v3, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float v7, v3, v18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3
    :goto_5
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_6
    if-eqz v20, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_7
    return-void

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_3

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz v9, :cond_e

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_e
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    :pswitch_0
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-nez v3, :cond_11

    if-eqz v9, :cond_13

    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_12
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    if-eqz v3, :cond_12

    goto :goto_8

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    if-eqz v13, :cond_4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v7, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getColors()[I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getCornerRadii()[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    return v0
.end method

.method public getGradientCenterX()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method public getGradientCenterY()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method public getGradientRadius()F
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    return v0
.end method

.method public getGradientType()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 12

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v8, v8, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v8, :cond_0

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v8, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_4

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v8, v10

    :goto_1
    invoke-virtual {p1, v8}, Landroid/graphics/Outline;->setAlpha(F)V

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v8, :pswitch_data_0

    return-void

    :cond_1
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    iget-object v10, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    if-ne v8, v10, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    :pswitch_0
    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v8, :cond_5

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v8}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void

    :cond_5
    const/4 v4, 0x0

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_6
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void

    :pswitch_2
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v8, :cond_7

    const v3, 0x38d1b717    # 1.0E-4f

    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v2, v8

    sub-float v8, v2, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    add-float v8, v2, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v8, v6, v9, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    :cond_7
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    mul-float v3, v8, v11

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getShape()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    return v0
.end method

.method public getUseLevel()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    sget-object v1, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isStateful()Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v4, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :cond_0
    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_1

    iget-object v5, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v2, v1, :cond_1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :cond_1
    iget-object v7, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_2

    iget-object v7, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v8, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v9, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    const/4 v7, 0x1

    return v7

    :cond_3
    return v10
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGradientRadius(F)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGradientType(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShape(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStroke(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public setStroke(IIFF)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 3

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setUseLevel(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method
