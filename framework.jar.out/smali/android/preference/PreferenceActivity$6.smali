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
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 849
    iput-object p1, p0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 854
    const/16 v23, 0x0

    return v23

    .line 857
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 858
    .local v2, "action":I
    const/4 v15, 0x0

    .line 859
    .local v15, "splitBar":Landroid/view/View;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 860
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 863
    .end local v15    # "splitBar":Landroid/view/View;
    :cond_1
    if-nez v15, :cond_2

    .line 864
    const/16 v23, 0x0

    return v23

    .line 867
    :cond_2
    if-nez v2, :cond_3

    .line 869
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    .line 1027
    :goto_0
    const/16 v23, 0x1

    return v23

    .line 872
    :cond_3
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v2, v0, :cond_10

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 874
    .local v16, "splitBarwidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 876
    .local v12, "parentLayoutWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 877
    .local v19, "touchX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getX()F

    move-result v11

    .line 878
    .local v11, "newSplitBarPosX":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v10, v11, v23

    .line 879
    .local v10, "newSplitBarCenterPosX":F
    add-float v20, v11, v19

    .line 882
    .local v20, "touchXInParentRect":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get6(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 885
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_7

    int-to-float v0, v12

    move/from16 v23, v0

    cmpg-float v23, v20, v23

    if-gtz v23, :cond_7

    .line 887
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v19, v23

    add-float v10, v10, v23

    .line 890
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    .line 884
    .local v17, "splitRatio":F
    const v23, 0x3f4ccccd    # 0.8f

    .line 891
    cmpl-float v23, v17, v23

    if-lez v23, :cond_4

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 893
    .local v3, "d":Landroid/util/DisplayMetrics;
    const/16 v23, 0x1

    .line 894
    const/high16 v24, 0x41a00000    # 20.0f

    .line 893
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    .line 896
    .local v18, "splitXinFullview":F
    move/from16 v10, v18

    .line 897
    int-to-float v0, v12

    move/from16 v23, v0

    sub-float v10, v23, v18

    .line 899
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v18    # "splitXinFullview":F
    :cond_4
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    .line 967
    .end local v17    # "splitRatio":F
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 968
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-set2(Z)Z

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const v24, 0x1020457

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 970
    .local v4, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 972
    .local v7, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get7(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 975
    .local v14, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 976
    .local v5, "leftPanelWeight":F
    iget v13, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 977
    .local v13, "rightPanelWeight":F
    add-float v21, v5, v13

    .line 979
    .local v21, "weightSum":F
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v6, v10, v23

    .line 981
    .local v6, "leftPanelWidthRatio":F
    mul-float v8, v21, v6

    .line 982
    .local v8, "newLeftPanelWeight":F
    sub-float v9, v21, v8

    .line 984
    .local v9, "newRightPanelWeight":F
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 985
    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get6(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 990
    invoke-virtual {v4, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get7(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v5    # "leftPanelWeight":F
    .end local v6    # "leftPanelWidthRatio":F
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "newLeftPanelWeight":F
    .end local v9    # "newRightPanelWeight":F
    .end local v13    # "rightPanelWeight":F
    .end local v14    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "weightSum":F
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_0

    .line 903
    :cond_7
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_5

    const/16 v23, 0x0

    cmpl-float v23, v20, v23

    if-ltz v23, :cond_5

    .line 905
    add-float v10, v10, v19

    .line 908
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    .line 883
    .restart local v17    # "splitRatio":F
    const v23, 0x3eae147a    # 0.33999997f

    .line 909
    cmpg-float v23, v17, v23

    if-gez v23, :cond_9

    .line 910
    int-to-float v0, v12

    move/from16 v23, v0

    .line 883
    const v24, 0x3eae147a    # 0.33999997f

    .line 910
    mul-float v10, v23, v24

    .line 921
    :cond_8
    :goto_3
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    .line 884
    :cond_9
    const v23, 0x3f4ccccd    # 0.8f

    .line 912
    cmpl-float v23, v17, v23

    if-lez v23, :cond_8

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 914
    .restart local v3    # "d":Landroid/util/DisplayMetrics;
    const/16 v23, 0x1

    .line 915
    const/high16 v24, 0x41a00000    # 20.0f

    .line 914
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    .line 917
    .restart local v18    # "splitXinFullview":F
    move/from16 v10, v18

    .line 918
    int-to-float v0, v12

    move/from16 v23, v0

    sub-float v10, v23, v18

    goto :goto_3

    .line 928
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v17    # "splitRatio":F
    .end local v18    # "splitXinFullview":F
    :cond_a
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_d

    int-to-float v0, v12

    move/from16 v23, v0

    cmpg-float v23, v20, v23

    if-gtz v23, :cond_d

    .line 930
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v19, v23

    add-float v10, v10, v23

    .line 933
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    .line 934
    .restart local v17    # "splitRatio":F
    const v23, 0x3f28f5c3    # 0.66f

    cmpl-float v23, v17, v23

    if-lez v23, :cond_c

    .line 935
    int-to-float v0, v12

    move/from16 v23, v0

    const v24, 0x3f28f5c3    # 0.66f

    mul-float v10, v23, v24

    .line 944
    :cond_b
    :goto_4
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    .line 937
    :cond_c
    const v23, 0x3e4ccccd    # 0.2f

    cmpg-float v23, v17, v23

    if-gez v23, :cond_b

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 939
    .restart local v3    # "d":Landroid/util/DisplayMetrics;
    const/16 v23, 0x1

    .line 940
    const/high16 v24, 0x41a00000    # 20.0f

    .line 939
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    .line 942
    .restart local v18    # "splitXinFullview":F
    move/from16 v10, v18

    goto :goto_4

    .line 948
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v17    # "splitRatio":F
    .end local v18    # "splitXinFullview":F
    :cond_d
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_5

    const/16 v23, 0x0

    cmpl-float v23, v20, v23

    if-ltz v23, :cond_5

    .line 950
    add-float v10, v10, v19

    .line 953
    int-to-float v0, v12

    move/from16 v23, v0

    div-float v17, v10, v23

    .line 954
    .restart local v17    # "splitRatio":F
    const v23, 0x3e4ccccd    # 0.2f

    cmpg-float v23, v17, v23

    if-gez v23, :cond_e

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 956
    .restart local v3    # "d":Landroid/util/DisplayMetrics;
    const/16 v23, 0x1

    .line 957
    const/high16 v24, 0x41a00000    # 20.0f

    .line 956
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    .line 959
    .restart local v18    # "splitXinFullview":F
    move/from16 v10, v18

    .line 961
    .end local v3    # "d":Landroid/util/DisplayMetrics;
    .end local v18    # "splitXinFullview":F
    :cond_e
    div-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v11, v10, v23

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/View;->setX(F)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    .line 994
    .end local v17    # "splitRatio":F
    .restart local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .restart local v5    # "leftPanelWeight":F
    .restart local v6    # "leftPanelWidthRatio":F
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "newLeftPanelWeight":F
    .restart local v9    # "newRightPanelWeight":F
    .restart local v13    # "rightPanelWeight":F
    .restart local v14    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "weightSum":F
    :cond_f
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get7(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 1000
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v5    # "leftPanelWeight":F
    .end local v6    # "leftPanelWidthRatio":F
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "newLeftPanelWeight":F
    .end local v9    # "newRightPanelWeight":F
    .end local v10    # "newSplitBarCenterPosX":F
    .end local v11    # "newSplitBarPosX":F
    .end local v12    # "parentLayoutWidth":I
    .end local v13    # "rightPanelWeight":F
    .end local v14    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "splitBarwidth":I
    .end local v19    # "touchX":F
    .end local v20    # "touchXInParentRect":F
    .end local v21    # "weightSum":F
    :cond_10
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_12

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const v24, 0x1020457

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1003
    .restart local v4    # "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1006
    .restart local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Landroid/preference/PreferenceActivity;->-get8()F

    move-result v23

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_11

    .line 1007
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-set0(F)F

    .line 1011
    :cond_11
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    invoke-virtual {v15}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    .line 1014
    .end local v4    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v7    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get7(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getX()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v22, v23, v24

    .line 1015
    .local v22, "x":F
    const/16 v23, 0x0

    cmpg-float v23, v22, v23

    if-gez v23, :cond_13

    .line 1016
    const/16 v22, 0x0

    .line 1019
    :cond_13
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 1022
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/preference/PreferenceActivity;->-set1(Landroid/preference/PreferenceActivity;Z)Z

    .line 1025
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1020
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$6;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceActivity;->-get9(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_5
.end method
