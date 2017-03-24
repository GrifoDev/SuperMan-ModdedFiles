.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDualImageClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private DIGITS:[I

.field private mCacheKey:Ljava/lang/String;

.field private mFontScale:F

.field private mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

.field private mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mHomecityHour10th:Landroid/widget/ImageView;

.field private mHomecityHour1th:Landroid/widget/ImageView;

.field private mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

.field private mHomecityMin10th:Landroid/widget/ImageView;

.field private mHomecityMin1th:Landroid/widget/ImageView;

.field private mHomecityTimeImageSet:Landroid/widget/LinearLayout;

.field private mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

.field private mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mRoamingHour10th:Landroid/widget/ImageView;

.field private mRoamingHour1th:Landroid/widget/ImageView;

.field private mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

.field private mRoamingMin10th:Landroid/widget/ImageView;

.field private mRoamingMin1th:Landroid/widget/ImageView;

.field private mRoamingTimeImageSet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mFontScale:F

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_5:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_6:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_7:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_8:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_9:I

    const/16 v2, 0x9

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    return-void
.end method

.method private setDIGITSArrayImage(Landroid/widget/ImageView;I)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    array-length v1, v2

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardDualImageClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->DIGITS:[I

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setHomeIcon(F)V
    .locals 11

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$drawable;->lock_roaming_ic_home_mtrl:I

    sget v8, Lcom/android/keyguard/R$drawable;->lock_roaming_whitebg_ic_home_mtrl:I

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_dual_home_icon_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {v1, v10, v10, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, v4, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Lcom/android/keyguard/KeyguardTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "KeyguardDualImageClockView"

    const-string/jumbo v7, "Exception at adding home icon!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V
    .locals 3

    const/4 v2, 0x0

    if-nez p4, :cond_0

    invoke-direct {p0, p2, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    invoke-direct {p0, p1, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    rem-int/lit8 v1, p4, 0xa

    invoke-direct {p0, p2, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    div-int/lit8 v0, p4, 0xa

    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_dual_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mFontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setHomeIcon(F)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_locale_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_time_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingTimeImageSet:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_time_hour_10th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour10th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_time_hour_1th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour1th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_time_minute_10th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin10th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_time_minute_1th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin1th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_ampm_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_roaming_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_locale_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_time_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityTimeImageSet:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_time_hour_10th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour10th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_time_hour_1th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour1th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_time_minute_10th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin10th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_time_minute_1th:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin1th:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_ampm_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_homecity_date_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isLTRClockLayoutDespiteArabic()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingTimeImageSet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityTimeImageSet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldAddTimeTextForRoamingTime()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_korea:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldShowSeoulTextForHomeTime()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Asia/Seoul"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_seoul:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mFontScale:F

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mFontScale:F

    invoke-direct {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setHomeIcon(F)V

    return-void

    :cond_3
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_roaming:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_dualclock_locale_view_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xa

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v12, 0xb

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const-string/jumbo v12, "KeyguardDualImageClockView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "refreshTime() Roaming >> min:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour_day:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_0
    const/16 v12, 0xc

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v12, 0xb

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const-string/jumbo v12, "KeyguardDualImageClockView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "refreshTime() Homecity >> min:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", hour_day:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/keyguard/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour1th:Landroid/widget/ImageView;

    invoke-direct {p0, v12, v13, v7, v10}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour1th:Landroid/widget/ImageView;

    invoke-direct {p0, v12, v13, v7, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    :goto_1
    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin1th:Landroid/widget/ImageView;

    rem-int/lit8 v13, v11, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingMin10th:Landroid/widget/ImageView;

    div-int/lit8 v13, v11, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin1th:Landroid/widget/ImageView;

    rem-int/lit8 v13, v6, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityMin10th:Landroid/widget/ImageView;

    div-int/lit8 v13, v6, 0xa

    invoke-direct {p0, v12, v13}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    return-void

    :cond_0
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingHour1th:Landroid/widget/ImageView;

    if-nez v9, :cond_2

    const/16 v9, 0xc

    :cond_2
    invoke-direct {p0, v12, v13, v7, v9}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    iget-object v12, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour10th:Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityHour1th:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    const/16 v4, 0xc

    :cond_3
    invoke-direct {p0, v12, v13, v7, v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setHour(Landroid/widget/ImageView;Landroid/widget/ImageView;ZI)V

    goto :goto_1
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextView;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityLocaleView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityAmpmView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mRoamingDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mHomecityDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->mFontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardDualImageClockView;->setHomeIcon(F)V

    return-void
.end method
