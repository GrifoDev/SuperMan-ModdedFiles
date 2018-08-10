.class Landroid/support/v7/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x2

    const/4 v3, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    iput-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->tooltip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    sget v1, Landroid/support/v7/appcompat/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/support/v7/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Landroid/support/v7/appcompat/R$dimen;->tooltip_precise_anchor_threshold:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    move/from16 v9, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Landroid/support/v7/appcompat/R$dimen;->tooltip_precise_anchor_extra_offset:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    add-int v7, p3, v8

    sub-int v6, p3, v8

    :goto_1
    const/16 v19, 0x31

    move/from16 v0, v19

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    if-eqz p4, :cond_2

    sget v19, Landroid/support/v7/appcompat/R$dimen;->tooltip_y_offset_touch:I

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/support/v7/widget/TooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v19, "TooltipPopup"

    const-string/jumbo v20, "Cannot find app view"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v9, v19, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    sget v19, Landroid/support/v7/appcompat/R$dimen;->tooltip_y_offset_non_touch:I

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    if-gez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v19, "status_bar_height"

    const-string/jumbo v20, "dimen"

    const-string/jumbo v21, "android"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    :goto_3
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-int v21, v21, v22

    aput v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    sub-int v21, v21, v22

    aput v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v19, v19, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v12}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v19, v19, v6

    sub-int v19, v19, v15

    sub-int v17, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    add-int v19, v19, v7

    add-int v18, v19, v15

    if-eqz p4, :cond_7

    if-ltz v17, :cond_6

    move/from16 v0, v17

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_4
    return-void

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_6
    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_7
    add-int v19, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    move/from16 v0, v18

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4

    :cond_8
    move/from16 v0, v17

    move-object/from16 v1, p5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_4
.end method

.method private static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method hide()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method updateContent(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
