.class public Lcom/android/internal/widget/NotificationTemplateView;
.super Landroid/widget/FrameLayout;
.source "NotificationTemplateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationTemplateView$1;
    }
.end annotation


# static fields
.field private static final COLOR_HEADER:I = -0x828283

.field private static final COLOR_HEADER_INVERT:I = -0x373738

.field private static final COLOR_TEXT:I = -0xaeaeaf

.field private static final COLOR_TEXT_INVERT:I = -0x2c2c2d

.field private static final COLOR_TITLE:I = -0xdadadb

.field private static final COLOR_TITLE_INVERT:I = -0x1a1a1b

.field private static final DIMMED_BG_COLOR:I = -0x50506

.field private static final DIMMED_BG_COLOR_ON_WHITE:I = -0x50506

.field public static final MODE_NIO:I = 0x2

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_PUBLIC:I = 0x1

.field private static final STACK_SCROLLER_BG_COLOR:I = -0x171718

.field private static final STACK_SCROLLER_BG_COLOR_ON_WHITE:I = -0x5a5a5b

.field private static final TAG:Ljava/lang/String; = "NTV"


# instance fields
.field private final INVERSION_DB:Ljava/lang/String;

.field private mAppNameText:Ljava/lang/String;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDimmedBGView:Landroid/view/View;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIconView:Landroid/widget/ImageView;

.field private mInvertTextRunnable:Ljava/lang/Runnable;

.field private mIsAdaptiveTextColor:Z

.field private mIsWhiteWallpaper:Z

.field private mNIOBackground:Landroid/graphics/drawable/Drawable;

.field private mNIOBackgroundOnWhite:Landroid/graphics/drawable/Drawable;

.field private mNIODrawable:Landroid/graphics/drawable/Drawable;

.field private mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

.field private mNIOIconPadding:I

.field private mNIOIconSize:I

.field private mNIOView:Landroid/widget/ImageView;

.field private mNotificationColor:I

.field private mNotificationMinHeight:I

.field private mPrivateText:Ljava/lang/String;

.field private mPrivateTitle:Ljava/lang/String;

.field private mPublicText:Ljava/lang/String;

.field private mStackScrollerBGView:Landroid/view/View;

.field private mTextColorInversion:Z

.field private mViewOpacity:F


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/NotificationTemplateView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/NotificationTemplateView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/NotificationTemplateView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mInvertTextRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/NotificationTemplateView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/NotificationTemplateView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/NotificationTemplateView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    iput v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const v0, -0xa38b80

    iput v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    const-string/jumbo v0, "notification_text_color_inversion"

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->INVERSION_DB:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/widget/NotificationTemplateView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/NotificationTemplateView$1;-><init>(Lcom/android/internal/widget/NotificationTemplateView;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mInvertTextRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationTemplateView;->init()V

    return-void
.end method

.method private changeState(I)V
    .locals 7

    const v6, 0x1020504

    const v5, 0x1020016

    const/16 v4, 0x8

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPublicText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getFontScaledHeight(I)I
    .locals 4

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private makeContentView()V
    .locals 5

    const v4, 0x10201ea

    const/4 v3, 0x0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mBuilder:Landroid/app/Notification$Builder;

    const v2, 0x1080910

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x1020016

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x1020504

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mAppNameText:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x102028b

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x1020521

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    return-void
.end method

.method private setColorInversion(Z)V
    .locals 12

    const/4 v11, 0x2

    iget-boolean v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTextColorInversion:Z

    if-eq v9, p1, :cond_0

    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v10, 0x10201ea

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v10, 0x102028b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v8

    iget v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v9, 0x3

    new-array v6, v9, [F

    invoke-static {v8, v5, v2, v6}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    aget v9, v6, v11

    const v10, 0x3e99999a    # 0.3f

    add-float/2addr v9, v10

    aput v9, v6, v11

    aget v9, v6, v11

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v6, v11

    invoke-static {v0, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    const-string/jumbo v10, "NTV"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "noti primary color is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p1, :cond_2

    const-string/jumbo v9, " inverted "

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget v9, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v9, " not inverted "

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    goto :goto_2
.end method

.method private setTextInversion(F)V
    .locals 7

    iget-boolean v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    invoke-static {p1, v4}, Lcom/android/internal/util/NotificationColorUtil;->shouldInvertTextColor(FZ)Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTextColorInversion:Z

    if-eq v4, v0, :cond_4

    const-string/jumbo v4, "NTV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " textColor Inversion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setColorInversion(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v5, 0x1020504

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v5, 0x1020521

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_5

    const v4, -0x1a1a1b

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_6

    const v4, -0x2c2c2d

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_7

    const v4, -0x373738

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mTextColorInversion:Z

    :cond_4
    return-void

    :cond_5
    const v4, -0xdadadb

    goto :goto_0

    :cond_6
    const v4, -0xaeaeaf

    goto :goto_1

    :cond_7
    const v4, -0x828283

    goto :goto_2
.end method

.method private setViewOpacity(FZ)V
    .locals 5

    iget v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v0

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/android/internal/util/NotificationColorUtil;->getOpacityOnKeyguard(FIZ)F

    move-result v1

    const-string/jumbo v2, "NTV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " opacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dimmedF = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " stackScrollerF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setTextInversion(F)V

    iput p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 10

    const v6, 0x1080910

    const/4 v4, 0x0

    const v9, -0x50506

    const/4 v3, 0x1

    const v2, 0x1050178

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->getFontScaledHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationMinHeight:I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x105017a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconSize:I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1050179

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPadding:I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10405e6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mAppNameText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10405e8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10405e7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10405e9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPublicText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v5, 0x10805e3

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    const v5, 0x10805e4

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackgroundOnWhite:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v5, -0xbbbbbc

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationTemplateView;->makeContentView()V

    new-instance v2, Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    new-instance v2, Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPadding:I

    iget v6, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPadding:I

    iget v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPadding:I

    iget v8, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconPadding:I

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationTemplateView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOIconSize:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v2, :cond_0

    const v2, -0x5a5a5b

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "notification_text_color_inversion"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/internal/widget/NotificationTemplateView$2;

    iget-object v7, p0, Lcom/android/internal/widget/NotificationTemplateView;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/internal/widget/NotificationTemplateView$2;-><init>(Lcom/android/internal/widget/NotificationTemplateView;Landroid/os/Handler;)V

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "notification_text_color_inversion"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    invoke-direct {p0, v4}, Lcom/android/internal/widget/NotificationTemplateView;->changeState(I)V

    return-void

    :cond_0
    const v2, -0x171718

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationMinHeight:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const/high16 v4, -0x80000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    :cond_3
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setMeasuredDimension(II)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1, p2}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mAppNameText:Ljava/lang/String;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNotificationColor:I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationTemplateView;->makeContentView()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationTemplateView;->changeState(I)V

    :cond_1
    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateText:Ljava/lang/String;

    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "NTV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Change currentmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationTemplateView;->changeState(I)V

    iput p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mCurrentMode:I

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mContentView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIconView:Landroid/widget/ImageView;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setIsWhiteWallpaper(Z)V
    .locals 4

    const v3, -0x50506

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "NTV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " White Wallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mDimmedBGView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mStackScrollerBGView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    if-eqz v0, :cond_1

    const v0, -0x5a5a5b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackgroundOnWhite:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawableOnWhite:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mIsWhiteWallpaper:Z

    iget v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mViewOpacity:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationTemplateView;->setViewOpacity(FZ)V

    :cond_0
    return-void

    :cond_1
    const v0, -0x171718

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIOBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/NotificationTemplateView;->mNIODrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/NotificationTemplateView;->mPrivateTitle:Ljava/lang/String;

    return-void
.end method

.method public setViewOpacity(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setViewOpacity(FZ)V

    return-void
.end method
