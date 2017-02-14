.class Landroid/widget/ActionMenuPresenter$SemOverflowText;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOverflowText"
.end annotation


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentFontScale:F

.field private mDefaultTextSize:F

.field private mMaxFontScale:F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    const v4, 0x10102f6

    invoke-direct {p0, p2, v8, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v4, 0x3f99999a    # 1.2f

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    invoke-virtual {p0, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v8, v5, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0xbb

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    :cond_0
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040346

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080763

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    return-void
.end method

.method private changeButtonBackground()V
    .locals 5

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v2}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_2

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x1080763

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const v3, 0x10102f6

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get1(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    :cond_0
    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string/jumbo v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    return-void
.end method

.method public performClick()Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method
