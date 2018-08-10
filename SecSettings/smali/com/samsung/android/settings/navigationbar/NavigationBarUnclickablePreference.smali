.class public Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;
.super Landroid/support/v7/preference/Preference;
.source "NavigationBarUnclickablePreference.java"


# instance fields
.field private mMaxFontSizeIndex:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d0234

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v6, 0x7f0a08b4

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a08d1

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a084b

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "font_size"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    if-le v0, v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    iget v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    int-to-float v2, v6

    mul-float v6, v2, v1

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMaxTitleFontSizeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mMaxFontSizeIndex:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarUnclickablePreference;->mTextSize:I

    return-void
.end method
