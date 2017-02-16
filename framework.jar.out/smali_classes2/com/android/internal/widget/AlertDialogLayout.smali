.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 223
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 226
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 227
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 230
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 233
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 234
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 237
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 238
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 226
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private resolveMinimumHeight(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 255
    .local v0, "minHeight":I
    if-lez v0, :cond_0

    .line 256
    return v0

    .line 259
    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 260
    check-cast v1, Landroid/view/ViewGroup;

    .line 261
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 262
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v2

    return v2

    .line 266
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return v4
.end method

.method private tryOnMeasure(II)Z
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 74
    const/16 v20, 0x0

    .line 75
    .local v20, "topPanel":Landroid/view/View;
    const/4 v4, 0x0

    .line 76
    .local v4, "buttonPanel":Landroid/view/View;
    const/16 v18, 0x0

    .line 78
    .local v18, "middlePanel":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v9

    .line 79
    .local v9, "count":I
    const/4 v14, 0x0

    .end local v4    # "buttonPanel":Landroid/view/View;
    .end local v18    # "middlePanel":Landroid/view/View;
    .end local v20    # "topPanel":Landroid/view/View;
    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_2

    .line 80
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 81
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 79
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v15

    .line 86
    .local v15, "id":I
    sparse-switch v15, :sswitch_data_0

    .line 103
    const/16 v24, 0x0

    return v24

    .line 88
    :sswitch_0
    move-object/from16 v20, v6

    .line 89
    .local v20, "topPanel":Landroid/view/View;
    goto :goto_1

    .line 91
    .end local v20    # "topPanel":Landroid/view/View;
    :sswitch_1
    move-object v4, v6

    .line 92
    .local v4, "buttonPanel":Landroid/view/View;
    goto :goto_1

    .line 95
    .end local v4    # "buttonPanel":Landroid/view/View;
    :sswitch_2
    if-eqz v18, :cond_1

    .line 97
    const/16 v24, 0x0

    return v24

    .line 99
    :cond_1
    move-object/from16 v18, v6

    .line 100
    .local v18, "middlePanel":Landroid/view/View;
    goto :goto_1

    .line 107
    .end local v6    # "child":Landroid/view/View;
    .end local v15    # "id":I
    .end local v18    # "middlePanel":Landroid/view/View;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 108
    .local v10, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 109
    .local v11, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 111
    .local v22, "widthMode":I
    const/4 v8, 0x0

    .line 112
    .local v8, "childState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v25

    add-int v21, v24, v25

    .line 114
    .local v21, "usedHeight":I
    if-eqz v20, :cond_3

    .line 115
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 118
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 121
    :cond_3
    const/4 v3, 0x0

    .line 122
    .local v3, "buttonHeight":I
    const/4 v5, 0x0

    .line 123
    .local v5, "buttonWantsHeight":I
    if-eqz v4, :cond_4

    .line 124
    const/16 v24, 0x0

    move/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 125
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v3

    .line 126
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v5, v24, v3

    .line 128
    add-int v21, v21, v3

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 132
    :cond_4
    const/16 v17, 0x0

    .line 133
    .local v17, "middleHeight":I
    if-eqz v18, :cond_5

    .line 135
    if-nez v10, :cond_a

    .line 136
    const/4 v7, 0x0

    .line 142
    .local v7, "childHeightSpec":I
    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 143
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 145
    add-int v21, v21, v17

    .line 146
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 149
    .end local v7    # "childHeightSpec":I
    :cond_5
    sub-int v19, v11, v21

    .line 154
    .local v19, "remainingHeight":I
    if-eqz v4, :cond_7

    .line 155
    sub-int v21, v21, v3

    .line 157
    move/from16 v0, v19

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 158
    .local v13, "heightToGive":I
    if-lez v13, :cond_6

    .line 159
    sub-int v19, v19, v13

    .line 160
    add-int/2addr v3, v13

    .line 164
    :cond_6
    const/high16 v24, 0x40000000    # 2.0f

    .line 163
    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 165
    .restart local v7    # "childHeightSpec":I
    move/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Landroid/view/View;->measure(II)V

    .line 167
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 168
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 173
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_7
    if-eqz v18, :cond_8

    if-lez v19, :cond_8

    .line 174
    sub-int v21, v21, v17

    .line 176
    move/from16 v13, v19

    .line 177
    .restart local v13    # "heightToGive":I
    sub-int v19, v19, v19

    .line 178
    add-int v17, v17, v13

    .line 183
    move/from16 v0, v17

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 185
    .restart local v7    # "childHeightSpec":I
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 187
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v21, v21, v24

    .line 188
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 192
    .end local v7    # "childHeightSpec":I
    .end local v13    # "heightToGive":I
    :cond_8
    const/16 v16, 0x0

    .line 193
    .local v16, "maxWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_b

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 195
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 196
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 193
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 139
    .end local v6    # "child":Landroid/view/View;
    .end local v16    # "maxWidth":I
    .end local v19    # "remainingHeight":I
    :cond_a
    sub-int v24, v11, v21

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 138
    move/from16 v0, v24

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto/16 :goto_2

    .line 200
    .end local v7    # "childHeightSpec":I
    .restart local v16    # "maxWidth":I
    .restart local v19    # "remainingHeight":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v25

    add-int v24, v24, v25

    add-int v16, v16, v24

    .line 202
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v23

    .line 203
    .local v23, "widthSizeAndState":I
    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v12

    .line 204
    .local v12, "heightSizeAndState":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    .line 208
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 209
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    .line 212
    :cond_c
    const/16 v24, 0x1

    return v24

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x102037f -> :sswitch_0
        0x1020383 -> :sswitch_1
        0x1020386 -> :sswitch_2
        0x1020388 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    :cond_0
    return-void
.end method
