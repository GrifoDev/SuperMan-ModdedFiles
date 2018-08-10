.class Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemImageOverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    sget-object v2, Lcom/android/internal/R$styleable;->ImageView:[I

    const v3, 0x10102f6

    invoke-virtual {p2, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108084e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->mShowingButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->changeButtonBackground()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/widget/ActionMenuPresenter;->-set3(Landroid/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-get10(Landroid/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method hasNavigationbar()Z
    .locals 8

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const v6, 0x1050158

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_0

    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-ne v6, v4, :cond_1

    :cond_0
    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const v7, 0x10102f6

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x25

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

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

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltip()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    :cond_1
    return v1
.end method

.method public performLongClick()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected setFrame(IIII)Z
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setFrame(IIII)Z

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    div-int/lit8 v3, v5, 0x2

    add-int v7, v3, v6

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v7, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return v1
.end method

.method setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setTooltipOffset()V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingStart()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingEnd()I

    move-result v12

    const/4 v10, 0x0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationInWindow([I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string/jumbo v24, "window"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v6, v15}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v5, 0x0

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/ActionMenuPresenter;->-get5(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v24

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/ActionMenuPresenter;->-get5(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    :goto_0
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/Toolbar;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v24

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    const/16 v24, 0x0

    aget v24, v18, v24

    const/16 v25, 0x0

    aget v25, v21, v25

    sub-int v24, v24, v25

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v5, v24, v25

    :cond_0
    const/16 v24, 0x1

    aget v24, v21, v24

    add-int v23, v24, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLayoutDirection()I

    move-result v24

    if-nez v24, :cond_4

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    const/16 v25, 0x0

    aget v25, v21, v25

    add-int v25, v25, v20

    sub-int v24, v24, v25

    sub-int v25, v20, v13

    sub-int v25, v25, v12

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    add-int v24, v24, v12

    sub-int v22, v24, v5

    const v24, 0x1120096

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->hasNavigationbar()Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0x3

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    :cond_1
    const v24, 0x1050158

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v14, v15, Landroid/util/DisplayMetrics;->density:F

    div-float v24, v11, v4

    mul-float v24, v24, v14

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v22, v22, v24

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipPosition(II)V

    return-void

    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v24, 0x0

    aget v24, v21, v24

    add-int v24, v24, v20

    sub-int v25, v20, v13

    sub-int v25, v25, v12

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    sub-int v22, v24, v13

    goto :goto_1
.end method
