.class Lcom/android/settings/SettingsActivity$18;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initializeLayoutBySplitBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 34

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f07073a

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0b04ab

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move/from16 v1, v31

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f070621

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v31, v0

    if-eqz v31, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    :cond_0
    if-nez v22, :cond_1

    const/16 v31, 0x0

    return v31

    :cond_1
    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080775

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get11(Lcom/android/settings/SettingsActivity;)Z

    move-result v31

    if-eqz v31, :cond_3

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-set7(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get7(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v18, v0

    add-float v29, v7, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v8, v15, v31

    mul-float v11, v29, v8

    sub-float v13, v29, v11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v19

    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v32, v11, v29

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v12, v0

    sub-int v14, v17, v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, v19

    iput v14, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get7(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    :cond_3
    const/16 v31, 0x1

    return v31

    :cond_4
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getX()F

    move-result v16

    add-float v28, v16, v27

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v15, v16, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v31

    if-eqz v31, :cond_c

    const v23, 0x3eae147a    # 0.33999997f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v5, v31, v26

    sub-int v31, v17, v6

    move/from16 v0, v31

    int-to-float v10, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v27, v31

    if-lez v31, :cond_8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v28, v31

    if-gtz v31, :cond_8

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v27, v31

    add-float v15, v15, v31

    cmpl-float v31, v15, v10

    if-lez v31, :cond_6

    add-float v31, v10, v21

    cmpg-float v31, v15, v31

    if-gtz v31, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v31

    move/from16 v0, v31

    if-le v0, v6, :cond_5

    move v15, v10

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v10, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    :cond_6
    add-float v31, v10, v21

    cmpl-float v31, v15, v31

    if-lez v31, :cond_7

    cmpg-float v31, v15, v5

    if-gtz v31, :cond_7

    move v15, v5

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v5, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_7
    cmpg-float v31, v15, v10

    if-gtz v31, :cond_2

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_8
    const/16 v31, 0x0

    cmpg-float v31, v27, v31

    if-gez v31, :cond_2

    const/16 v31, 0x0

    cmpl-float v31, v28, v31

    if-ltz v31, :cond_2

    add-float v15, v15, v27

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v25, v15, v31

    const v31, 0x3eae147a    # 0.33999997f

    cmpg-float v31, v25, v31

    if-gez v31, :cond_9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3eae147a    # 0.33999997f

    mul-float v15, v31, v32

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_9
    add-float v31, v10, v21

    cmpl-float v31, v15, v31

    if-lez v31, :cond_a

    cmpg-float v31, v15, v5

    if-gtz v31, :cond_a

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    :cond_a
    add-float v31, v10, v21

    cmpg-float v31, v15, v31

    if-gtz v31, :cond_b

    cmpl-float v31, v15, v10

    if-lez v31, :cond_b

    move v15, v10

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v10, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_b
    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_c
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v27, v31

    if-lez v31, :cond_10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v28, v31

    if-gtz v31, :cond_10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v27, v31

    add-float v15, v15, v31

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v25, v15, v31

    const v31, 0x3f28f5c3    # 0.66f

    cmpl-float v31, v25, v31

    if-lez v31, :cond_d

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3f28f5c3    # 0.66f

    mul-float v15, v31, v32

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_d
    cmpg-float v31, v15, v21

    if-gtz v31, :cond_e

    cmpl-float v31, v15, v26

    if-lez v31, :cond_e

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    :cond_e
    cmpl-float v31, v15, v21

    if-lez v31, :cond_f

    int-to-float v0, v6

    move/from16 v31, v0

    cmpg-float v31, v15, v31

    if-gtz v31, :cond_f

    int-to-float v15, v6

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_f
    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_10
    const/16 v31, 0x0

    cmpg-float v31, v27, v31

    if-gez v31, :cond_2

    const/16 v31, 0x0

    cmpl-float v31, v28, v31

    if-ltz v31, :cond_2

    add-float v15, v15, v27

    int-to-float v0, v6

    move/from16 v31, v0

    cmpg-float v31, v15, v31

    if-gtz v31, :cond_12

    cmpl-float v31, v15, v21

    if-lez v31, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v31

    move/from16 v0, v31

    if-le v0, v6, :cond_11

    int-to-float v15, v6

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    goto/16 :goto_0

    :cond_12
    cmpg-float v31, v15, v21

    if-gtz v31, :cond_13

    cmpl-float v31, v15, v26

    if-lez v31, :cond_13

    move/from16 v15, v26

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v26, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_13
    int-to-float v0, v6

    move/from16 v31, v0

    cmpl-float v31, v15, v31

    if-lez v31, :cond_2

    div-int/lit8 v31, v24, 0x2

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v16, v15, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    :cond_14
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v2, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get9()F

    move-result v31

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_15

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-set5(F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const-string/jumbo v32, "com.android.settings_preferences"

    const/16 v33, 0x4

    invoke-virtual/range {v31 .. v33}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v31, "split_bar_left_wegigh"

    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get9()F

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080774

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get7(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/LinearLayout;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v30, v31, v32

    const/16 v31, 0x0

    cmpg-float v31, v30, v31

    if-gez v31, :cond_17

    const/16 v30, 0x0

    :cond_17
    const/16 v31, 0x3

    move/from16 v0, v31

    if-eq v2, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Lcom/android/settings/SettingsActivity;->-set6(Lcom/android/settings/SettingsActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080774

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$18;->this$0:Lcom/android/settings/SettingsActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/settings/SettingsActivity;->-get7(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method
