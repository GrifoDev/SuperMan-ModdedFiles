.class public Lcom/android/incallui/widget/DialpadView;
.super Lcom/android/phone/common/dialpad/DialpadView;
.source "DialpadView.java"


# instance fields
.field private hebrew:Ljava/lang/String;

.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mOverflowMenuButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    .line 53
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x7f100102
        0x7f1000fe
        0x7f1000f4
        0x7f1000f5
        0x7f1000f6
        0x7f1000f7
        0x7f1000f8
        0x7f1000f9
        0x7f1000fa
        0x7f1000fb
        0x7f100101
        0x7f100100
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    .line 57
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x7f100102
        0x7f1000fe
        0x7f1000f4
        0x7f1000f5
        0x7f1000f6
        0x7f1000f7
        0x7f1000f8
        0x7f1000f9
        0x7f1000fa
        0x7f1000fb
        0x7f100101
        0x7f100100
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    .line 61
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x7f100102
        0x7f1000fe
        0x7f1000f4
        0x7f1000f5
        0x7f1000f6
        0x7f1000f7
        0x7f1000f8
        0x7f1000f9
        0x7f1000fa
        0x7f1000fb
        0x7f100101
        0x7f100100
    .end array-data
.end method

.method private setupKeypad()V
    .locals 32

    .prologue
    .line 88
    const/16 v28, 0xc

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 94
    .local v17, "numberIds":[I
    const/16 v28, 0xc

    move/from16 v0, v28

    new-array v9, v0, [I

    fill-array-data v9, :array_1

    .line 100
    .local v9, "letterIds":[I
    const/16 v28, 0xc

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    .line 106
    .local v23, "subLetterIds":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 108
    .local v22, "resources":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 109
    .local v4, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const/16 v21, 0x0

    .line 110
    .local v21, "numberView":Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 111
    .local v12, "lettersView":Landroid/widget/TextView;
    const/16 v25, 0x0

    .line 112
    .local v25, "subLettersView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 114
    .local v7, "isHebrew":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v6, v0, :cond_12

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    move-object/from16 v28, v0

    aget v28, v28, v6

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 116
    .restart local v4    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    if-eqz v4, :cond_0

    .line 117
    const v28, 0x7f1000fc

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21    # "numberView":Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 118
    .restart local v21    # "numberView":Landroid/widget/TextView;
    const v28, 0x7f1000fd

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "lettersView":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 119
    .restart local v12    # "lettersView":Landroid/widget/TextView;
    const v28, 0x7f100270

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .end local v25    # "subLettersView":Landroid/widget/TextView;
    check-cast v25, Landroid/widget/TextView;

    .line 122
    .restart local v25    # "subLettersView":Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v28

    if-nez v28, :cond_3

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0137

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    .line 124
    .local v19, "numberSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    .line 125
    .local v18, "numberMargin":I
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v28

    if-nez v28, :cond_1

    .line 126
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v28

    if-eqz v28, :cond_a

    :cond_1
    const/16 v16, 0x1

    .line 128
    .local v16, "needToShowLandDialpad":Z
    :goto_1
    if-eqz v21, :cond_2

    .line 129
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    .local v14, "lpNumber":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v16, :cond_b

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f2

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    .line 132
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    .line 134
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v18

    move/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .end local v14    # "lpNumber":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    if-eqz v25, :cond_3

    if-eqz v12, :cond_3

    .line 145
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    .local v15, "lpSubLetters":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    .local v13, "lpLettersView":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f4

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    .line 149
    .local v24, "subLettersSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0350

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 150
    .local v8, "keyLettersSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v10, v0

    .line 152
    .local v10, "lettersMargin":I
    if-eqz v16, :cond_c

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f5

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    .line 154
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 155
    const/16 v28, 0x11

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 157
    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 161
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 162
    const/16 v28, 0x11

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 164
    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    :goto_3
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .end local v8    # "keyLettersSize":F
    .end local v10    # "lettersMargin":I
    .end local v13    # "lpLettersView":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "lpSubLetters":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "needToShowLandDialpad":Z
    .end local v18    # "numberMargin":I
    .end local v19    # "numberSize":F
    .end local v24    # "subLettersSize":F
    :cond_3
    if-nez v7, :cond_d

    if-eqz v25, :cond_d

    .line 187
    const/16 v28, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_4
    :goto_4
    aget v28, v17, v6

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 240
    .local v20, "numberString":Ljava/lang/String;
    if-eqz v21, :cond_5

    .line 241
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 244
    :cond_5
    if-eqz v4, :cond_7

    .line 245
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    const-string v28, "\u2217"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 247
    const-string v28, "*"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 249
    :cond_6
    const-string v28, "support_folder_single_lcd"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 250
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setFocusable(Z)V

    .line 255
    :cond_7
    if-eqz v12, :cond_8

    .line 256
    aget v28, v9, v6

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_8
    if-eqz v25, :cond_9

    .line 260
    aget v28, v23, v6

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 126
    .end local v20    # "numberString":Ljava/lang/String;
    .restart local v18    # "numberMargin":I
    .restart local v19    # "numberSize":F
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 137
    .restart local v14    # "lpNumber":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16    # "needToShowLandDialpad":Z
    :cond_b
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v18

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 139
    const-wide v28, 0x3ff3333333333333L    # 1.2

    const v30, 0x7f0a0137

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setMaximumTextSP(Landroid/widget/TextView;DI)V

    goto/16 :goto_2

    .line 167
    .end local v14    # "lpNumber":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "keyLettersSize":F
    .restart local v10    # "lettersMargin":I
    .restart local v13    # "lpLettersView":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v15    # "lpSubLetters":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v24    # "subLettersSize":F
    :cond_c
    const/16 v28, 0x11

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 168
    const/16 v28, 0x3

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 169
    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 170
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v18

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    const/16 v28, 0x11

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 174
    const/16 v28, 0x3

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 176
    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v13, v0, v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 188
    .end local v8    # "keyLettersSize":F
    .end local v10    # "lettersMargin":I
    .end local v13    # "lpLettersView":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "lpSubLetters":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "needToShowLandDialpad":Z
    .end local v18    # "numberMargin":I
    .end local v19    # "numberSize":F
    .end local v24    # "subLettersSize":F
    :cond_d
    if-eqz v7, :cond_4

    if-eqz v12, :cond_4

    if-eqz v25, :cond_4

    if-eqz v6, :cond_4

    const/16 v28, 0xa

    move/from16 v0, v28

    if-eq v6, v0, :cond_4

    const/16 v28, 0xb

    move/from16 v0, v28

    if-eq v6, v0, :cond_4

    .line 189
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f4

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    .line 191
    .local v26, "textSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0136

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 192
    .local v27, "topMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0135

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    .line 193
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a057d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    .line 194
    .local v11, "lettersTopMargin":I
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0306

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0255

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0253

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    .line 198
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 199
    .local v10, "lettersMargin":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .end local v10    # "lettersMargin":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a057f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 204
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0599

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0598

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0597

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    .line 214
    :cond_f
    :goto_5
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    if-eqz v21, :cond_10

    .line 216
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 217
    .restart local v14    # "lpNumber":Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 218
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 219
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .end local v14    # "lpNumber":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_10
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 222
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    .restart local v10    # "lettersMargin":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 209
    .end local v10    # "lettersMargin":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a057d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a036d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a057e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    goto :goto_5

    .line 263
    .end local v5    # "height":I
    .end local v11    # "lettersTopMargin":I
    .end local v26    # "textSize":F
    .end local v27    # "topMargin":I
    :cond_12
    return-void

    .line 88
    :array_0
    .array-data 4
        0x7f090494
        0x7f090497
        0x7f09049a
        0x7f09049c
        0x7f09049e
        0x7f0904a0
        0x7f0904a2
        0x7f0904a4
        0x7f0904a6
        0x7f0904a8
        0x7f0904ae
        0x7f0904ab
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x7f090493
        0x7f090496
        0x7f090499
        0x7f09049b
        0x7f09049d
        0x7f09049f
        0x7f0904a1
        0x7f0904a3
        0x7f0904a5
        0x7f0904a7
        0x7f0904ad
        0x7f0904aa
    .end array-data

    .line 100
    :array_2
    .array-data 4
        0x7f090495
        0x7f090498
        0x7f0900f6
        0x7f0900f7
        0x7f0900f8
        0x7f0900f9
        0x7f0900fa
        0x7f0900fb
        0x7f0900fc
        0x7f0900fd
        0x7f0904af
        0x7f0904ac
    .end array-data
.end method


# virtual methods
.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 267
    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    .line 269
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    .line 66
    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    .line 68
    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    .line 73
    invoke-super {p0}, Lcom/android/phone/common/dialpad/DialpadView;->onFinishInflate()V

    .line 74
    return-void
.end method
