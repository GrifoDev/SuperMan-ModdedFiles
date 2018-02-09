.class public Lcom/android/launcher2/DeleteDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DeleteDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;,
        Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    }
.end annotation


# static fields
.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/DeleteDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAngleDirection:F

.field private mBounds:Landroid/graphics/Rect;

.field private mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

.field private mBulgeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBulgeFrameNumber:I

.field private mBulgeFrames:[Landroid/graphics/drawable/Drawable;

.field private mCloseAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimatingBulge:Z

.field private mIsAnimatingClose:Z

.field private mIsAnimatingShake:Z

.field private mIsFromHome:Z

.field private mLidAngle:F

.field private mLidOffsetY:F

.field private mMaxLidOffsetY:F

.field private mMaxTrashCanOffsetY:F

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mScale:F

.field private mScaleFactor:F

.field private mShakeAnimator:Landroid/animation/Animator;

.field private mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTrashBinOnly:Landroid/graphics/drawable/Drawable;

.field private mTrashCan:Landroid/graphics/drawable/Drawable;

.field private mTrashCanOffsetY:F

.field private mTrashLidOnly:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher2/DeleteDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DeleteDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/DeleteDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;Z)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsFromHome:Z

    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingClose:Z

    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    iput v3, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleFactor:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCloseAnimators:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCanOffsetY:F

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mMaxTrashCanOffsetY:F

    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    iput-boolean p8, p0, Lcom/android/launcher2/DeleteDrawable;->mIsFromHome:Z

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mMaxLidOffsetY:F

    sget-object v1, Lcom/android/launcher2/DeleteDrawable$5;->$SwitchMap$com$android$launcher2$DeleteDrawable$DELETE_DRAWABLE_TYPE:[I

    invoke-virtual {p7}, Lcom/android/launcher2/DeleteDrawable$DELETE_DRAWABLE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iput-object p6, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->initAnimations()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f0200bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f0200c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f0200c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    const v3, 0x7f0200c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x7

    const v3, 0x7f0200c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f0200cb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f0200cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f0200cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    const v3, 0x7f0200ce

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x7

    const v3, 0x7f0200cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f0200d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f0200d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f0200d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    const v3, 0x7f0200d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x7

    const v3, 0x7f0200da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeleteDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DeleteDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DeleteDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCanOffsetY:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/DeleteDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/DeleteDrawable;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/launcher2/DeleteDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/launcher2/DeleteDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingClose:Z

    return p1
.end method

.method private drawBulgeAnimation(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v8, v7

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v6, v8

    int-to-float v8, v2

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v5, v8

    sub-int v0, v6, v7

    sub-int v1, v5, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-int v8, v0

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v8, v8

    neg-int v9, v1

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v8, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v4, v8, 0x5

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    neg-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v8, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    int-to-float v9, v3

    int-to-float v10, v4

    iget v11, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    sub-float/2addr v10, v11

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-boolean v8, p0, Lcom/android/launcher2/DeleteDrawable;->mIsFromHome:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    const v9, 0x3f8ccccd    # 1.1f

    mul-float/2addr v8, v9

    float-to-int v6, v8

    int-to-float v8, v2

    const v9, 0x3f8ccccd    # 1.1f

    mul-float/2addr v8, v9

    float-to-int v5, v8

    sub-int v0, v6, v7

    sub-int v1, v5, v2

    neg-int v8, v0

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-float v8, v8

    neg-int v9, v1

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const v8, 0x3f8ccccd    # 1.1f

    const v9, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawOpenAndCloseAnimation(Landroid/graphics/Canvas;)V
    .locals 14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v8, v7

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v6, v8

    int-to-float v8, v2

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v5, v8

    sub-int v0, v6, v7

    sub-int v1, v5, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-int v8, v0

    int-to-double v8, v8

    div-double/2addr v8, v12

    double-to-float v8, v8

    neg-int v9, v1

    int-to-double v10, v9

    div-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v8, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v4, v8, 0x5

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    neg-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v8, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    int-to-float v9, v3

    int-to-float v10, v4

    iget v11, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    sub-float/2addr v10, v11

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    neg-int v8, v0

    int-to-double v8, v8

    div-double/2addr v8, v12

    double-to-float v8, v8

    neg-int v9, v1

    int-to-double v10, v9

    div-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v8, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v8, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private initAnimations()V
    .locals 14

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f060033

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f060032

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f06002e

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f060031

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mCloseAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mCloseAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f060030

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f06002e

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v10, 0x85

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f060031

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v10, 0x85

    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f06002f

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v11, 0x7f060034

    invoke-static {v10, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v10, 0xa6

    invoke-virtual {v7, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v10, p0, Lcom/android/launcher2/DeleteDrawable;->mIsFromHome:Z

    if-eqz v10, :cond_0

    const-string v10, "alpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    invoke-static {p0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v10, 0x384

    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v10, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private startBulgeAnimation()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    :cond_1
    const v1, 0x3f8ccccd    # 1.1f

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher2/DeleteDrawable$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/DeleteDrawable$2;-><init>(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startCloseLidAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    :cond_2
    iget v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCloseAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher2/DeleteDrawable$4;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/DeleteDrawable$4;-><init>(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private startShakeAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-nez v1, :cond_1

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    iput v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher2/DeleteDrawable$3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/DeleteDrawable$3;-><init>(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method private stopCurrentAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingClose:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingClose:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDrawable;->drawBulgeAnimation(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDrawable;->drawOpenAndCloseAnimation(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingClose:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDrawable;->drawOpenAndCloseAnimation(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

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

    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    :cond_2
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    aget v6, p1, v2

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    aget v6, p1, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    const/4 v1, 0x1

    :cond_1
    aget v6, p1, v2

    const v7, 0x10102fe

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    move v3, v4

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    move v0, v4

    :goto_2
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startBulgeAnimation()V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return v4

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V

    goto :goto_3

    :cond_8
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startCloseLidAnimation()V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setAngleDirection(F)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleFactor:F

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/DeleteDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setTrashCanExpand(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTrashCanLidClose(F)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x41a00000    # 20.0f

    div-float v3, p1, v3

    add-float v1, v2, v3

    iget v2, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingClose:Z

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void

    :cond_2
    iget v2, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    goto :goto_0
.end method

.method public setTrashCanLidDown(F)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    iget v1, p0, Lcom/android/launcher2/DeleteDrawable;->mMaxLidOffsetY:F

    mul-float/2addr v1, p1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mMaxLidOffsetY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 4

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v0, p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x41a00000    # 20.0f

    div-float v3, p1, v3

    add-float v1, v2, v3

    iget v2, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTrashCanLidUp(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mMaxLidOffsetY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:F

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTrashCanReduce(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScale:F

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTrashCanTranslateY(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mMaxTrashCanOffsetY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCanOffsetY:F

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    return-void
.end method
