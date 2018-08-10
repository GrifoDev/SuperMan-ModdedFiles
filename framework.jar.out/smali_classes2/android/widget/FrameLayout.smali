.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "measurement:measureAllChildren"

    iget-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v0, "padding:foregroundPaddingLeft"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "padding:foregroundPaddingTop"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "padding:foregroundPaddingRight"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "padding:foregroundPaddingBottom"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    sget-boolean v0, Landroid/widget/FrameLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method layoutChildren(IIIIZ)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v13

    sub-int v18, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v19

    sub-int v14, v18, v19

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    sub-int v18, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v19

    sub-int v12, v18, v19

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    const v7, 0x800033

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v10

    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v16, v7, 0x70

    and-int/lit8 v18, v2, 0x7

    sparse-switch v18, :sswitch_data_0

    :cond_1
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    :goto_1
    sparse-switch v16, :sswitch_data_1

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    :goto_2
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :sswitch_0
    sub-int v18, v14, v13

    sub-int v18, v18, v17

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v13

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_1

    :sswitch_1
    if-nez p5, :cond_1

    sub-int v18, v14, v17

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_1

    :sswitch_2
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    goto :goto_2

    :sswitch_3
    sub-int v18, v12, v15

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_2

    :sswitch_4
    sub-int v18, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_2

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_4

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v9, v2}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v9

    if-eqz v19, :cond_2

    move-object/from16 v0, v16

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/16 v19, 0x1

    goto :goto_0

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    add-int v18, v18, v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    add-int v17, v17, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    :cond_6
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1, v9}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v9, 0x10

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v2, 0x1

    if-le v11, v2, :cond_9

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v11, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_3
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_4
    invoke-virtual {v3, v10, v8}, Landroid/view/View;->measure(II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v10

    goto :goto_3

    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v8

    goto :goto_4

    :cond_9
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    goto :goto_0
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
