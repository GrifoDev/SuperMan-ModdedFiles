.class public Lcom/android/settings/Display;
.super Landroid/app/Activity;
.source "Display.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Display$1;
    }
.end annotation


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFontScale:F

.field private mFontSize:Landroid/widget/Spinner;

.field private mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreview:Landroid/widget/TextView;

.field private mTextSizeTyped:Landroid/util/TypedValue;


# direct methods
.method static synthetic -set0(Lcom/android/settings/Display;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/Display;->mFontScale:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/Display;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/Display;->updateFontScale()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/Display$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Display$1;-><init>(Lcom/android/settings/Display;)V

    iput-object v0, p0, Lcom/android/settings/Display;->mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/Display;->mFontScale:F

    return-void
.end method

.method private updateFontScale()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget v3, p0, Lcom/android/settings/Display;->mFontScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v1, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    iget-object v2, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/Display;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "font_scale"

    iget v2, p0, Lcom/android/settings/Display;->mFontScale:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    invoke-virtual {p0}, Lcom/android/settings/Display;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f0400d2

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->setContentView(I)V

    const v6, 0x7f1102cd

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/Display;->mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b105d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const v6, 0x7f0b105e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const v6, 0x7f0b105f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v6, 0x7f1102ce

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    const v7, 0x7f0b1062

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f1102cf

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v6, 0x7f0b1067

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    sget-object v6, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    iput v7, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v7, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v7, v6, Landroid/util/DisplayMetrics;->xdpi:F

    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v7, v6, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/Display;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "font_scale"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/settings/Display;->mFontScale:F

    iget v1, p0, Lcom/android/settings/Display;->mFontScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/Display;->updateFontScale()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/settings/Display;->mFontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method
