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

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

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

    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

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

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

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

    const/16 v28, 0xc

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    const/16 v28, 0xc

    move/from16 v0, v28

    new-array v9, v0, [I

    fill-array-data v9, :array_1

    const/16 v28, 0xc

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/4 v4, 0x0

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v6, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    move-object/from16 v28, v0

    aget v28, v28, v6

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    if-eqz v4, :cond_0

    const v28, 0x7f1000fc

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    const v28, 0x7f1000fd

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v28, 0x7f100270

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v28

    if-nez v28, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0137

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v28

    if-nez v28, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v28

    if-eqz v28, :cond_a

    :cond_1
    const/16 v16, 0x1

    :goto_1
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v16, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f8

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f7

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v18

    move/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v25, :cond_3

    if-eqz v12, :cond_3

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04fa

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0350

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a1

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v10, v0

    if-eqz v16, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04fb

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0x11

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04f6

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0x11

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-nez v7, :cond_d

    if-eqz v25, :cond_d

    const/16 v28, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_4
    aget v28, v17, v6

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v21, :cond_5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_5
    if-eqz v4, :cond_7

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v28, "\u2217"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    const-string v28, "*"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    const-string v28, "support_folder_single_lcd"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setFocusable(Z)V

    :cond_7
    if-eqz v12, :cond_8

    aget v28, v9, v6

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-eqz v25, :cond_9

    aget v28, v23, v6

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_b
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v18

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const-wide v28, 0x3ff3333333333333L    # 1.2

    const v30, 0x7f0a0137

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setMaximumTextSP(Landroid/widget/TextView;DI)V

    goto/16 :goto_2

    :cond_c
    const/16 v28, 0x11

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0x3

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v18

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v28, 0x11

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0x3

    const v29, 0x7f1000fc

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v28, 0xf

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v28, 0xc

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v13, v0, v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

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

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a04fa

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0136

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0135

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0587

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0306

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0255

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0253

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0589

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a05a4

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a05a3

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a05a2

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    :cond_f
    :goto_5
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v28

    if-eqz v28, :cond_4

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0587

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v11, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a036d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a0588

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v5, v0

    goto :goto_5

    :cond_12
    return-void

    :array_0
    .array-data 4
        0x7f09049b
        0x7f09049e
        0x7f0904a1
        0x7f0904a3
        0x7f0904a5
        0x7f0904a7
        0x7f0904a9
        0x7f0904ab
        0x7f0904ad
        0x7f0904af
        0x7f0904b5
        0x7f0904b2
    .end array-data

    :array_1
    .array-data 4
        0x7f09049a
        0x7f09049d
        0x7f0904a0
        0x7f0904a2
        0x7f0904a4
        0x7f0904a6
        0x7f0904a8
        0x7f0904aa
        0x7f0904ac
        0x7f0904ae
        0x7f0904b4
        0x7f0904b1
    .end array-data

    :array_2
    .array-data 4
        0x7f09049c
        0x7f09049f
        0x7f0900f6
        0x7f0900f7
        0x7f0900f8
        0x7f0900f9
        0x7f0900fa
        0x7f0900fb
        0x7f0900fc
        0x7f0900fd
        0x7f0904b6
        0x7f0904b3
    .end array-data
.end method


# virtual methods
.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    invoke-super {p0}, Lcom/android/phone/common/dialpad/DialpadView;->onFinishInflate()V

    return-void
.end method
