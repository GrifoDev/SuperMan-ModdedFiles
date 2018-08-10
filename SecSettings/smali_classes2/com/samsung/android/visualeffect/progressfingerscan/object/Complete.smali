.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;
.super Landroid/widget/FrameLayout;
.source "Complete.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final ANIMATION_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private checkView:Landroid/widget/ImageView;

.field private completeColor:I

.field private completeMaskResID:I

.field private completeResID:I

.field private completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

.field private completeViewOnAnimationValue:F

.field private completeViewOnAnimator:Landroid/animation/ValueAnimator;

.field private context:Landroid/content/Context;

.field private drawingHeight:I

.field private drawingWidth:I

.field private handler:Landroid/os/Handler;

.field private height:I

.field private isOn:Z

.field private isViewAdded:Z

.field private maskView:Landroid/widget/ImageView;

.field private startX:I

.field private startY:I

.field private strokeWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIII)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->ANIMATION_DURATION:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->ANIMATION_DELAY:J

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    iput p7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    iput p8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeColor:I

    iput p9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeResID:I

    iput p10, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeMaskResID:I

    iput p11, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->strokeWidth:I

    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setLayout()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setAnimator()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->setLayoutDirection(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeOnDelayed()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimationValue:F

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimationValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    return-object v0
.end method

.method private completeOnDelayed()V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v6, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->drawingHeight:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/visualeffect/progressfingerscan/R$anim;->check_animation:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setAnimator()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private setLayout()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeColor:I

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->strokeWidth:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeMaskResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->startY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method


# virtual methods
.method public completeOff()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeViewOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->completeView:Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->setRatio(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isViewAdded:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->checkView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->maskView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public completeOn()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->isOn:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Complete;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    return-void
.end method
