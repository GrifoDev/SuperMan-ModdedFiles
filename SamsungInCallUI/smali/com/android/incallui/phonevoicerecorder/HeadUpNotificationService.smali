.class public Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;
.super Landroid/app/Service;


# static fields
.field private static final DEFAULT_PANEL_ALPHA:F = 1.0f

.field private static final EXPAND_NOTIFICATIONS_PANEL_THRESHOLD:I = 0x100

.field private static final HORIZONTAL_FLING_THRESHOLD:I = 0x64

.field private static final LAUNCH_FULL_SCREEN_THRESHOLD:I = 0x40

.field protected static final LOG_TAG:Ljava/lang/String; = "HeadUpNotificationService"


# instance fields
.field protected mCanSlideOut:Z

.field protected mContext:Landroid/content/Context;

.field protected mDoLaunchFullScreen:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

.field protected mIsHideAnimationRunning:Z

.field protected mIsPopupShowing:Z

.field protected mIsShowAnimationRunning:Z

.field private mMinFlingVelocity:I

.field private mMoveAnimator:Landroid/animation/ObjectAnimator;

.field private mStartId:I

.field private mStartPointX:F

.field private mStartPointY:F

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mViewPointX:I

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mCanSlideOut:Z

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;-><init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$2;-><init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStartPointX:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStartPointX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStartId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStartPointY:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStartPointY:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mViewPointX:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mViewPointX:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->animateForSlideOut(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/app/SemStatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMinFlingVelocity:I

    return v0
.end method

.method private animateForSlideOut(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mCanSlideOut:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const-string v0, "HeadUpNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateForSlideOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getMaxX()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v6, [F

    aput v0, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v5, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, v1

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$4;-><init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getMaxX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1
.end method

.method private setDefaultPosition()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowVoiceControlNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private showHeadUpNotification()V
    .locals 3

    const-string v0, "HeadUpNotificationService"

    const-string v1, "showHeadUpNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;-><init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onCreateCustomView(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->setDefaultPosition()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsPopupShowing:Z

    if-nez v0, :cond_1

    const-string v0, "HeadUpNotificationService"

    const-string v1, "animateForHide: popup is not shwoing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const-string v0, "HeadUpNotificationService"

    const-string v1, "animateForHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v1, v1

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;-><init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateForHideNotStopSelf()V
    .locals 1

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$6;-><init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsPopupShowing:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const-string v0, "HeadUpNotificationService"

    const-string v1, "animateForHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v1, v1

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected animateForShow()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    const-string v0, "HeadUpNotificationService"

    const-string v1, "animateForShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    neg-float v1, v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$3;-><init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x2

    const/16 v0, 0x7de

    const v1, 0x1800328

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v2, v0, v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x7f0b0011

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMaxX()I
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method protected isHideAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    return v0
.end method

.method protected isShowAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    return v0
.end method

.method protected launchFullScreen()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelAnimation()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "HeadUpNotificationService"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->removeHeadUpNotification()V

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->showHeadUpNotification()V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->setHeadUpNotificationWindowFocusable()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "HeadUpNotificationService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMinFlingVelocity:I

    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method protected onCustomCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "HeadUpNotificationService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->removeHeadUpNotification()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsPopupShowing:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method protected onEndAnimation()V
    .locals 0

    return-void
.end method

.method public onFocus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "HeadUpNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->updateViewLayout()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected onShowPopup()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "HeadUpNotificationService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsPopupShowing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    iput p3, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStartId:I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->preShowingNotification()V

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->showHeadUpNotification()V

    const-string v0, "sem_statusbar"

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->setHeadUpNotificationWindowFocusable()V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onCustomCreate()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected preShowingNotification()V
    .locals 0

    return-void
.end method

.method protected removeHeadUpNotification()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HeadUpNotificationService"

    const-string v1, "removeHeadUpNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->removeAllViews()V

    :cond_1
    iput-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    iput-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method protected resetViewLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->setAlpha(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->setDefaultPosition()V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->updateViewLayout()V

    return-void
.end method

.method protected setHeadUpNotificationWindowFocusable()V
    .locals 5

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v2, "HeadUpNotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TalkbackEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isAccessoryKeyboardAttached = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->updateViewLayout()V

    :cond_1
    return-void
.end method

.method public updateViewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    if-eqz v0, :cond_1

    const-string v0, "HeadUpNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWindowAttributes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
