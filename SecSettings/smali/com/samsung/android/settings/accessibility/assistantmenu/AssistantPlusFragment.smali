.class public Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AssistantPlusFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appsWithEAM:I

.field private astMenuContext:Landroid/content/Context;

.field private checkCount:I

.field private checkboxPref:Landroid/support/v14/preference/SwitchPreference;

.field context:Landroid/app/Activity;

.field private eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

.field private mEAMEnable:Z

.field private mEAMprov:I

.field private mLoadComplete:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private messageHandler:Landroid/os/Handler;

.field packMngr:Landroid/content/pm/PackageManager;

.field private packageAppNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sIsPhone:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packageAppNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mLoadComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->resizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->OrderAppData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->updateAssistantMenuSaving()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AssistantPlusFragment"

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mLoadComplete:Z

    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packageAppNameList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z

    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->messageHandler:Landroid/os/Handler;

    return-void
.end method

.method private OrderAppData()V
    .locals 5

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getContactsPackageName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.samsung.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installSwitchBarToggleSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assistant_menu_eam_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private isWindowPinnedActive()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu_eam_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->updateAssistantMenuSaving()V

    const/4 v2, 0x1

    return v2

    :cond_0
    return v4
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeSwitchBarToggleSwitch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method private resizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private updateAppDataChecked()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private updateAssistantMenuSaving()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected fetchData()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120aef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$5;->start()V

    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->isWindowPinnedActive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Done Setting 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Done Setting 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f150063

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->addPreferencesFromResource(I)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    const-string/jumbo v3, "com.samsung.android.app.assistantmenu"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->astMenuContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->astMenuContext:Landroid/content/Context;

    const-string/jumbo v3, "ASSISTANTPLUS_PREFS"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu_eam_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "eam_options"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "selectAll_pref"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->fetchData()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mLoadComplete:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant_menu_eam_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Done Setting 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v5, "selectAll_pref"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    iput v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    :goto_0
    const/4 v2, 0x1

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[c] increment count:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iput v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_3
    return v8

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    :goto_4
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    sget-object v5, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[c] updateEAM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "aplication status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    const/4 v2, 0x0

    :goto_5
    iget v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    if-ge v2, v5, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packageAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_5

    iget v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    iget v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    iget v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_8
    iget v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    iget v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPrepareOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->installSwitchBarToggleSwitch()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->isWindowPinnedActive()Z

    move-result v1

    if-nez v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->updateAssistantMenuSaving()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->updateAppDataChecked()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.action.AMSERVICE_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
