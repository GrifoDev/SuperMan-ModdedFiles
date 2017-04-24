.class public Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$3;,
        Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;
    }
.end annotation


# static fields
.field private static mOpenDetailMenu:Z

.field private static mOpenDetailMenuKey:Ljava/lang/String;


# instance fields
.field public SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

.field public SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isSelectAll:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppList:Ljava/lang/StringBuffer;

.field private mCheckSelectAll:I

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mLoadPreference:Landroid/preference/Preference;

.field private mNotificationReminderEnabler:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

.field private mNotificationReminderObserver:Landroid/database/ContentObserver;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field private mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldCheckAll:I

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTimeInterval:Lcom/android/settings/SecDropDownPreference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private originalIcon:Landroid/graphics/drawable/Drawable;

.field private packageAsync:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;

.field private packageCategory:Landroid/preference/PreferenceCategory;

.field private packagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pm:Landroid/content/pm/PackageManager;

.field private saveAppList:Ljava/lang/String;

.field private selectAllPreference:Landroid/preference/SwitchPreference;

.field private settingCategory:Landroid/preference/PreferenceCategory;

.field private summaryPreference:Lcom/samsung/android/settings/UnclickablePreference;

.field private vibratePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->isSelectAll:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mAppList:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mLoadPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mShouldCheckAll:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->originalIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->saveAppList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mShouldCheckAll:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->originalIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->saveAppList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->sortPackage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderCheckPackage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderSelectAll(ZZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenu:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    const-string/jumbo v0, "notification_reminder"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    const-string/jumbo v0, "time_key"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mShouldCheckAll:I

    new-instance v0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v0, "NotificationReminderPreferenceFragment"

    const-string/jumbo v1, "NotificationReminderPreferenceFragment()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private doPackageNameMigrationIfNeeded()V
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_reminder_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "selectAll"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->getPackageMigrationMap()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v5, 0x0

    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v2, v3, v6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "NotificationReminderPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package name migration : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, " -> "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_reminder_app_list"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    return-void
.end method

.method private handleReminderCheckPackage()V
    .locals 7

    const-string/jumbo v4, "NotificationReminderPreferenceFragment"

    const-string/jumbo v5, "handleReminderCheckPackage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_reminder_app_list"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v4, "NotificationReminderPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleReminderCheckPackage / RESULT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mShouldCheckAll:I

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private handleReminderCheckPackage(ZLandroid/preference/Preference;)V
    .locals 8

    const-string/jumbo v5, "NotificationReminderPreferenceFragment"

    const-string/jumbo v6, "handleReminderCheckPackage with argument"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    move-object v4, p2

    check-cast v4, Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    move-object v4, p2

    check-cast v4, Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_reminder_app_list"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v5, "NotificationReminderPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RESULT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "NotificationReminderPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mShouldCheckAll / mCheckSelectAll : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mShouldCheckAll:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mShouldCheckAll:I

    if-ne v3, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    return-void
.end method

.method private handleReminderSelectAll(ZZ)V
    .locals 7

    const-string/jumbo v3, "NotificationReminderPreferenceFragment"

    const-string/jumbo v4, "handleReminderSelectAll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f10029b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f10029f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz p1, :cond_2

    const/16 v3, 0x3e8

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object v3, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_reminder_app_list"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_2
    const-string/jumbo v3, "NotificationReminderPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleReminderSelectAll / RESULT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private handleReminderVibrate(Z)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "NotificationReminderPreferenceFragment"

    const-string/jumbo v2, "handleReminderVibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_reminder_vibrate"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10029b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p1, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private sortPackage(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-direct {v2, v1}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private startPackagePreference()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;-><init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageAsync:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageAsync:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateNotificationReminderSaving()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x133

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v6, "NotificationReminderPreferenceFragment"

    const-string/jumbo v7, "onCreate()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->doPackageNameMigrationIfNeeded()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mAppList:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_reminder_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->saveAppList:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->isSelectAll:Z

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->pm:Landroid/content/pm/PackageManager;

    new-instance v6, Landroid/preference/Preference;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mLoadPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mLoadPreference:Landroid/preference/Preference;

    const v7, 0x7f0b020e

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    const v6, 0x7f0800ae

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v6, "notification_reminder_guide"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->summaryPreference:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v6, "notification_reminder_category_options"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v6, "notification_reminder_vibrate"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "notification_reminder_category_packages"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v6, "notification_reminder_select_all"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "notification_time_interval"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/SecDropDownPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/settings/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00a1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    const v7, 0x7f0b020f

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    const-string/jumbo v6, "notification_reminder_selectable"

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->summaryPreference:Lcom/samsung/android/settings/UnclickablePreference;

    const v7, 0x7f0b0210

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(I)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    invoke-static {}, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->getDefaultTimeInterval()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->getDefaultTimeInterval()I

    move-result v8

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    array-length v6, v4

    new-array v0, v6, [Ljava/lang/CharSequence;

    array-length v6, v4

    new-array v5, v6, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_3

    aget-object v6, v2, v1

    aput-object v6, v0, v1

    aget-object v6, v4, v1

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v6, "notification_reminder_category_packages"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v6, v0}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->getDefaultTimeInterval()I

    move-result v8

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/SecDropDownPreference;

    new-instance v7, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    new-instance v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->pause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NotificationReminder"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mCheckSelectAll:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderVibrate(Z)V

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderSelectAll(ZZ)V

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderCheckPackage(ZLandroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_reminder_app_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->saveAppList:Ljava/lang/String;

    const-string/jumbo v3, "NotificationReminderPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume: saveAppList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->saveAppList:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->resume()V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_reminder_vibrate"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageAsync:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageAsync:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->startPackagePreference()V

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_START_SREVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_STOP_SREVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10029b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "NotificationReminder"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
