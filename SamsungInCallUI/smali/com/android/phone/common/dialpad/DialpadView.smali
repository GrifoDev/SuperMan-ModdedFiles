.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final DELAY_MULTIPLIER:D = 0.66

.field private static final DURATION_MULTIPLIER:D = 0.8

.field private static final KEY_FRAME_DURATION:I = 0x21

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mCanDigitsBeEdited:Z

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mIldCountry:Landroid/widget/TextView;

.field private mIldRate:Landroid/widget/TextView;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mRateContainer:Landroid/view/ViewGroup;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    sget-object v0, Lcom/android/incallui/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0457

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

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

.method private getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getKeyButtonAnimationDelay(I)I
    .locals 6

    const/16 v4, 0xa5

    const/16 v3, 0x84

    const/16 v2, 0x63

    const/16 v1, 0x42

    const/16 v0, 0x21

    iget-boolean v5, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v5, :cond_17

    iget-boolean v5, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v5, :cond_c

    const v5, 0x7f100136

    if-ne p1, v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x7f100139

    if-ne p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x7f10013c

    if-ne p1, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const v0, 0x7f100141

    if-ne p1, v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    const v0, 0x7f100135

    if-ne p1, v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    const v0, 0x7f100138

    if-ne p1, v0, :cond_6

    const/16 v0, 0xc6

    goto :goto_0

    :cond_6
    const v0, 0x7f10013b

    if-ne p1, v0, :cond_7

    const/16 v0, 0xe7

    goto :goto_0

    :cond_7
    const v0, 0x7f100143

    if-ne p1, v0, :cond_8

    const/16 v0, 0x108

    goto :goto_0

    :cond_8
    const v0, 0x7f10013f

    if-ne p1, v0, :cond_9

    const/16 v0, 0x129

    goto :goto_0

    :cond_9
    const v0, 0x7f100137

    if-ne p1, v0, :cond_a

    const/16 v0, 0x14a

    goto :goto_0

    :cond_a
    const v0, 0x7f10013a

    if-eq p1, v0, :cond_b

    const v0, 0x7f100142

    if-ne p1, v0, :cond_22

    :cond_b
    const/16 v0, 0x16b

    goto :goto_0

    :cond_c
    const v5, 0x7f10013f

    if-eq p1, v5, :cond_0

    const v0, 0x7f100137

    if-ne p1, v0, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    const v0, 0x7f10013a

    if-ne p1, v0, :cond_e

    move v0, v2

    goto :goto_0

    :cond_e
    const v0, 0x7f100142

    if-ne p1, v0, :cond_f

    move v0, v3

    goto :goto_0

    :cond_f
    const v0, 0x7f100135

    if-ne p1, v0, :cond_10

    move v0, v4

    goto :goto_0

    :cond_10
    const v0, 0x7f100138

    if-ne p1, v0, :cond_11

    const/16 v0, 0xc6

    goto :goto_0

    :cond_11
    const v0, 0x7f10013b

    if-ne p1, v0, :cond_12

    const/16 v0, 0xe7

    goto/16 :goto_0

    :cond_12
    const v0, 0x7f100143

    if-ne p1, v0, :cond_13

    const/16 v0, 0x108

    goto/16 :goto_0

    :cond_13
    const v0, 0x7f100136

    if-ne p1, v0, :cond_14

    const/16 v0, 0x129

    goto/16 :goto_0

    :cond_14
    const v0, 0x7f100139

    if-ne p1, v0, :cond_15

    const/16 v0, 0x14a

    goto/16 :goto_0

    :cond_15
    const v0, 0x7f10013c

    if-eq p1, v0, :cond_16

    const v0, 0x7f100141

    if-ne p1, v0, :cond_22

    :cond_16
    const/16 v0, 0x16b

    goto/16 :goto_0

    :cond_17
    const v5, 0x7f10013f

    if-eq p1, v5, :cond_0

    const v0, 0x7f100135

    if-ne p1, v0, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    const v0, 0x7f100136

    if-ne p1, v0, :cond_19

    move v0, v2

    goto/16 :goto_0

    :cond_19
    const v0, 0x7f100137

    if-ne p1, v0, :cond_1a

    move v0, v3

    goto/16 :goto_0

    :cond_1a
    const v0, 0x7f100138

    if-ne p1, v0, :cond_1b

    move v0, v4

    goto/16 :goto_0

    :cond_1b
    const v0, 0x7f100139

    if-ne p1, v0, :cond_1c

    const/16 v0, 0xc6

    goto/16 :goto_0

    :cond_1c
    const v0, 0x7f10013a

    if-ne p1, v0, :cond_1d

    const/16 v0, 0xe7

    goto/16 :goto_0

    :cond_1d
    const v0, 0x7f10013b

    if-ne p1, v0, :cond_1e

    const/16 v0, 0x108

    goto/16 :goto_0

    :cond_1e
    const v0, 0x7f10013c

    if-ne p1, v0, :cond_1f

    const/16 v0, 0x129

    goto/16 :goto_0

    :cond_1f
    const v0, 0x7f100142

    if-ne p1, v0, :cond_20

    const/16 v0, 0x14a

    goto/16 :goto_0

    :cond_20
    const v0, 0x7f100143

    if-eq p1, v0, :cond_21

    const v0, 0x7f100141

    if-ne p1, v0, :cond_22

    :cond_21
    const/16 v0, 0x16b

    goto/16 :goto_0

    :cond_22
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to get animation delay for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getKeyButtonAnimationDuration(I)I
    .locals 6

    const v5, 0x7f100136

    const v4, 0x7f100135

    const/16 v0, 0x14a

    const/16 v1, 0x129

    const/16 v2, 0x108

    iget-boolean v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v3, :cond_6

    const v3, 0x7f10013f

    if-eq p1, v3, :cond_0

    const v3, 0x7f100137

    if-eq p1, v3, :cond_0

    const v3, 0x7f10013a

    if-eq p1, v3, :cond_0

    const v3, 0x7f100142

    if-ne p1, v3, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p1, v4, :cond_3

    const v2, 0x7f100138

    if-eq p1, v2, :cond_3

    const v2, 0x7f10013b

    if-eq p1, v2, :cond_3

    const v2, 0x7f100143

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-eq p1, v5, :cond_1

    const v1, 0x7f100139

    if-eq p1, v1, :cond_1

    const v1, 0x7f10013c

    if-eq p1, v1, :cond_1

    const v1, 0x7f100141

    if-eq p1, v1, :cond_1

    :cond_5
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to get animation duration for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const v3, 0x7f10013f

    if-eq p1, v3, :cond_1

    const v3, 0x7f100137

    if-eq p1, v3, :cond_1

    const v3, 0x7f10013a

    if-eq p1, v3, :cond_1

    const v3, 0x7f100142

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_7

    const v0, 0x7f100138

    if-eq p1, v0, :cond_7

    const v0, 0x7f10013b

    if-eq p1, v0, :cond_7

    const v0, 0x7f100143

    if-ne p1, v0, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-eq p1, v5, :cond_9

    const v0, 0x7f100139

    if-eq p1, v0, :cond_9

    const v0, 0x7f10013c

    if-eq p1, v0, :cond_9

    const v0, 0x7f100141

    if-ne p1, v0, :cond_5

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    const v3, 0x7f10013f

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    const v3, 0x7f100137

    if-eq p1, v3, :cond_1

    const v3, 0x7f100138

    if-eq p1, v3, :cond_1

    const v3, 0x7f100139

    if-eq p1, v3, :cond_1

    const v0, 0x7f10013a

    if-eq p1, v0, :cond_b

    const v0, 0x7f10013b

    if-eq p1, v0, :cond_b

    const v0, 0x7f10013c

    if-ne p1, v0, :cond_c

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f100142

    if-eq p1, v0, :cond_d

    const v0, 0x7f100143

    if-eq p1, v0, :cond_d

    const v0, 0x7f100141

    if-ne p1, v0, :cond_5

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

.method private setupKeypad()V
    .locals 14

    const/4 v6, 0x0

    const/16 v0, 0xc

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "fa"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    move-object v4, v0

    :goto_0
    move v5, v6

    :goto_1
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v0, v0

    if-ge v5, v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v1, 0x7f10013d

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f10013e

    invoke-virtual {v0, v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v3, v3, v5

    const v7, 0x7f100141

    if-ne v3, v7, :cond_3

    const v3, 0x7f09056a

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f020080

    invoke-direct {p0, v3, v10}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    invoke-virtual {v0, v7}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "\u2217"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_1

    aget v0, v8, v5

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v3, v3, v5

    const v7, 0x7f100142

    if-ne v3, v7, :cond_4

    const v3, 0x7f09056d

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_2

    :cond_4
    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aget v7, v8, v5

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v10

    new-instance v11, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v11, v7}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v13

    const/16 v13, 0x21

    invoke-interface {v10, v11, v12, v7, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object v7, v3

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0202d6

    invoke-direct {p0, v3, v10}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f020078

    invoke-direct {p0, v3, v10}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    goto/16 :goto_3

    :cond_7
    const v0, 0x7f10013f

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v1, 0x7f09054b

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    const v1, 0x7f090542

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f090552
        0x7f090555
        0x7f090558
        0x7f09055a
        0x7f09055c
        0x7f09055e
        0x7f090560
        0x7f090562
        0x7f090564
        0x7f090566
        0x7f09056c
        0x7f090569
    .end array-data
.end method


# virtual methods
.method public animateShow()V
    .locals 11

    const/4 v10, 0x0

    new-instance v3, Lcom/android/phone/common/dialpad/DialpadView$1;

    invoke-direct {v3, p0}, Lcom/android/phone/common/dialpad/DialpadView$1;-><init>(Lcom/android/phone/common/dialpad/DialpadView;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDelay(I)I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDuration(I)I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    invoke-virtual {v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    :goto_1
    iget v7, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationX(F)V

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :goto_2
    sget-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v4, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationY(F)V

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public canDigitsBeEdited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mCanDigitsBeEdited:Z

    return v0
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCallRateInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldRate:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCanDigitsBeEdited(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mCanDigitsBeEdited:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public setShowVoicemailButton(Z)V
    .locals 2

    const v0, 0x7f100140

    invoke-virtual {p0, v0}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
