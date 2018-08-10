.class Landroid/preference/PreferenceActivity$6;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Z

    move-result v24

    if-nez v24, :cond_0

    const/16 v24, 0x0

    return v24

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v16, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    :cond_1
    if-nez v16, :cond_2

    const/16 v24, 0x0

    return v24

    :cond_2
    if-nez v2, :cond_3

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    :goto_0
    const/16 v24, 0x1

    return v24

    :cond_3
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v2, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getX()F

    move-result v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v11, v12, v24

    add-float v21, v12, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get6(Landroid/preference/PreferenceActivity;)Z

    move-result v24

    if-eqz v24, :cond_a

    const v8, 0x3eae147a    # 0.33999997f

    const v7, 0x3f4ccccd    # 0.8f

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v20, v24

    if-lez v24, :cond_7

    int-to-float v0, v13

    move/from16 v24, v0

    cmpg-float v24, v21, v24

    if-gtz v24, :cond_7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v20, v24

    add-float v11, v11, v24

    int-to-float v0, v13

    move/from16 v24, v0

    div-float v18, v11, v24

    const v24, 0x3f4ccccd    # 0.8f

    cmpl-float v24, v18, v24

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v24, 0x1

    const/high16 v25, 0x41a00000    # 20.0f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v11, v19

    int-to-float v0, v13

    move/from16 v24, v0

    sub-float v11, v24, v19

    :cond_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v12, v11, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get12(Landroid/preference/PreferenceActivity;)Z

    move-result v24

    if-eqz v24, :cond_6

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-set2(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get4(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get8(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v14, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v22, v4, v14

    int-to-float v0, v13

    move/from16 v24, v0

    div-float v5, v11, v24

    mul-float v9, v22, v5

    sub-float v10, v22, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v10, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get6(Landroid/preference/PreferenceActivity;)Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get4(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get8(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_0

    :cond_7
    const/16 v24, 0x0

    cmpg-float v24, v20, v24

    if-gez v24, :cond_5

    const/16 v24, 0x0

    cmpl-float v24, v21, v24

    if-ltz v24, :cond_5

    add-float v11, v11, v20

    int-to-float v0, v13

    move/from16 v24, v0

    div-float v18, v11, v24

    const v24, 0x3eae147a    # 0.33999997f

    cmpg-float v24, v18, v24

    if-gez v24, :cond_9

    int-to-float v0, v13

    move/from16 v24, v0

    const v25, 0x3eae147a    # 0.33999997f

    mul-float v11, v24, v25

    :cond_8
    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v12, v11, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    :cond_9
    const v24, 0x3f4ccccd    # 0.8f

    cmpl-float v24, v18, v24

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v24, 0x1

    const/high16 v25, 0x41a00000    # 20.0f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v11, v19

    int-to-float v0, v13

    move/from16 v24, v0

    sub-float v11, v24, v19

    goto :goto_3

    :cond_a
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v20, v24

    if-lez v24, :cond_d

    int-to-float v0, v13

    move/from16 v24, v0

    cmpg-float v24, v21, v24

    if-gtz v24, :cond_d

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v20, v24

    add-float v11, v11, v24

    int-to-float v0, v13

    move/from16 v24, v0

    div-float v18, v11, v24

    const v24, 0x3f28f5c3    # 0.66f

    cmpl-float v24, v18, v24

    if-lez v24, :cond_c

    int-to-float v0, v13

    move/from16 v24, v0

    const v25, 0x3f28f5c3    # 0.66f

    mul-float v11, v24, v25

    :cond_b
    :goto_4
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v12, v11, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    :cond_c
    const v24, 0x3e4ccccd    # 0.2f

    cmpg-float v24, v18, v24

    if-gez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v24, 0x1

    const/high16 v25, 0x41a00000    # 20.0f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v11, v19

    goto :goto_4

    :cond_d
    const/16 v24, 0x0

    cmpg-float v24, v20, v24

    if-gez v24, :cond_5

    const/16 v24, 0x0

    cmpl-float v24, v21, v24

    if-ltz v24, :cond_5

    add-float v11, v11, v20

    int-to-float v0, v13

    move/from16 v24, v0

    div-float v18, v11, v24

    const v24, 0x3e4ccccd    # 0.2f

    cmpg-float v24, v18, v24

    if-gez v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v24, 0x1

    const/high16 v25, 0x41a00000    # 20.0f

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v11, v19

    :cond_e
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v12, v11, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get4(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get8(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_10
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v2, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get4(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Landroid/preference/PreferenceActivity;->-get9()F

    move-result v24

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_11

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-set0(F)F

    :cond_11
    const/16 v24, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get8(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getX()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v23, v24, v25

    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_13

    const/16 v23, 0x0

    :cond_13
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    const/16 v24, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
