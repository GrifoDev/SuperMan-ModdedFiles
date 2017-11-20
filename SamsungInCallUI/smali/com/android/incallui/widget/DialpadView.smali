.class public Lcom/android/incallui/widget/DialpadView;
.super Lcom/android/phone/common/dialpad/DialpadView;


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
        0x7f100143
        0x7f10013f
        0x7f100135
        0x7f100136
        0x7f100137
        0x7f100138
        0x7f100139
        0x7f10013a
        0x7f10013b
        0x7f10013c
        0x7f100142
        0x7f100141
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
        0x7f100143
        0x7f10013f
        0x7f100135
        0x7f100136
        0x7f100137
        0x7f100138
        0x7f100139
        0x7f10013a
        0x7f10013b
        0x7f10013c
        0x7f100142
        0x7f100141
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
        0x7f100143
        0x7f10013f
        0x7f100135
        0x7f100136
        0x7f100137
        0x7f100138
        0x7f100139
        0x7f10013a
        0x7f10013b
        0x7f10013c
        0x7f100142
        0x7f100141
    .end array-data
.end method

.method private setupKeypad()V
    .locals 23

    const/16 v3, 0xc

    new-array v14, v3, [I

    fill-array-data v14, :array_0

    const/16 v3, 0xc

    new-array v15, v3, [I

    fill-array-data v15, :array_1

    const/16 v3, 0xc

    new-array v0, v3, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const/4 v3, 0x0

    move v10, v3

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    array-length v3, v3

    if-ge v10, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    aget v3, v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    if-eqz v4, :cond_f

    const v3, 0x7f10013d

    invoke-virtual {v4, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f10013e

    invoke-virtual {v4, v5}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f1002fa

    invoke-virtual {v4, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v11, v6

    move-object v12, v5

    move-object v13, v3

    :goto_1
    if-nez v18, :cond_6

    if-eqz v11, :cond_6

    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_2
    aget v3, v14, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_1

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v5, "\u2217"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "*"

    invoke-virtual {v4, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v3, "support_folder_single_lcd"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setFocusable(Z)V

    :cond_3
    if-eqz v12, :cond_4

    aget v3, v15, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v11, :cond_5

    aget v3, v16, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    goto/16 :goto_0

    :cond_6
    if-eqz v18, :cond_0

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    const/16 v3, 0xa

    if-eq v10, v3, :cond_0

    const/16 v3, 0xb

    if-eq v10, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0579

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a00a0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a013a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v7, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0370

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v6, v3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    const/4 v3, 0x1

    move v5, v3

    :goto_3
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a02d9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0235

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0a0234

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v7, v3

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v6, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    move v3, v6

    move v6, v7

    move v7, v8

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0636

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v7, v3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a064e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a064d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0a064c

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move/from16 v22, v3

    move v3, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v22

    :goto_4
    const/4 v9, 0x0

    invoke-virtual {v12, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-nez v5, :cond_9

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v5, v8, v9, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v5, v8, v9, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_9
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v12, :cond_b

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v13, v5, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a02ec

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11, v5, v3, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_b
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a0370

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a0336

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0635

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    move/from16 v22, v3

    move v3, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v22

    goto/16 :goto_4

    :cond_e
    return-void

    :cond_f
    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    goto/16 :goto_1

    :cond_10
    move v8, v7

    move v7, v6

    move v6, v3

    move v3, v9

    goto/16 :goto_4

    :array_0
    .array-data 4
        0x7f090554
        0x7f090557
        0x7f09055a
        0x7f09055c
        0x7f09055e
        0x7f090560
        0x7f090562
        0x7f090564
        0x7f090566
        0x7f090568
        0x7f09056e
        0x7f09056b
    .end array-data

    :array_1
    .array-data 4
        0x7f090553
        0x7f090556
        0x7f090559
        0x7f09055b
        0x7f09055d
        0x7f09055f
        0x7f090561
        0x7f090563
        0x7f090565
        0x7f090567
        0x7f09056d
        0x7f09056a
    .end array-data

    :array_2
    .array-data 4
        0x7f090555
        0x7f090558
        0x7f090147
        0x7f090148
        0x7f090149
        0x7f09014a
        0x7f09014b
        0x7f09014c
        0x7f09014d
        0x7f09014e
        0x7f09056f
        0x7f09056c
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

    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    invoke-super {p0}, Lcom/android/phone/common/dialpad/DialpadView;->onFinishInflate()V

    return-void
.end method
