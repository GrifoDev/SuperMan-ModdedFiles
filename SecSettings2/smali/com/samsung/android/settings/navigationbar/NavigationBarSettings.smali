.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NavigationBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static sSelectedColorIndex:I


# instance fields
.field private color_value:[I

.field public mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeaderView:Landroid/view/View;

.field private mHeightPref:Lcom/android/settings/SecDropDownPreference;

.field public mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

.field private mOrderPref:Lcom/android/settings/SecDropDownPreference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sSelectedColorIndex:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sSelectedColorIndex:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sSelectedColorIndex:I

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCurrentHeaderView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    return-void
.end method

.method private getSelectedPosition()I
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private updateUI()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCurrentHeaderView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040187

    invoke-virtual {v4, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_sec_active_themepackage"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    invoke-direct {v0, p0, v6, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/content/Context;[I)V

    const v6, 0x7f1104a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v5, v9, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCurrentHeaderView:Landroid/view/View;

    return-void

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    array-length v6, v6

    add-int/lit8 v3, v6, -0x1

    :goto_1
    if-lez v3, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    aput v7, v6, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0166

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v6, v10

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getRecentlyUsedColor()[I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v6

    :cond_0
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    new-array v2, v4, [I

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getRecentlyUsedColor()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;I[I)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "NavigationBarSettings"

    const-string/jumbo v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHeightPref:Lcom/android/settings/SecDropDownPreference;

    const-string/jumbo v0, "order_option"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHeightPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const v2, 0x7f0b0562

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b0563

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHeightPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHeightPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const v2, 0x7f0b05b9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b0565

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->color_value:[I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->sSelectedColorIndex:I

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHeightPref:Lcom/android/settings/SecDropDownPreference;

    if-ne p1, v2, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_height"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    if-ne p1, v2, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigationbar_key_order"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v4

    :cond_1
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mHeightPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_height"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOrderPref:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_key_order"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateUI()V

    return-void
.end method

.method public setRecentlyUsedColor(I)V
    .locals 8

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
