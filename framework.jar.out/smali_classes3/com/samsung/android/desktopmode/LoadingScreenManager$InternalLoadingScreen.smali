.class Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;
.super Landroid/app/InternalPresentation;
.source "LoadingScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/LoadingScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalLoadingScreen"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mSplashImage:Landroid/widget/ImageView;

.field final mWindow:Landroid/view/Window;

.field final synthetic this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->startAnimation()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/desktopmode/LoadingScreenManager;Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    invoke-direct {p0, p2, p3}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    iput-object p3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method private getImageRotation()I
    .locals 9

    const/16 v4, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eqz v2, :cond_0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    :cond_0
    if-le v0, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_8

    :goto_1
    return v5

    :cond_1
    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_4

    :cond_2
    if-le v3, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_5

    :goto_2
    return v4

    :cond_5
    move v4, v5

    goto :goto_2

    :pswitch_1
    if-eqz v1, :cond_6

    move v4, v6

    :goto_3
    return v4

    :cond_6
    move v4, v7

    goto :goto_3

    :pswitch_2
    if-eqz v1, :cond_7

    :goto_4
    return v7

    :cond_7
    move v7, v6

    goto :goto_4

    :cond_8
    move v5, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/16 v3, 0x967

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/16 v3, 0x590

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    sget v2, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    sget v2, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->getImageRotation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$1;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/InternalPresentation;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/InternalPresentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
