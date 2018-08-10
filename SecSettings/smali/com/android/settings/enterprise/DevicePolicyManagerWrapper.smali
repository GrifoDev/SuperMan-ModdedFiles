.class public interface abstract Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "DevicePolicyManagerWrapper.java"


# virtual methods
.method public abstract getActiveAdminsAsUser(I)Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
.end method

.method public abstract getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
.end method

.method public abstract getLastBugReportRequestTime()J
.end method

.method public abstract getLastNetworkLogRetrievalTime()J
.end method

.method public abstract getLastSecurityLogRetrievalTime()J
.end method

.method public abstract getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract isCurrentInputMethodSetByOwner()Z
.end method

.method public abstract isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
.end method

.method public abstract isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract isUninstallInQueue(Ljava/lang/String;)Z
.end method

.method public abstract packageHasActiveAdmins(Ljava/lang/String;)Z
.end method
