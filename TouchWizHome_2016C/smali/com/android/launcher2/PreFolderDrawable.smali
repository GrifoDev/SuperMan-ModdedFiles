.class public Lcom/android/launcher2/PreFolderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreFolderDrawable.java"


# static fields
.field private static final SCALE_DURATION:I = 0xb4

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PreFolderDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PreFolderDrawable"


# instance fields
.field private deltaBottom:I

.field private deltaRight:I

.field private mBounds:Landroid/graphics/Rect;

.field private mDistanceX:F

.field private mDistanceY:F

.field private final mFactor:F

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mPreFolder:Landroid/graphics/drawable/Drawable;

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher2/PreFolderDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PreFolderDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PreFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFF)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleFactor:F

    const/high16 v2, 0x42200000    # 40.0f

    iput v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mDistanceX:F

    const/high16 v2, 0x41a00000    # 20.0f

    iput v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mDistanceY:F

    iput v5, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaRight:I

    iput v5, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaBottom:I

    const-string v2, "PreFolderDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", f = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p5, p0, Lcom/android/launcher2/PreFolderDrawable;->mFactor:F

    invoke-static {v5}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iput p2, p0, Lcom/android/launcher2/PreFolderDrawable;->mDistanceX:F

    iput p3, p0, Lcom/android/launcher2/PreFolderDrawable;->mDistanceY:F

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/PreFolderDrawable;->startScaleAnimation()V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/PreFolderDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaRight:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/PreFolderDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaBottom:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PreFolderDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private startScaleAnimation()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget-object v1, Lcom/android/launcher2/PreFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v2, v5, [F

    iget v3, p0, Lcom/android/launcher2/PreFolderDrawable;->mFactor:F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/launcher2/PreFolderDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PreFolderDrawable$2;-><init>(Lcom/android/launcher2/PreFolderDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mDistanceX:F

    iget v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mDistanceY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleFactor:F

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PreFolderDrawable;->mFactor:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mPreFolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher2/PreFolderDrawable;->mScaleFactor:F

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaRight:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaBottom:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/PreFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher2/PreFolderDrawable;->deltaBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/launcher2/PreFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PreFolderDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PreFolderDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PreFolderDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PreFolderDrawable;->invalidateSelf()V

    goto :goto_0
.end method
