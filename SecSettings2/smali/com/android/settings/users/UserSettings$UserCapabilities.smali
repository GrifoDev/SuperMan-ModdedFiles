.class Lcom/android/settings/users/UserSettings$UserCapabilities;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserCapabilities"
.end annotation


# instance fields
.field mCanAddGuest:Z

.field mCanAddRestrictedProfile:Z

.field mCanAddUser:Z

.field mDisallowAddUser:Z

.field mDisallowAddUserSetByAdmin:Z

.field mEnabled:Z

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field mIsAdmin:Z

.field mIsGuest:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/users/UserSettings$UserCapabilities;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    new-instance v0, Lcom/android/settings/users/UserSettings$UserCapabilities;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$UserCapabilities;-><init>()V

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iput-boolean v5, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    const-string/jumbo v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iput-boolean v5, v0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/settings/users/UserSettings$UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UserCapabilities{mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCanAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCanAddRestrictedProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCanAddGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDisallowAddUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnforcedAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAddUserCapabilities(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "no_add_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {p1, v2, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const-string/jumbo v2, "no_add_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {p1, v2, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_6

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v2, :cond_7

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    iput-boolean v4, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_8

    :cond_1
    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddUser:Z

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsAdmin:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "add_users_when_locked"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_9

    :cond_3
    const/4 v0, 0x1

    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mIsGuest:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mCanAddGuest:Z

    return-void

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_1

    :cond_8
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings$UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method
