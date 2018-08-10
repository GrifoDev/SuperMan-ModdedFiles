.class Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemOverflowMenuButtonContainer"
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63


# instance fields
.field private mBadgeAdditionalWidth:F

.field private mBadgeDefaultWidth:F

.field private mBadgeView:Landroid/widget/TextView;

.field private mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

.field private mNumberFormat:Ljava/text/NumberFormat;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x2

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get11(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    return-void

    :cond_0
    new-instance v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;

    invoke-direct {v0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method invalidateBadgeText()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v5}, Landroid/widget/ActionMenuPresenter;->-get5(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->semGetSumOfDigitsInBadges()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getOverflowBadgeText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/16 v5, 0x63

    if-le v0, v5, :cond_3

    const/16 v1, 0x63

    :goto_0
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105024a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iput v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeDefaultWidth:F

    iget-object v7, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeAdditionalWidth:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050249

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050248

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int v5, v6, v3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v2, :cond_1

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    const v8, 0x10102f6

    invoke-virtual {v6, v9, v7, v8, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v6, 0x24

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-le v5, v4, :cond_3

    iput v5, v2, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_3
    iput v4, v2, Landroid/widget/ActionMenuView$LayoutParams;->width:I

    goto :goto_1
.end method

.method setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->mButtonView:Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
