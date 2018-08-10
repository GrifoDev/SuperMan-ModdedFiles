.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# static fields
.field public static final FINISH:Z

.field public static final REVEAL_THE_NAME:Z


# instance fields
.field mInterpolator:Landroid/view/animation/PathInterpolator;

.field mKeyCount:I

.field mLayout:Landroid/widget/FrameLayout;

.field mTapCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 11

    const/4 v10, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x44160000    # 600.0f

    mul-float/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    float-to-int v4, v5

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x42200000    # 40.0f

    mul-float/2addr v5, v1

    float-to-int v3, v5

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTranslationZ(F)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    const/4 v6, -0x1

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const v7, 0x1080645

    invoke-virtual {p0, v7}, Lcom/android/internal/app/PlatLogoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestFocus()Z

    new-instance v5, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v4, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x320

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
