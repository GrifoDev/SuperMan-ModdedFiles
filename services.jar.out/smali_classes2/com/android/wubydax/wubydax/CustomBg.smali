.class public Lcom/android/wubydax/wubydax/CustomBg;
.super Landroid/widget/ImageView;
.source "CustomBg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;
    }
.end annotation


# instance fields
.field private COLOR_PRIMARY_KEY:Ljava/lang/String;

.field private COLOR_SECONDARY_KEY:Ljava/lang/String;

.field private CROP_KEY:Ljava/lang/String;

.field private CUSTOM_BG_TYPE:Ljava/lang/String;

.field private GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

.field private MASTER_SWITCH_KEY:Ljava/lang/String;

.field private OPACITY_KEY:Ljava/lang/String;

.field private URI_KEY:Ljava/lang/String;

.field private mColorPrimary:I

.field private mColorSecondary:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCustomBgType:I

.field private mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

.field private mImageUri:Landroid/net/Uri;

.field private mIsEnabled:Z

.field private mOpacity:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "reboot_bg_image_uri"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->URI_KEY:Ljava/lang/String;

    const-string v1, "reboot_bg_opacity"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->OPACITY_KEY:Ljava/lang/String;

    const-string v1, "reboot_crop_type"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->CROP_KEY:Ljava/lang/String;

    const-string v1, "reboot_bg_primary_color"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    const-string v1, "reboot_second_gradient_color"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    const-string v1, "reboot_bg_gradient_orientation"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    const-string v1, "reboot_custom_bg"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->MASTER_SWITCH_KEY:Ljava/lang/String;

    const-string v1, "reboot_custom_bg_type"

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->CUSTOM_BG_TYPE:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;-><init>(Lcom/android/wubydax/wubydax/CustomBg;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    iput-object p1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/wubydax/wubydax/CustomBg;->initValues()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wubydax/wubydax/CustomBg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wubydax/wubydax/CustomBg;->initValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wubydax/wubydax/CustomBg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wubydax/wubydax/CustomBg;->initView()V

    return-void
.end method

.method private getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 4

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-boolean v5, p0, Lcom/android/wubydax/wubydax/CustomBg;->mIsEnabled:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomBgType:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    iget-object v5, p0, Lcom/android/wubydax/wubydax/CustomBg;->mImageUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/wubydax/wubydax/CustomBg;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/wubydax/wubydax/CustomBg;->mColorPrimary:I

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/android/wubydax/wubydax/CustomBg;->getGradientOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lcom/android/wubydax/wubydax/CustomBg;->mColorPrimary:I

    aput v7, v6, v8

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/wubydax/wubydax/CustomBg;->mColorSecondary:I

    aput v8, v6, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMyScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 4

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->CROP_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initValues()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/wubydax/wubydax/CustomBg;->URI_KEY:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mImageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/wubydax/wubydax/CustomBg;->MASTER_SWITCH_KEY:Ljava/lang/String;

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->OPACITY_KEY:Ljava/lang/String;

    const/16 v4, 0xff

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mOpacity:I

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mColorPrimary:I

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    const v4, -0xff0001

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mColorSecondary:I

    invoke-direct {p0}, Lcom/android/wubydax/wubydax/CustomBg;->getMyScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->CUSTOM_BG_TYPE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomBgType:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method private initView()V
    .locals 2

    invoke-direct {p0}, Lcom/android/wubydax/wubydax/CustomBg;->getMyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0, v0}, Lcom/android/wubydax/wubydax/CustomBg;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/android/wubydax/wubydax/CustomBg;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->MASTER_SWITCH_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->CROP_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->OPACITY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->COLOR_PRIMARY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->GRADIENT_ORIENTATION_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->COLOR_SECONDARY_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->URI_KEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->CUSTOM_BG_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/wubydax/wubydax/CustomBg;->mCustomViewObserver:Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/wubydax/wubydax/CustomBg;->initView()V

    return-void
.end method
