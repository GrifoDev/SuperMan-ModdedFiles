.class public Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

.field private static mScreenNotification:Landroid/support/v14/preference/SwitchPreference;


# instance fields
.field private mAllPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialog:Landroid/app/AlertDialog;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1()Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showFlashNotificationConfirmDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showScreenNotificationConfirmDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->updateAllPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static needFlashNotificationConfirmDialog(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "accessibility_feature_confirm_dialog"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "light_notification_flash_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static needScreenNotificationConfirmDialog(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "accessibility_feature_confirm_dialog"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "light_notification_screen_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private showFlashNotificationConfirmDialog()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f120f84

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f121c16

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d001f

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v5, 0x7f0a0013

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    const v5, 0x7f0a0291

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$omZR7MBYTKoHPgovTFonrKWiLBs;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$omZR7MBYTKoHPgovTFonrKWiLBs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;

    invoke-direct {v6, p0, v1, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;Landroid/content/Context;Landroid/widget/CheckBox;)V

    const v7, 0x7f12089e

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showScreenNotificationConfirmDialog()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f120f84

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f121c16

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d001f

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v5, 0x7f0a0013

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    const v5, 0x7f0a0291

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v5, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$omZR7MBYTKoHPgovTFonrKWiLBs$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/hearing/-$Lambda$omZR7MBYTKoHPgovTFonrKWiLBs$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$6;

    invoke-direct {v6, p0, v1, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;Landroid/content/Context;Landroid/widget/CheckBox;)V

    const v7, 0x7f12089e

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$7;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$8;-><init>(Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment$PreferenceItem;->updatePreference()Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x138d

    return v0
.end method

.method synthetic lambda$-com_samsung_android_settings_accessibility_hearing_LightNotificationPreferenceFragment_12631(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getMetricsCategory()I

    move-result v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x17d3

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_samsung_android_settings_accessibility_hearing_LightNotificationPreferenceFragment_9310(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getMetricsCategory()I

    move-result v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x17d0

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150009

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    const-string/jumbo v0, "light_notification_flash"

    const-string/jumbo v1, "flash_notification"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "light_notification_screen"

    const-string/jumbo v1, "screen_notification"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LightNotification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needFlashNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showFlashNotificationConfirmDialog()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "flash_notification"

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getMetricsCategory()I

    move-result v5

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1789

    invoke-static {v1, v5, v4, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->needScreenNotificationConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->showScreenNotificationConfirmDialog()V

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_notification"

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getMetricsCategory()I

    move-result v5

    if-eqz v0, :cond_6

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x178a

    invoke-static {v1, v5, v4, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return v2

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    return v3
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->onDesktopModeChanged(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->updateAllPreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/hearing/LightNotificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "LightNotification"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
