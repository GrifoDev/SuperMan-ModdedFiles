.class public Lcom/android/settings/DreamSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DreamSettings$DreamInfoPreference;,
        Lcom/android/settings/DreamSettings$PackageReceiver;
    }
.end annotation


# static fields
.field private static SCREEN_SAVER_PREVIEW:I

.field private static SCREEN_SAVER_SELECT_WHEN_TO_USE:I

.field private static SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/DreamSettings;->SCREEN_SAVER_PREVIEW:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/settings/DreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/settings/DreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/settings/DreamSettings;->SCREEN_SAVER_PREVIEW:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/settings/DreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE:I

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/settings/DreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

    return p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/DreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/DreamSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/DreamSettings;->showDialog(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/DreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DreamSettings$PackageReceiver;-><init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/DreamSettings$PackageReceiver;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2

    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    new-instance v1, Lcom/android/settings/DreamSettings$3;

    invoke-direct {v1, p0, p5}, Lcom/android/settings/DreamSettings$3;-><init>(Lcom/android/settings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 5

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b134f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b134e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0b134d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b1352

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DreamSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DreamSettings$4;-><init>(Lcom/android/settings/DreamSettings;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DreamSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings/DreamSettings$5;-><init>(Lcom/android/settings/DreamSettings;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v2, 0x7f0b1350

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private refreshFromBackend()V
    .locals 10

    const/4 v6, 0x0

    const-string/jumbo v5, "refreshFromBackend()"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v2

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    if-eq v5, v2, :cond_0

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DreamSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v5}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    new-instance v8, Lcom/android/settings/DreamSettings$DreamInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-direct {v8, p0, v9, v5}, Lcom/android/settings/DreamSettings$DreamInfoPreference;-><init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    array-length v8, v7

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v4, v7, v5

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0b18aa

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const-string/jumbo v6, "onActivityCreated(%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f026e

    invoke-virtual {v0, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d012a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a024d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a024f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const v6, 0x7f0b0acb

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v5}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void

    :cond_0
    const v6, 0x7f0b0aca

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    const-string/jumbo v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "onCreate(%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0, v3}, Lcom/android/settings/DreamSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13

    const-string/jumbo v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x2

    :cond_0
    new-instance v5, Lcom/android/settings/DreamSettings$1;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$1;-><init>(Lcom/android/settings/DreamSettings;)V

    const v2, 0x7f0b1353

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v11

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_1
    new-instance v10, Lcom/android/settings/DreamSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/DreamSettings$2;-><init>(Lcom/android/settings/DreamSettings;)V

    const v7, 0x7f0b1352

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    iput-object v0, p0, Lcom/android/settings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const-string/jumbo v0, "onDestroyView()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string/jumbo v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DreamSettings;->mPackageReceiver:Lcom/android/settings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "onStart()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/DreamSettings;->mRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DreamSettings;->refreshFromBackend()V

    :cond_0
    return-void
.end method
