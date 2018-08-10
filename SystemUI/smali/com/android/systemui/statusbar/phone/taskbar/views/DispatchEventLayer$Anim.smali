.class public Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;
.super Ljava/lang/Object;
.source "DispatchEventLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Anim"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$3;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$4;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$5;
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field mAnimGroup:I

.field public mAnimIcon:Landroid/widget/ImageView;

.field private mAnimation:Landroid/animation/Animator;

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

.field mFrom:[I

.field private mIsCompleted:Z

.field private mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mShadowFadeStarted:Z

.field mTo:[I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mShadowFadeStarted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mShadowFadeStarted:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->updateView()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mClippingEnabled:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mShadowFadeStarted:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mIsCompleted:Z

    return-void
.end method

.method private updateView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->onDrop()V

    :cond_1
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->markCompleted()V

    return-void
.end method

.method public enableClipping()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mClippingEnabled:Z

    return-void
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrom()[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mFrom:[I

    return-object v0
.end method

.method public getTo()[I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mTo:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mTo:[I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mIsCompleted:Z

    return v0
.end method

.method public markCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mIsCompleted:Z

    return-void
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->cancel()V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimGroup:I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mTo:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mFrom:[I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mIsCompleted:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v0, v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mClippingEnabled:Z

    return-void
.end method

.method setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mFrom:[I

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mTo:[I

    xor-int/lit8 v0, p7, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mShadowFadeStarted:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    int-to-long v2, p6

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

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

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mView:Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mFrom:[I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mTo:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->getTo()[I

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3da3d70a    # 0.08f

    mul-float v18, v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3df5c28f    # 0.12f

    mul-float v14, v3, v2

    const v21, 0x3dcccccd    # 0.1f

    div-float v2, v18, v13

    const v3, 0x3dcccccd    # 0.1f

    add-float v20, v3, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v20, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v22

    const-wide/16 v2, 0x5a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$6;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v2, v14, v13

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v17, v3, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v17, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    const-wide/16 v2, 0x5a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$7;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim$7;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;Landroid/widget/ImageView;[IFF)V

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

    invoke-static {v11, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v12

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer;->createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    return-void

    nop

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

.method update([IIZ)V
    .locals 4

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mClippingEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mTo:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mFrom:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mFrom:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/DispatchEventLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
