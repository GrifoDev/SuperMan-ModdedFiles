.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


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

    .prologue
    .line 57
    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    .line 102
    sget-object v1, Lcom/android/incallui/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a042e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    .line 112
    return-void

    :cond_0
    move v1, v3

    .line 108
    goto :goto_0

    :cond_1
    move v2, v3

    .line 110
    goto :goto_1

    .line 82
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

.method private getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 226
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
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
    .param p1, "buttonId"    # I

    .prologue
    const/16 v4, 0xa5

    const/16 v3, 0x84

    const/16 v2, 0x63

    const/16 v1, 0x42

    const/16 v0, 0x21

    .line 334
    iget-boolean v5, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v5, :cond_17

    .line 335
    iget-boolean v5, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v5, :cond_c

    .line 336
    const v5, 0x7f1000f5

    if-ne p1, v5, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    const v0, 0x7f1000f8

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 339
    goto :goto_0

    .line 340
    :cond_2
    const v0, 0x7f1000fb

    if-ne p1, v0, :cond_3

    move v0, v2

    .line 341
    goto :goto_0

    .line 342
    :cond_3
    const v0, 0x7f100100

    if-ne p1, v0, :cond_4

    move v0, v3

    .line 343
    goto :goto_0

    .line 344
    :cond_4
    const v0, 0x7f1000f4

    if-ne p1, v0, :cond_5

    move v0, v4

    .line 345
    goto :goto_0

    .line 346
    :cond_5
    const v0, 0x7f1000f7

    if-ne p1, v0, :cond_6

    .line 347
    const/16 v0, 0xc6

    goto :goto_0

    .line 348
    :cond_6
    const v0, 0x7f1000fa

    if-ne p1, v0, :cond_7

    .line 349
    const/16 v0, 0xe7

    goto :goto_0

    .line 350
    :cond_7
    const v0, 0x7f100102

    if-ne p1, v0, :cond_8

    .line 351
    const/16 v0, 0x108

    goto :goto_0

    .line 352
    :cond_8
    const v0, 0x7f1000fe

    if-ne p1, v0, :cond_9

    .line 353
    const/16 v0, 0x129

    goto :goto_0

    .line 354
    :cond_9
    const v0, 0x7f1000f6

    if-ne p1, v0, :cond_a

    .line 355
    const/16 v0, 0x14a

    goto :goto_0

    .line 356
    :cond_a
    const v0, 0x7f1000f9

    if-eq p1, v0, :cond_b

    const v0, 0x7f100101

    if-ne p1, v0, :cond_22

    .line 357
    :cond_b
    const/16 v0, 0x16b

    goto :goto_0

    .line 360
    :cond_c
    const v5, 0x7f1000fe

    if-eq p1, v5, :cond_0

    .line 362
    const v0, 0x7f1000f6

    if-ne p1, v0, :cond_d

    move v0, v1

    .line 363
    goto :goto_0

    .line 364
    :cond_d
    const v0, 0x7f1000f9

    if-ne p1, v0, :cond_e

    move v0, v2

    .line 365
    goto :goto_0

    .line 366
    :cond_e
    const v0, 0x7f100101

    if-ne p1, v0, :cond_f

    move v0, v3

    .line 367
    goto :goto_0

    .line 368
    :cond_f
    const v0, 0x7f1000f4

    if-ne p1, v0, :cond_10

    move v0, v4

    .line 369
    goto :goto_0

    .line 370
    :cond_10
    const v0, 0x7f1000f7

    if-ne p1, v0, :cond_11

    .line 371
    const/16 v0, 0xc6

    goto :goto_0

    .line 372
    :cond_11
    const v0, 0x7f1000fa

    if-ne p1, v0, :cond_12

    .line 373
    const/16 v0, 0xe7

    goto/16 :goto_0

    .line 374
    :cond_12
    const v0, 0x7f100102

    if-ne p1, v0, :cond_13

    .line 375
    const/16 v0, 0x108

    goto/16 :goto_0

    .line 376
    :cond_13
    const v0, 0x7f1000f5

    if-ne p1, v0, :cond_14

    .line 377
    const/16 v0, 0x129

    goto/16 :goto_0

    .line 378
    :cond_14
    const v0, 0x7f1000f8

    if-ne p1, v0, :cond_15

    .line 379
    const/16 v0, 0x14a

    goto/16 :goto_0

    .line 380
    :cond_15
    const v0, 0x7f1000fb

    if-eq p1, v0, :cond_16

    const v0, 0x7f100100

    if-ne p1, v0, :cond_22

    .line 381
    :cond_16
    const/16 v0, 0x16b

    goto/16 :goto_0

    .line 385
    :cond_17
    const v5, 0x7f1000fe

    if-eq p1, v5, :cond_0

    .line 387
    const v0, 0x7f1000f4

    if-ne p1, v0, :cond_18

    move v0, v1

    .line 388
    goto/16 :goto_0

    .line 389
    :cond_18
    const v0, 0x7f1000f5

    if-ne p1, v0, :cond_19

    move v0, v2

    .line 390
    goto/16 :goto_0

    .line 391
    :cond_19
    const v0, 0x7f1000f6

    if-ne p1, v0, :cond_1a

    move v0, v3

    .line 392
    goto/16 :goto_0

    .line 393
    :cond_1a
    const v0, 0x7f1000f7

    if-ne p1, v0, :cond_1b

    move v0, v4

    .line 394
    goto/16 :goto_0

    .line 395
    :cond_1b
    const v0, 0x7f1000f8

    if-ne p1, v0, :cond_1c

    .line 396
    const/16 v0, 0xc6

    goto/16 :goto_0

    .line 397
    :cond_1c
    const v0, 0x7f1000f9

    if-ne p1, v0, :cond_1d

    .line 398
    const/16 v0, 0xe7

    goto/16 :goto_0

    .line 399
    :cond_1d
    const v0, 0x7f1000fa

    if-ne p1, v0, :cond_1e

    .line 400
    const/16 v0, 0x108

    goto/16 :goto_0

    .line 401
    :cond_1e
    const v0, 0x7f1000fb

    if-ne p1, v0, :cond_1f

    .line 402
    const/16 v0, 0x129

    goto/16 :goto_0

    .line 403
    :cond_1f
    const v0, 0x7f100101

    if-ne p1, v0, :cond_20

    .line 404
    const/16 v0, 0x14a

    goto/16 :goto_0

    .line 405
    :cond_20
    const v0, 0x7f100102

    if-eq p1, v0, :cond_21

    const v0, 0x7f100100

    if-ne p1, v0, :cond_22

    .line 406
    :cond_21
    const/16 v0, 0x16b

    goto/16 :goto_0

    .line 410
    :cond_22
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to get animation delay for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getKeyButtonAnimationDuration(I)I
    .locals 6
    .param p1, "buttonId"    # I

    .prologue
    const v5, 0x7f1000f5

    const v4, 0x7f1000f4

    const/16 v0, 0x14a

    const/16 v1, 0x129

    const/16 v2, 0x108

    .line 422
    iget-boolean v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v3, :cond_a

    .line 423
    iget-boolean v3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v3, :cond_6

    .line 424
    const v3, 0x7f1000fe

    if-eq p1, v3, :cond_0

    const v3, 0x7f1000f6

    if-eq p1, v3, :cond_0

    const v3, 0x7f1000f9

    if-eq p1, v3, :cond_0

    const v3, 0x7f100101

    if-ne p1, v3, :cond_2

    :cond_0
    move v0, v2

    .line 458
    :cond_1
    :goto_0
    return v0

    .line 427
    :cond_2
    if-eq p1, v4, :cond_3

    const v2, 0x7f1000f7

    if-eq p1, v2, :cond_3

    const v2, 0x7f1000fa

    if-eq p1, v2, :cond_3

    const v2, 0x7f100102

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    .line 429
    goto :goto_0

    .line 430
    :cond_4
    if-eq p1, v5, :cond_1

    const v1, 0x7f1000f8

    if-eq p1, v1, :cond_1

    const v1, 0x7f1000fb

    if-eq p1, v1, :cond_1

    const v1, 0x7f100100

    if-eq p1, v1, :cond_1

    .line 457
    :cond_5
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to get animation duration for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :cond_6
    const v3, 0x7f1000fe

    if-eq p1, v3, :cond_1

    const v3, 0x7f1000f6

    if-eq p1, v3, :cond_1

    const v3, 0x7f1000f9

    if-eq p1, v3, :cond_1

    const v3, 0x7f100101

    if-eq p1, v3, :cond_1

    .line 438
    if-eq p1, v4, :cond_7

    const v0, 0x7f1000f7

    if-eq p1, v0, :cond_7

    const v0, 0x7f1000fa

    if-eq p1, v0, :cond_7

    const v0, 0x7f100102

    if-ne p1, v0, :cond_8

    :cond_7
    move v0, v1

    .line 440
    goto :goto_0

    .line 441
    :cond_8
    if-eq p1, v5, :cond_9

    const v0, 0x7f1000f8

    if-eq p1, v0, :cond_9

    const v0, 0x7f1000fb

    if-eq p1, v0, :cond_9

    const v0, 0x7f100100

    if-ne p1, v0, :cond_5

    :cond_9
    move v0, v2

    .line 443
    goto :goto_0

    .line 447
    :cond_a
    const v3, 0x7f1000fe

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    const v3, 0x7f1000f6

    if-eq p1, v3, :cond_1

    const v3, 0x7f1000f7

    if-eq p1, v3, :cond_1

    const v3, 0x7f1000f8

    if-eq p1, v3, :cond_1

    .line 450
    const v0, 0x7f1000f9

    if-eq p1, v0, :cond_b

    const v0, 0x7f1000fa

    if-eq p1, v0, :cond_b

    const v0, 0x7f1000fb

    if-ne p1, v0, :cond_c

    :cond_b
    move v0, v1

    .line 451
    goto/16 :goto_0

    .line 452
    :cond_c
    const v0, 0x7f100101

    if-eq p1, v0, :cond_d

    const v0, 0x7f100102

    if-eq p1, v0, :cond_d

    const v0, 0x7f100100

    if-ne p1, v0, :cond_5

    :cond_d
    move v0, v2

    .line 453
    goto/16 :goto_0
.end method

.method private setupKeypad()V
    .locals 25

    .prologue
    .line 133
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 148
    .local v9, "letterIds":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 154
    .local v17, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 158
    .local v6, "currentLocale":Ljava/util/Locale;
    const-string v21, "fa"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 159
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    .line 164
    .local v12, "nf":Ljava/text/NumberFormat;
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_6

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 166
    .local v7, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v21, 0x7f1000fc

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 167
    .local v15, "numberView":Landroid/widget/TextView;
    const v21, 0x7f1000fd

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 171
    .local v11, "lettersView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    const v22, 0x7f100100

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 172
    const v21, 0x7f0904a1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 173
    .local v14, "numberString":Ljava/lang/String;
    move-object v13, v14

    .line 194
    .local v13, "numberContentDescription":Ljava/lang/CharSequence;
    :goto_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f020071

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/RippleDrawable;

    .line 200
    .local v18, "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :goto_3
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 202
    invoke-virtual {v7, v14}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    const-string v21, "\u2217"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 206
    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    if-eqz v11, :cond_1

    .line 210
    aget v21, v9, v8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 161
    .end local v7    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v8    # "i":I
    .end local v11    # "lettersView":Landroid/widget/TextView;
    .end local v12    # "nf":Ljava/text/NumberFormat;
    .end local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    .end local v14    # "numberString":Ljava/lang/String;
    .end local v15    # "numberView":Landroid/widget/TextView;
    .end local v18    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static/range {v21 .. v21}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    .restart local v12    # "nf":Ljava/text/NumberFormat;
    goto/16 :goto_0

    .line 174
    .restart local v7    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .restart local v8    # "i":I
    .restart local v11    # "lettersView":Landroid/widget/TextView;
    .restart local v15    # "numberView":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    const v22, 0x7f100101

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 175
    const v21, 0x7f0904a4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 176
    .restart local v14    # "numberString":Ljava/lang/String;
    move-object v13, v14

    .restart local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    goto :goto_2

    .line 178
    .end local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    .end local v14    # "numberString":Ljava/lang/String;
    :cond_4
    int-to-long v0, v8

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    .line 182
    .restart local v14    # "numberString":Ljava/lang/String;
    aget v21, v9, v8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, "letters":Ljava/lang/String;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    .line 185
    .local v19, "spannable":Landroid/text/Spannable;
    new-instance v21, Landroid/text/style/TtsSpan$VerbatimBuilder;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {v21 .. v21}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v21

    .line 187
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    .line 188
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x21

    .line 185
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 190
    move-object/from16 v13, v19

    .restart local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 197
    .end local v10    # "letters":Ljava/lang/String;
    .end local v19    # "spannable":Landroid/text/Spannable;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f020069

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    check-cast v18, Landroid/graphics/drawable/RippleDrawable;

    .restart local v18    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    goto/16 :goto_3

    .line 214
    .end local v7    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v11    # "lettersView":Landroid/widget/TextView;
    .end local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    .end local v14    # "numberString":Ljava/lang/String;
    .end local v15    # "numberView":Landroid/widget/TextView;
    .end local v18    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :cond_6
    const v21, 0x7f1000fe

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 215
    .local v16, "one":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v21, 0x7f090484

    .line 216
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 215
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    const v21, 0x7f100102

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 219
    .local v20, "zero":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v21, 0x7f09047b

    .line 220
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 219
    invoke-virtual/range {v20 .. v21}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    return-void

    .line 133
    nop

    :array_0
    .array-data 4
        0x7f090489
        0x7f09048c
        0x7f09048f
        0x7f090491
        0x7f090493
        0x7f090495
        0x7f090497
        0x7f090499
        0x7f09049b
        0x7f09049d
        0x7f0904a3
        0x7f0904a0
    .end array-data
.end method


# virtual methods
.method public animateShow()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 286
    new-instance v5, Lcom/android/phone/common/dialpad/DialpadView$1;

    invoke-direct {v5, p0}, Lcom/android/phone/common/dialpad/DialpadView$1;-><init>(Lcom/android/phone/common/dialpad/DialpadView;)V

    .line 289
    .local v5, "showListener":Landroid/animation/AnimatorListenerAdapter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 290
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDelay(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 291
    .local v1, "delay":I
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    .line 292
    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDuration(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 293
    .local v3, "duration":I
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-virtual {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 295
    .local v2, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 296
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v6, :cond_1

    .line 299
    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    :goto_1
    iget v7, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationX(F)V

    .line 300
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 306
    :goto_2
    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v1

    .line 307
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v8, v3

    .line 308
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 309
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 310
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 303
    :cond_1
    iget v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationY(F)V

    .line 304
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 312
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "delay":I
    .end local v2    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v3    # "duration":I
    :cond_2
    return-void
.end method

.method public canDigitsBeEdited()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mCanDigitsBeEdited:Z

    return v0
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    .line 117
    const v1, 0x7f10010b

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    .line 118
    const v1, 0x7f10010c

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    .line 119
    const v1, 0x7f10010a

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    .line 120
    const v1, 0x7f100104

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    .line 125
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 126
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public setCallRateInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "countryName"    # Ljava/lang/String;
    .param p2, "displayRate"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldCountry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldRate:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCanDigitsBeEdited(Z)V
    .locals 6
    .param p1, "canBeEdited"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 246
    const v3, 0x7f10010c

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "deleteButton":Landroid/view/View;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    const v3, 0x7f10010a

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 249
    .local v2, "overflowMenuButton":Landroid/view/View;
    if-eqz p1, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const v3, 0x7f10010b

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 252
    .local v1, "digits":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 253
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 254
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 255
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 257
    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mCanDigitsBeEdited:Z

    .line 258
    return-void

    .end local v1    # "digits":Landroid/widget/EditText;
    .end local v2    # "overflowMenuButton":Landroid/view/View;
    :cond_1
    move v3, v5

    .line 247
    goto :goto_0
.end method

.method public setShowVoicemailButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 233
    const v1, 0x7f1000ff

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 235
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    return-void

    .line 235
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method
