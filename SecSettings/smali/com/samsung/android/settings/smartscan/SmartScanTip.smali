.class public Lcom/samsung/android/settings/smartscan/SmartScanTip;
.super Landroid/app/Activity;
.source "SmartScanTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final FontScale_LARGE:F

.field private TAG:Ljava/lang/String;

.field private mContinueButton:Lcom/samsung/android/settings/widget/BottomBarButton;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mOriginFontScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "SsstSemSmartScanTip"

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->FontScale_LARGE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContinueButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    return-void
.end method

.method private adjustFontScale()V
    .locals 7

    const v6, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "font scale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Font scale is bigger than Large! Change font scale"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private initUI()V
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07072b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v1, v2, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v2, v1

    const-wide v4, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-double v2, v1

    const-wide v4, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private rollbackFontScale()V
    .locals 6

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rollback Font Scale to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    iput v3, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a01cc
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0d02bf

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->setContentView(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->adjustFontScale()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->initUI()V

    const v2, 0x7f0a07fa

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    const v2, 0x7f0a01cc

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/BottomBarButton;

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContinueButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContinueButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContinueButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContinueButton:Lcom/samsung/android/settings/widget/BottomBarButton;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0807c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/BottomBarButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->rollbackFontScale()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
