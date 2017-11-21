.class public abstract Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.super Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;
.source "SecSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;,
        Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static mArrayLinkKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mSettingValue:I


# instance fields
.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field private mButtonBar:Landroid/view/ViewGroup;

.field private mClickPreferenceKey:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

.field protected mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEmptyView:Landroid/view/View;

.field private mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

.field private mFooter:Lcom/android/settings/applications/SecLayoutPreference;

.field private mHeader:Lcom/android/settings/applications/SecLayoutPreference;

.field private mHelpUri:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field protected mOpenDetailMenu:Z

.field private mOpenDetailMenuKey:Ljava/lang/String;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    new-instance v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mSettingValue:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    return-void
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->hasListView()Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_1
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_2
    return v4
.end method

.method private checkAvailablePrefs(Landroid/preference/PreferenceGroup;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/SelfAvailablePreference;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/settings/SelfAvailablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->checkAvailablePrefs(Landroid/preference/PreferenceGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method private getCurrentKeyList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v11, v5, Landroid/preference/PreferenceGroup;

    if-eqz v11, :cond_1

    move-object v4, v5

    check-cast v4, Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_1

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020399

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getParentPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v5, v5, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    return-object v6
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v5, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v5, :cond_2

    move-object v5, v0

    check-cast v5, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    :cond_0
    :goto_0
    new-instance v5, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;

    invoke-direct {v5, p0, v3, v4, v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    instance-of v5, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v2, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/SecLayoutPreference;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sub-int v1, v4, v1

    iget-object v4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mFooter:Lcom/android/settings/applications/SecLayoutPreference;

    if-eqz v4, :cond_2

    :goto_1
    sub-int/2addr v1, v2

    if-gtz v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->checkAvailablePrefs(Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method protected buildPreferenceForCOM()V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isContainerOnlyModeFromOwner(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v4, 0x0

    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_1

    if-eqz v0, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    const/4 v8, 0x0

    :cond_1
    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v8, 0x0

    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getParentPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    instance-of v10, v9, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_3

    if-eqz v7, :cond_6

    instance-of v10, v7, Landroid/preference/PreferenceGroup;

    if-eqz v10, :cond_6

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_c

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_b

    instance-of v10, v9, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_b

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_b

    const/4 v8, 0x1

    const/4 v4, 0x0

    :goto_5
    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    const/4 v8, 0x0

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroid/preference/PreferenceGroup;)V
    .locals 5

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected checkForKnoxCustomProKioskEnabledItems()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v3

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v5

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x1

    const-string/jumbo v8, "wifi_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_1

    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    :cond_1
    const-string/jumbo v8, "bluetooth_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    and-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_2

    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    :cond_2
    const-string/jumbo v8, "location_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/lit16 v8, v5, 0x400

    if-nez v8, :cond_3

    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_3

    const/4 v7, 0x0

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected getArrayLinkKey()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getButtonBar()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getCachedCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    :cond_0
    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1894

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getPrefContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightBySearch(Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/4 v6, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-interface {v9, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v6, v2

    :cond_0
    if-gez v6, :cond_2

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v7, v6

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    move-object v0, v9

    if-nez v9, :cond_3

    return-void

    :cond_3
    instance-of v11, v9, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v11, :cond_5

    move-object v11, v9

    check-cast v11, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v9, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    :cond_4
    :goto_1
    new-instance v11, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;

    invoke-direct {v11, p0, v4, v7, v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v11}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    instance-of v11, v9, Landroid/widget/HeaderViewListAdapter;

    if-eqz v11, :cond_4

    check-cast v9, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v9}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v3, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    goto :goto_1
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->registerObserverIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/PersonaPolicyManager;->getComSettings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110275

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const v1, 0x7f110445

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    const v1, 0x7f11018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->setPreferenceHighlighted(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ":settings:fragment_args_key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v6
.end method

.method public onResume()V
    .locals 8

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    const-string/jumbo v3, "pref_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume(): key ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "pref_key"

    iget-object v4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ds_ring_tone"

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_1
    iput-object v6, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    const-string/jumbo v3, "pref_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->buildPreferenceForCOM()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    const-wide/16 v6, 0x46

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    return-void
.end method

.method protected openSearchDetailMenu()V
    .locals 13

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string v10, "SettingsSearch"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=== mOpenDetailMenuKey:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    const-string v10, "SettingsSearch"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPreferenceCount : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , preferenceAdapter size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-ge v3, v10, :cond_1

    invoke-interface {v9, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/Preference;

    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "SettingsSearch"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=== position : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    sget v10, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mSettingValue:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    instance-of v10, v8, Lcom/android/settings/SwitchPreferenceScreen;

    if-nez v10, :cond_0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->removeOneDepthArrayLinkKey()V

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    instance-of v2, v6, Lcom/android/settings/Settings;

    if-eqz v2, :cond_2

    check-cast v6, Lcom/android/settings/Settings;

    :cond_2
    return-void

    :cond_3
    instance-of v10, v8, Landroid/preference/CheckBoxPreference;

    if-nez v10, :cond_4

    invoke-virtual {v7}, Landroid/preference/Preference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    :cond_4
    sput-object v2, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected removeCachedPrefs(Landroid/preference/PreferenceGroup;)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected removeOneDepthArrayLinkKey()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mArrayLinkKey:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public removePreference(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->updateEmptyView()V

    return-void
.end method

.method public setLoading(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11044c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v2, v1, p2}, Lcom/android/settings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->-set1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    return-object v1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setPreferenceHighlighted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    return-void
.end method

.method protected setResult(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method protected setResult(ILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SettingsPreferenceFragment"

    const-string/jumbo v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    instance-of v2, v8, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    move-object v0, v8

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    instance-of v2, v8, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v8

    check-cast v1, Landroid/preference/PreferenceActivity;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move-object v6, p1

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const-string/jumbo v2, "SettingsPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 14

    const/4 v4, 0x0

    if-gez p3, :cond_0

    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    instance-of v1, v13, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_2

    move-object v0, v13

    check-cast v0, Lcom/android/settings/SettingsActivity;

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v12, 0x0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p3

    move-object v11, v4

    invoke-static/range {v5 .. v12}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public unregisterObserverIfNeeded()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    :cond_1
    return-void
.end method
