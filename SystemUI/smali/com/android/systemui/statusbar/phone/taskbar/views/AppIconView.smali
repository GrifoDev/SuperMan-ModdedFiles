.class public Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"


# static fields
.field private static sBadgeFontSize:I

.field static sIsDragState:Z


# instance fields
.field private allAppsMenuIconSize:I

.field private hotseatIconSize:I

.field private iconSize:I

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mDimAmount:F

.field protected mDrawIcon:Z

.field private mHoverAniYOffset:I

.field private mHoverExitWithClick:Z

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconDestination:I

.field protected mIsAttachedHotseat:Z

.field private mIsDimmed:Z

.field private final mLastTouch:[I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunningQueueHeight:I

.field private mRunningQueueTopMargin:I

.field private mRunningQueueWidth:I

.field protected mTextVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mLastTouch:[I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mTextVisible:Z

    iput v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIconDestination:I

    const v3, 0x3f0ccccd    # 0.55f

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mDimAmount:F

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsDimmed:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mDrawIcon:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/systemui/R$styleable;->AppIconView:[I

    invoke-virtual {p1, p2, v3, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIconDestination:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIconDestination:I

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/util/MissingResourceException;

    const-string/jumbo v4, "AppIconView must have the attribute launcher:destination set to either \'home\' or \'menu\' set"

    const-string/jumbo v5, "launcher:destination"

    const-string/jumbo v6, "value of either \'home\' or \'menu\'"

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setDefaultIconSize()V

    const v3, 0x7f070071

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->sBadgeFontSize:I

    const v3, 0x7f0705d7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueWidth:I

    const v3, 0x7f0705d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueHeight:I

    const v3, 0x7f0705d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueTopMargin:I

    const v3, 0x7f0701c0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverAniYOffset:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->sBadgeFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mPaint:Landroid/graphics/Paint;

    const v4, -0x50506

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string/jumbo v3, "sec-roboto-light"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x23000000

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method static createDarkenColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p0

    float-to-int v0, v2

    rsub-int v0, v0, 0xff

    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2
.end method

.method private drawRunningFocusedQueue(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method private drawRunningQueue(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080053

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v1, v6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueTopMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int v4, v1, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueHeight:I

    add-int v0, v5, v6

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRunningQueueForCall(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080054

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v1, v6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueTopMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int v4, v1, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mRunningQueueHeight:I

    add-int v0, v5, v6

    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private isHotseatItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 6

    const/4 v0, 0x0

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    const-wide/16 v4, -0x67

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeHoverEnterAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverAniYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    return-object v0
.end method

.method private makeHoverExitAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverAniYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isHotseatItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mTextVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to create a FastBitmapDrawable with a null bitmap. See attached item info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setIcon(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 14

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    return-object v9

    :cond_0
    if-nez p1, :cond_1

    const/4 v9, 0x0

    return-object v9

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070081

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070081

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v5, v9

    const-string/jumbo v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x3e8

    if-lt p1, v9, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070082

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v12, 0x3e7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080177

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    new-instance v7, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v10, 0x0

    invoke-direct {v7, v2, v4, v9, v10}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v6, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07007f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    int-to-float v11, v8

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    invoke-direct {v9, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v9

    :cond_3
    const/16 v9, 0x64

    if-lt p1, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070083

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    sput-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->sIsDragState:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->sIsDragState:Z

    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->makeHoverEnterAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInsideAppIcon(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->makeHoverExitAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isInsideAppIcon(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->makeHoverExitAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDensity(I)V

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawBadge(Landroid/graphics/Canvas;Z)V
    .locals 10

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mDrawIcon:Z

    if-nez v7, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getDrawableState()[I

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    sub-int v7, v6, v7

    div-int/lit8 v1, v7, 0x2

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    add-int/2addr v7, v1

    mul-int/lit8 v8, v4, 0x3

    div-int/lit8 v8, v8, 0x4

    sub-int v0, v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getPaddingTop()I

    move-result v7

    div-int/lit8 v8, v3, 0x4

    sub-int v5, v7, v8

    add-int v7, v0, v4

    if-le v7, v6, :cond_1

    add-int v7, v0, v4

    sub-int/2addr v7, v6

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getPaddingTop()I

    move-result v7

    add-int v8, v0, v4

    iget v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    add-int/2addr v9, v1

    sub-int/2addr v8, v9

    sub-int v5, v7, v8

    :cond_1
    if-gez v5, :cond_2

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    add-int/2addr v7, v1

    sub-int/2addr v7, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getPaddingTop()I

    move-result v8

    add-int v0, v7, v8

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getScrollX()I

    move-result v7

    add-int/2addr v0, v7

    add-int v7, v0, v4

    add-int v8, v5, v3

    invoke-virtual {v2, v0, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public drawFocusedBg(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08016f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawIconOrText(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getShadowColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getShadowRadius()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getShadowDy()F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mDrawIcon:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getExtendedPaddingTop()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getExtendedPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getExtendedPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->drawBadge(Landroid/graphics/Canvas;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->drawFocusedBg(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v4, :cond_6

    const-string/jumbo v5, "com.samsung.android.incallui"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->drawRunningQueueForCall(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isRunningFocused()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->drawRunningFocusedQueue(Landroid/graphics/Canvas;)V

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->drawRunningQueue(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getAnimGroup()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->buildDrawingCache()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->destroyDrawingCache()V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mLastTouch:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getRunningTaskId()I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    :cond_0
    return v1
.end method

.method public getTextVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mTextVisible:Z

    return v0
.end method

.method public isDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsDimmed:Z

    return v0
.end method

.method public isRunning()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getRunningTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunningFocused()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mDrawIcon:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    return-void
.end method

.method public refreshBadge()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->showBadge()V

    :cond_0
    return-void
.end method

.method public setDefaultIconSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->allAppsMenuIconSize:I

    const v1, 0x7f0701bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->hotseatIconSize:I

    return-void
.end method

.method public setIcon(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Landroid/graphics/Bitmap;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->hotseatIconSize:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    invoke-static {p2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->CreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    instance-of v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v3, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isDimmed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mDimAmount:F

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    invoke-virtual {p0, v6, v1, v6, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->destroyDrawingCache()V

    return-void

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->allAppsMenuIconSize:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->iconSize:I

    goto :goto_0
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setAlpha(F)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->clearAnimation()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mHoverExitWithClick:Z

    goto :goto_0
.end method

.method public setTextVisible(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mTextVisible:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mTextVisible:Z

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mTextVisible:Z

    return-void

    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mTextVisible:Z

    goto :goto_0
.end method

.method public showBadge()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mBadgeCount:I

    if-nez v4, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v4, :cond_2

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    const/4 v1, 0x0

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-eq v4, v5, :cond_1

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v4, v5, :cond_2

    :cond_1
    iget v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mBadgeCount:I

    if-le v4, v7, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12012c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mBadgeCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mBadgeCount:I

    if-ne v4, v7, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12012b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public startFadeShadow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->mDrawIcon:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    return-void
.end method
