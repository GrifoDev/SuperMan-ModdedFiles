.class Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "GuidanceStylingRelativeLayout.java"


# instance fields
.field private mTitleKeylinePercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getKeyLinePercent(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    return-void
.end method

.method public static getKeyLinePercent(Landroid/content/Context;)F
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$styleable;->LeanbackGuidedStepTheme_guidedStepKeyline:I

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 12

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v11, Landroid/support/v17/leanback/R$id;->guidance_title:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v11, Landroid/support/v17/leanback/R$id;->guidance_breadcrumb:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v11, Landroid/support/v17/leanback/R$id;->guidance_description:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v11, Landroid/support/v17/leanback/R$id;->guidance_icon:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Landroid/support/v17/leanback/widget/GuidanceStylingRelativeLayout;->mTitleKeylinePercent:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v10, v11

    float-to-int v6, v10

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v10, v6, v9

    sub-int/2addr v10, v3

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    sub-int v1, v10, v11

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v8, v1, v10

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_0

    invoke-virtual {v2, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    invoke-virtual {v7, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_1

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-ne v10, p0, :cond_2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v6, v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    :cond_2
    return-void
.end method
