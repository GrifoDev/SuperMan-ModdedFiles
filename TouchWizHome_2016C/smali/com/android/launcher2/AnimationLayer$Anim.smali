.class public Lcom/android/launcher2/AnimationLayer$Anim;
.super Ljava/lang/Object;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Anim"
.end annotation


# static fields
.field static final DEFAULT:I = 0x0

.field static final SCROLLABLE:I = 0x1


# instance fields
.field mAnimGroup:I

.field mAnimIcon:Landroid/view/View;

.field private mAnimation:Landroid/animation/Animator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mClipRect:Landroid/graphics/Rect;

.field mClippingEnabled:Z

.field mEndCallback:Ljava/lang/Runnable;

.field mFrom:[I

.field private mIsCompleted:Z

.field public mLinkedItem:Lcom/android/launcher2/BaseItem;

.field private mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mParent:Landroid/view/View;

.field private mShadowFadeStarted:Z

.field private mStartDelay:J

.field mTo:[I

.field mToRect:Landroid/graphics/Rect;

.field mView:Landroid/view/View;

.field private mWidgetMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AnimationLayer;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mToRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mStartDelay:J

    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$4;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$5;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$6;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mWidgetMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/AnimationLayer$Anim;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/AnimationLayer$Anim;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private updateView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->onDrop()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->onDrop()V

    goto :goto_0
.end method


# virtual methods
.method public addAlphaAnimator(FFZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$2;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;FF)V

    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$3;

    invoke-direct {v1, p0, v0, v2, p3}, Lcom/android/launcher2/AnimationLayer$Anim$3;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$1;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public enableClipping()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrom()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    return-object v0
.end method

.method public getIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    return-object v0
.end method

.method public getTo()[I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v0

    goto :goto_0
.end method

.method isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    return v0
.end method

.method public markCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    return-void
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    iput v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mEndCallback:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v0, v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mStartDelay:J

    return-void
.end method

.method public setFrom([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mStartDelay:J

    return-void
.end method

.method public setTo([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    return-void
.end method

.method setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    iput-object p5, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-nez p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    int-to-long v2, p6

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-wide v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V
    .locals 24

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v8

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x0

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v6, v2

    const/4 v2, 0x1

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v7, v2

    mul-float v2, v6, v6

    mul-float v3, v7, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v13, v2

    const/16 v19, 0x5a

    const/16 v15, 0x5a

    const v2, 0x3da3d70a    # 0.08f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v18, v2, v3

    const v2, 0x3df5c28f    # 0.12f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v14, v2, v3

    const v21, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    div-float v3, v18, v13

    add-float v20, v2, v3

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v20, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v22

    const-wide/16 v2, 0x5a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$7;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$7;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v14, v13

    sub-float v17, v2, v3

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v17, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    const-wide/16 v2, 0x5a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$8;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$8;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v2, 0x5a

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0x5a

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/android/launcher2/AnimationLayer;->createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mStartDelay:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setupWidgetMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/AnimView;[ILandroid/graphics/Rect;IZLcom/android/launcher2/CellLayout;)V
    .locals 13

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mParent:Landroid/view/View;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    instance-of v8, v8, Lcom/android/launcher2/AnimView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    check-cast v8, Lcom/android/launcher2/AnimView;

    invoke-virtual {v8}, Lcom/android/launcher2/AnimView;->isCrossFadeMode()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float v5, v8, v9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v3

    div-float v6, v8, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpg-float v8, v5, v6

    if-gez v8, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/Rect;->left:I

    aput v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v12, v3

    mul-float/2addr v12, v4

    float-to-int v12, v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    aput v10, v8, v9

    iput-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    :goto_1
    if-nez p7, :cond_4

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v8, Landroid/animation/ValueAnimator;

    iget-object v9, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mWidgetMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v9, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    new-instance v9, Lcom/android/launcher2/utils/interpolator/SineInOut80;

    invoke-direct {v9}, Lcom/android/launcher2/utils/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    move/from16 v0, p6

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-wide v10, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mStartDelay:J

    invoke-virtual {v8, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v12, v4

    float-to-int v12, v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/Rect;->top:I

    aput v10, v8, v9

    iput-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/Rect;->left:I

    aput v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p5

    iget v10, v0, Landroid/graphics/Rect;->top:I

    aput v10, v8, v9

    iput-object v8, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method update([IIZ)V
    .locals 4

    iput-boolean p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AnimView;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AnimView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
