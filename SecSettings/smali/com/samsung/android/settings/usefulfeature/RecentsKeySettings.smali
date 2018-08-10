.class public Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RecentsKeySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;,
        Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;,
        Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mRecentsKeyObserver:Landroid/database/ContentObserver;

.field private mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->changeColor(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private changeColor(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08010e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08010f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_snap_window_shortcut"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_snap_window_shortcut"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1de4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0d012c

    invoke-virtual {v4, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f0a0619

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v8, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$4;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v7, 0x7f0a064a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    move v1, v3

    const v7, 0x7f0d0076

    invoke-virtual {v4, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f1213f2

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$5;

    invoke-direct {v7, p0, v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;I)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f08010f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ne v7, v11, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    const-string/jumbo v1, "RecentsKeySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500c5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "snap_window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    const-string/jumbo v0, "split_screen_view"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "UseRecentsButton"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b04ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "db_split_screen_view_shortcut"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "db_split_screen_view_shortcut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "db_snap_window_shortcut"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "db_snap_window_shortcut"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "UseRecentsButton"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    goto :goto_2
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "db_split_screen_view_shortcut"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz p2, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
