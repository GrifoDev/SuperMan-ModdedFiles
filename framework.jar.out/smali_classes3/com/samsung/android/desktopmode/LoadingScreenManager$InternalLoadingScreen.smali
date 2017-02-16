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
    .param p1, "this$0"    # Lcom/samsung/android/desktopmode/LoadingScreenManager;
    .param p2, "outerContext"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->this$0:Lcom/samsung/android/desktopmode/LoadingScreenManager;

    .line 203
    invoke-direct {p0, p2, p3}, Landroid/app/InternalPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 199
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 204
    iput-object p2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    .line 206
    iput-object p3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplay:Landroid/view/Display;

    .line 202
    return-void
.end method

.method private getImageRotation()I
    .locals 9

    .prologue
    const/16 v4, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    const/4 v5, 0x0

    .line 247
    iget-object v8, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 248
    .local v2, "rotation":I
    iget-object v8, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 249
    .local v3, "width":I
    iget-object v8, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 251
    .local v0, "height":I
    if-eqz v2, :cond_0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    .line 252
    :cond_0
    if-le v0, v3, :cond_1

    .line 251
    const/4 v1, 0x1

    .line 255
    .local v1, "isPortraitDevice":Z
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 264
    if-eqz v1, :cond_8

    :goto_1
    return v5

    .line 253
    .end local v1    # "isPortraitDevice":Z
    :cond_1
    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_4

    .line 254
    :cond_2
    if-le v3, v0, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "isPortraitDevice":Z
    goto :goto_0

    .end local v1    # "isPortraitDevice":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isPortraitDevice":Z
    goto :goto_0

    .line 253
    .end local v1    # "isPortraitDevice":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isPortraitDevice":Z
    goto :goto_0

    .line 257
    :pswitch_0
    if-eqz v1, :cond_5

    :goto_2
    return v4

    :cond_5
    move v4, v5

    goto :goto_2

    .line 259
    :pswitch_1
    if-eqz v1, :cond_6

    move v4, v6

    :goto_3
    return v4

    :cond_6
    move v4, v7

    goto :goto_3

    .line 261
    :pswitch_2
    if-eqz v1, :cond_7

    :goto_4
    return v7

    :cond_7
    move v7, v6

    goto :goto_4

    :cond_8
    move v5, v4

    .line 264
    goto :goto_1

    .line 255
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

    .prologue
    .line 269
    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 271
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$2;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 295
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 268
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/16 v3, 0x967

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 213
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/16 v3, 0x590

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 220
    sget v2, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 221
    sget v2, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    .line 224
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 225
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 226
    .local v1, "width":I
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 227
    .local v0, "height":I
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->getImageRotation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 231
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;->mSplashImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen$1;-><init>(Lcom/samsung/android/desktopmode/LoadingScreenManager$InternalLoadingScreen;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/InternalPresentation;->onWindowFocusChanged(Z)V

    .line 301
    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 299
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/InternalPresentation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    const-string/jumbo v1, " display="

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    const-string/jumbo v1, " isShowing="

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    const-string/jumbo v1, "\n"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
