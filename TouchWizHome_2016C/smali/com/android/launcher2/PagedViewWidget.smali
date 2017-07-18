.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/FrameLayout;
.source "PagedViewWidget.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;,
        Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;
    }
.end annotation


# static fields
.field private static final sPreviewFadeInDuration:J = 0x50L

.field private static final sPreviewFadeInStaggerDuration:J = 0x14L


# instance fields
.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mDeleteRegion:Landroid/graphics/Rect;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mHighlightColor:I

.field private mImage:Landroid/widget/ImageView;

.field private mIsChecked:Z

.field protected mLoadTask:Lcom/android/launcher2/utils/common/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/utils/common/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mTalkbackDimen:Ljava/lang/String;

.field private final mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

.field protected mUninstallIcon:Landroid/widget/ImageView;

.field protected mUninstallIconHideAnimation:Landroid/view/animation/Animation;

.field private mUninstallIconHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mUninstallIconShowAnimation:Landroid/view/animation/Animation;

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const v3, 0x7f0c0039

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    new-instance v2, Lcom/android/launcher2/PagedViewWidget$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PagedViewWidget$1;-><init>(Lcom/android/launcher2/PagedViewWidget;)V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIconHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    const v2, 0x7f0c003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    :cond_0
    const v2, 0x7f05001c

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIconShowAnimation:Landroid/view/animation/Animation;

    const v2, 0x7f05001b

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIconHideAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIconHideAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIconHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    const v2, 0x7f0900e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mTalkbackDimen:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setWillNotDraw(Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setClipToPadding(Z)V

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getText_highlight()I

    move-result v2

    const v3, 0x1ffffff

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getText_highlight()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mHighlightColor:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getThreadPool()Lcom/android/launcher2/utils/common/ThreadPool;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

    return-void

    :cond_1
    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mHighlightColor:I

    goto :goto_0
.end method

.method private setChecked(ZZ)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eq v2, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p2, :cond_3

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    :cond_1
    return-void

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setAlpha(F)V

    goto :goto_1
.end method


# virtual methods
.method public applyCellSpan(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v1, 0x7f11001b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mTalkbackDimen:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/PagedViewWidget;->changeTextColor(ZLandroid/widget/TextView;)V

    :cond_0
    iput p2, p0, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    iput p1, p0, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    return-void
.end method

.method public applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getEnableHighContrast()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, p1, v7}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    const/4 v6, -0x1

    if-le v3, v6, :cond_1

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/android/launcher2/PagedViewWidget;->mHighlightColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v3, v1

    const/4 v8, 0x0

    invoke-interface {v0, v6, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/PagedViewWidget;->changeTextColor(ZLandroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public applyLabel(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/PagedViewWidget;->changeTextColor(ZLandroid/widget/TextView;)V

    goto :goto_0
.end method

.method applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x50

    int-to-long v4, p2

    const-wide/16 v6, 0x14

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public changeTextColor(ZLandroid/widget/TextView;)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz p1, :cond_2

    const v8, 0x7f0c0061

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v5, v8

    const v8, 0x7f0c0060

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v3, v8

    const v8, 0x7f0e002e

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e002f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    new-instance v4, Landroid/graphics/LightingColorFilter;

    const/4 v8, 0x0

    invoke-direct {v4, v1, v8}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v8, 0x0

    invoke-virtual {p2, v5, v8, v3, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getArrowBtn()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void

    :cond_2
    const v8, 0x7f0c0063

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v5, v8

    const v8, 0x7f0c0062

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v3, v8

    const v8, 0x7f0e0001

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0e0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v11, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    :cond_0
    div-int/lit8 v4, v3, 0x2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    invoke-direct {v0, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v9, v0}, Lcom/android/launcher2/PagedViewWidget;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v8, v9, v4

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v9, v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0165

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollX()I

    move-result v9

    add-int/2addr v1, v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollY()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    add-int v10, v1, v7

    add-int v11, v1, v6

    add-int/2addr v11, v7

    add-int v12, v8, v3

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public enterUninstallMode(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    const/4 v2, 0x1

    iget-boolean v3, v0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setTalkbackDescription(ZZ)V

    iget-boolean v2, v0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setUninstallDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/PagedViewWidget;->setUninstallIconVisibility(ILandroid/widget/ImageView;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setArrowBtnVisibility(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->startShowOverlayAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->setAlphaArrowBtn(I)V

    goto :goto_0
.end method

.method public exitUninstallMode(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    const/4 v2, 0x0

    iget-boolean v3, v0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setTalkbackDescription(ZZ)V

    const/16 v2, 0xff

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->setAlphaArrowBtn(I)V

    iget-boolean v2, v0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->startHideOverlayAnimation()V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->setArrowBtnVisibility(Z)V

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setUninstallIconVisibility(ILandroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method protected getArrowBtn()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f11001a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected getUninstallIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    return v0
.end method

.method protected loadPreview(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {p2, p3, p4}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f11001e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f11001c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIcon:Landroid/widget/ImageView;

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected postToSetPreview(Ljava/lang/Object;II)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    goto :goto_0
.end method

.method protected requestPreview(Lcom/android/launcher2/PagedViewGridLayout;Ljava/lang/Object;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

    new-instance v1, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/launcher2/PagedViewWidget$PreviewLoadTask;-><init>(Lcom/android/launcher2/PagedViewWidget;Ljava/lang/Object;II)V

    new-instance v2, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;

    invoke-direct {v2, p0, p1, p3, p4}, Lcom/android/launcher2/PagedViewWidget$PreviewJobListener;-><init>(Lcom/android/launcher2/PagedViewWidget;Lcom/android/launcher2/PagedViewGridLayout;II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/utils/common/ThreadPool;->submit(Lcom/android/launcher2/utils/common/ThreadPool$Job;Lcom/android/launcher2/utils/common/FutureListener;)Lcom/android/launcher2/utils/common/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    return-void
.end method

.method protected resetToRecycle()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    invoke-interface {v1}, Lcom/android/launcher2/utils/common/Future;->cancel()V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->exitUninstallMode(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f11001a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setAlphaArrowBtn(I)V
    .locals 0

    return-void
.end method

.method protected setArrowBtnVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(ZZ)V

    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTalkbackDescription(ZZ)V
    .locals 5

    const v2, 0x7f11001a

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setUninstallDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setUninstallIconVisibility(ILandroid/widget/ImageView;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected startHideOverlayAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIconHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected startShowOverlayAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mUninstallIconShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
