.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;,
        Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;,
        Landroid/content/pm/PackageManagerInternal$PackagesProvider;,
        Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addIsolatedUid(II)V
.end method

.method public abstract canAccessInstantApps(II)Z
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getOpenThemeTargetPackageNames(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOverlayPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getSetupWizardPackageName()Ljava/lang/String;
.end method

.method public abstract getTargetPackageNames(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
.end method

.method public abstract grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V
.end method

.method public abstract grantEphemeralAccess(ILandroid/content/Intent;II)V
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
.end method

.method public abstract isPackageDataProtected(ILjava/lang/String;)Z
.end method

.method public abstract isPackageEphemeral(ILjava/lang/String;)Z
.end method

.method public abstract isPackagePersistent(Ljava/lang/String;)Z
.end method

.method public abstract isPermissionsReviewRequired(Ljava/lang/String;I)Z
.end method

.method public abstract parseOpenThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$OverlayManagerCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract pruneInstantApps()V
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
.end method

.method public abstract setKeepUninstalledPackages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
.end method

.method public abstract setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract wasPackageEverLaunched(Ljava/lang/String;I)Z
.end method

.method public abstract wasPackageStopped(Ljava/lang/String;I)Z
.end method
