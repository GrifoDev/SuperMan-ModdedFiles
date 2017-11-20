.class public Lcom/android/incallui/agif/AgifImageManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_PANEL_ALPHA:F = 1.0f

.field private static final EXPAND_NOTIFICATIONS_PANEL_THRESHOLD:I = 0x320

.field private static final TAG:Ljava/lang/String; = "AgifImageManager"


# instance fields
.field private bAnimate:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private duration:I

.field private dx:F

.field private handler:Landroid/os/Handler;

.field private height:I

.field private isSetBackground:Z

.field private iv:Landroid/widget/ImageView;

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mIsHideAnimationRunning:Z

.field private mPosition:Landroid/graphics/PointF;

.field private mStartPointX:F

.field private mUri:Landroid/net/Uri;

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private movie:Landroid/graphics/Movie;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->duration:I

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifImageManager;->bAnimate:Z

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mFile:Ljava/io/File;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifImageManager;->isSetBackground:Z

    iput-boolean v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsHideAnimationRunning:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/agif/AgifImageManager$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifImageManager$2;-><init>(Lcom/android/incallui/agif/AgifImageManager;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p3, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/incallui/agif/AgifImageManager;->mUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/incallui/agif/AgifImageManager;->mFile:Ljava/io/File;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/agif/AgifImageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bAnimate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/agif/AgifImageManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/agif/AgifImageManager;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->dx:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/agif/AgifImageManager;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/agif/AgifImageManager;->dx:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/agif/AgifImageManager;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mStartPointX:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/agif/AgifImageManager;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mStartPointX:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/agif/AgifImageManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifImageManager;->animateForSlideOut(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/agif/AgifImageManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->animateForDefaultPosition()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/incallui/agif/AgifImageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsHideAnimationRunning:Z

    return p1
.end method

.method private animateForDefaultPosition()V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsHideAnimationRunning:Z

    if-nez v0, :cond_0

    const-string v0, "AgifImageManager"

    const-string v1, "animateForDefaultPosition:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/agif/AgifImageManager$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/AgifImageManager$3;-><init>(Lcom/android/incallui/agif/AgifImageManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private animateForSlideOut(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsHideAnimationRunning:Z

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/android/incallui/agif/AgifImageManager;->mIsHideAnimationRunning:Z

    const-string v0, "AgifImageManager"

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

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifImageManager;->getMaxX()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v5, [F

    aput v0, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    int-to-long v0, v1

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/agif/AgifImageManager$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/agif/AgifImageManager$4;-><init>(Lcom/android/incallui/agif/AgifImageManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifImageManager;->getMaxX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bAnimate:Z

    invoke-direct {p0}, Lcom/android/incallui/agif/AgifImageManager;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    return v0
.end method

.method public getMaxX()I
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    return v0
.end method

.method public setAGifBackground(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImagePath(Landroid/graphics/Movie;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/agif/AgifImageManager;->setImagePath(Landroid/graphics/Movie;I)V

    return-void
.end method

.method public setImagePath(Landroid/graphics/Movie;I)V
    .locals 5

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a05ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    if-lez p2, :cond_3

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a05cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int p2, v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->duration:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    const-string v1, "AgifImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Movie : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    if-ge v0, v1, :cond_4

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    :cond_1
    :goto_1
    const-string v0, "AgifImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int p2, v1

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    if-ge p2, v0, :cond_1

    int-to-float v0, p2

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iput p2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    if-ge p2, v1, :cond_6

    int-to-float v0, p2

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iput p2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    if-ge v0, v1, :cond_1

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    if-le v1, v2, :cond_9

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    int-to-float v1, p2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iput p2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    :goto_2
    const-string v2, "AgifImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " maxHeight : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ratio: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    goto :goto_2

    :cond_9
    int-to-float v1, p2

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    int-to-float v1, v0

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v0, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    goto :goto_2

    :cond_a
    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    goto :goto_2
.end method

.method public startAgifAnimate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bAnimate:Z

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->duration:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifImageManager;->updateAgifView()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/agif/AgifImageManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/agif/AgifImageManager$1;-><init>(Lcom/android/incallui/agif/AgifImageManager;)V

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifImageManager$1;->start()V

    goto :goto_0
.end method

.method public stopAgifAnimate()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bAnimate:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public updateAgifView()V
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v4, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    mul-float v5, v2, v6

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v4, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    mul-float v5, v2, v6

    div-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/PointF;->y:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->duration:I

    if-lez v3, :cond_0

    iget v0, p0, Lcom/android/incallui/agif/AgifImageManager;->duration:I

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v0, v4

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    invoke-virtual {v3, v0}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a05c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v1, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget v3, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    invoke-static {v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    iget v5, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/incallui/agif/AgifImageManager;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/incallui/agif/AgifImageManager;->height:I

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->canvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->movie:Landroid/graphics/Movie;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageManager;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->isSetBackground:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/agif/AgifImageManager;->isSetBackground:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->updateGradientColor(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageManager;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateGradientView(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AgifImageManager"

    const-string v1, "updateAgifView OutOfMemoryError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
