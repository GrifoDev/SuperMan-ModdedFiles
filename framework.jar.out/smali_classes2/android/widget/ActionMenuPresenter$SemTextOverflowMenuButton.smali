.class Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTextOverflowMenuButton"
.end annotation


# static fields
.field private static final MAX_FONT_SCALE:F = 1.2f


# instance fields
.field private mCurrentFontScale:F

.field private mDefaultTextSize:F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x3f99999a    # 1.2f

    const/4 v6, 0x0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v8, v5, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0xbb

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextAppearance(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040589

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p2, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_0

    iput v7, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    :cond_0
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10807ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->changeButtonBackground()V

    return-void
.end method


# virtual methods
.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x3f99999a    # 1.2f

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const v3, 0x10102f6

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->-get2(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iput v5, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    :cond_0
    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mDefaultTextSize:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->mCurrentFontScale:F

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040589

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->changeButtonBackground()V

    return-void
.end method

.method public performClick()Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method

.method setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
