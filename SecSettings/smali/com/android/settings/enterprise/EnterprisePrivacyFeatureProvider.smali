.class public interface abstract Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
.super Ljava/lang/Object;
.source "EnterprisePrivacyFeatureProvider.java"


# virtual methods
.method public abstract getDeviceOwnerDisclosure()Ljava/lang/CharSequence;
.end method

.method public abstract getDeviceOwnerOrganizationName()Ljava/lang/String;
.end method

.method public abstract getImeLabelIfOwnerSet()Ljava/lang/String;
.end method

.method public abstract getLastBugReportRequestTime()Ljava/util/Date;
.end method

.method public abstract getLastNetworkLogRetrievalTime()Ljava/util/Date;
.end method

.method public abstract getLastSecurityLogRetrievalTime()Ljava/util/Date;
.end method

.method public abstract getMaximumFailedPasswordsBeforeWipeInCurrentUser()I
.end method

.method public abstract getMaximumFailedPasswordsBeforeWipeInManagedProfile()I
.end method

.method public abstract getNumberOfActiveDeviceAdminsForCurrentUserAndManagedProfile()I
.end method

.method public abstract getNumberOfOwnerInstalledCaCertsForCurrentUserAndManagedProfile()I
.end method

.method public abstract hasDeviceOwner()Z
.end method

.method public abstract isAlwaysOnVpnSetInCurrentUser()Z
.end method

.method public abstract isAlwaysOnVpnSetInManagedProfile()Z
.end method

.method public abstract isGlobalHttpProxySet()Z
.end method

.method public abstract isInCompMode()Z
.end method

.method public abstract isNetworkLoggingEnabled()Z
.end method

.method public abstract isSecurityLoggingEnabled()Z
.end method
