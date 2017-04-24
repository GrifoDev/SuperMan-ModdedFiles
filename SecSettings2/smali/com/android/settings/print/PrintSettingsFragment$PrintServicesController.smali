.class final Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintServicesController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/print/PrintServicesLoader;

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings/print/PrintSettingsFragment;->-get2(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "print_services_category"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "print_add_plug_in"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v10}, Lcom/android/settings/print/PrintSettingsFragment;->-get2(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v9}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/printservice/PrintServiceInfo;

    new-instance v6, Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v9}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setKey(Ljava/lang/String;)V

    new-instance v9, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;

    invoke-direct {v9, p0}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController$1;-><init>(Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;)V

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-class v9, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setPersistent(Z)V

    invoke-virtual {v6, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v10, 0x7f0b19ca

    invoke-virtual {v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v6, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v6}, Lcom/android/settings/SecSettingsSwitchPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v9, "EXTRA_CHECKED"

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "EXTRA_TITLE"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v9}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v6, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v10, 0x7f0b19cb

    invoke-virtual {v9, v10}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->-get3(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method
