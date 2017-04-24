.class public Lcom/android/settings/display/DensityPreference;
.super Landroid/preference/EditTextPreference;
.source "DensityPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->getCurrentSwDp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0b1b3e

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/DensityPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getCurrentSwDp()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v4, v2

    div-float/2addr v4, v0

    float-to-int v4, v4

    return v4
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->getCurrentSwDp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 9

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x140

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit16 v7, v3, 0xa0

    div-int v4, v7, v5

    const/16 v7, 0x78

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v7, 0x0

    invoke-static {v7, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "DensityPreference"

    const-string/jumbo v8, "Couldn\'t save density"

    invoke-static {v7, v8, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
