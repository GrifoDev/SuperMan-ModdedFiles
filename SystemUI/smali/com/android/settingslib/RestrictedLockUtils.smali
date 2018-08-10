.class public Lcom/android/settingslib/RestrictedLockUtils;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/RestrictedLockUtils$1;,
        Lcom/android/settingslib/RestrictedLockUtils$2;,
        Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;,
        Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;,
        Lcom/android/settingslib/RestrictedLockUtils$Proxy;
    }
.end annotation


# static fields
.field static sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$Proxy;-><init>()V

    sput-object v0, Lcom/android/settingslib/RestrictedLockUtils;->sProxy:Lcom/android/settingslib/RestrictedLockUtils$Proxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v8

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    sget-object v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v6

    :cond_2
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v6}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v4

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v6}, Landroid/os/UserManager$EnforcingUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    if-ne v0, p2, :cond_3

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    return-object v6

    :cond_3
    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, p2, :cond_4

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_4
    sget-object v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    :cond_5
    const/4 v6, 0x2

    if-ne v4, v6, :cond_7

    if-ne v0, p2, :cond_6

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_6
    sget-object v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_1

    :cond_7
    return-object v8
.end method

.method public static getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    :cond_1
    return-object v3
.end method

.method private static getProfileOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, -0x2710

    if-ne p1, v2, :cond_0

    return-object v3

    :cond_0
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v2, v0, p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    return-object v2

    :cond_2
    return-object v3
.end method

.method public static getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.app.extra.DEVICE_ADMIN"

    iget-object v3, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    iget v0, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    :cond_1
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    return-object v1
.end method

.method public static hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public static isCurrentUserOrProfile(Landroid/content/Context;I)Z
    .locals 4

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    :cond_0
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
