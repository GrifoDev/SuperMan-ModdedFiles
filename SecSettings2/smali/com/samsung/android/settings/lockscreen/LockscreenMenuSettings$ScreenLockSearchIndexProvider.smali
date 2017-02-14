.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockSearchIndexProvider"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mLockUtil:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private isGuestUser(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNotificationsIconsOnly()Z

    move-result v7

    if-eqz v7, :cond_14

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v3, :cond_6

    if-eqz v0, :cond_15

    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "other_security_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string/jumbo v7, "app_ops_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "lock_screen_menu_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "unlock_set_or_change"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "show_information"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "secured_lock_settigns"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "toggle_install_applications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v7

    if-nez v7, :cond_e

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_17

    :cond_f
    :goto_3
    const-string/jumbo v7, "key_private_mode"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_18

    const/4 v2, 0x1

    :goto_4
    const-string/jumbo v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isUserManaged()Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v2, :cond_19

    :goto_5
    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassApplication(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {p1}, Lcom/android/settings/Utils;->hasSamsungPassFrameworkPackage(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    const-string/jumbo v7, "samsung_pass"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string/jumbo v7, "iris_settings"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object v4

    :cond_14
    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v7, "find_my_mobile"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_16
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "finger_scanner"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isDisasterSafetyModel()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {p1}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_3

    :cond_18
    const/4 v2, 0x0

    goto :goto_4

    :cond_19
    const-string/jumbo v7, "secure_folder"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const v8, 0x7f0b0473

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "unlock_set_or_change"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v6, 0x7f0b105f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-class v6, Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const-string/jumbo v6, "show_information"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0b0825

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_7

    const v6, 0x7f0b084b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "toggle_install_applications"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0b13d1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_a

    const v6, 0x7f0b0814

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_b

    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "secured_lock_settigns"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v6, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v6, 0x7f0b084c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "other_security_settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-class v6, Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v6, 0x7f0b082c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const v6, 0x7f0b082d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "find_my_mobile"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const/4 v6, 0x3

    iput v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_5
    :goto_3
    invoke-static {p1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_6
    :goto_4
    return-object v5

    :cond_7
    const v6, 0x7f0b084a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    const v6, 0x7f0b0849

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const v6, 0x7f0b0826

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const v6, 0x7f0b038f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "find_my_mobile"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v6, 0x7f0b071e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const-string/jumbo v6, ""

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "iris_settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.settings.iris.IrisLockSettings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    const v6, 0x7f0b073e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const/4 v6, 0x1

    iput v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    invoke-static {p1}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "finger_scanner"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const-string/jumbo v6, "android.intent.action.MAIN"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    const-string/jumbo v6, "com.android.settings"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    const-string/jumbo v6, "com.android.settings.fingerprint.FingerprintEntry"

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    const v6, 0x7f0b0661

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const/4 v6, 0x2

    iput v6, v1, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v3, 0x0

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mLockUtil:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v7, 0x7f080095

    iput v7, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-get0()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    const v4, 0x7f0800fc

    :goto_1
    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "device_policy"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v4, 0x7f08010e

    :goto_2
    new-instance v6, Landroid/provider/SearchIndexableResource;

    invoke-direct {v6, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$ScreenLockSearchIndexProvider;->mClassName:Ljava/lang/String;

    iput-object v7, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    iput v4, v6, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const v4, 0x7f080112

    goto :goto_1

    :cond_5
    const v4, 0x7f08010f

    goto :goto_2
.end method
