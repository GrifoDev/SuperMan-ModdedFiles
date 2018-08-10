.class abstract Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SemOverflowMenuButton"
.end annotation


# instance fields
.field protected mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field protected mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected changeButtonBackground()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getContext()Landroid/content/Context;

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
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v1, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const/4 v3, 0x0

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->changeButtonBackground()V

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

.method abstract setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method
