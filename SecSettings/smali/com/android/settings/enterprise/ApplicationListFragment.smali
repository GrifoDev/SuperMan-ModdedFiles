.class public abstract Lcom/android/settings/enterprise/ApplicationListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ApplicationListFragment.java"

# interfaces
.implements Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionCamera;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionLocation;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionMicrophone;,
        Lcom/android/settings/enterprise/ApplicationListFragment$EnterpriseInstalledPackages;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "EnterprisePrivacySettings"

    return-object v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/enterprise/ApplicationListPreferenceController;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, p1, p0, v2, p0}, Lcom/android/settings/enterprise/ApplicationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;Landroid/content/pm/PackageManager;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150018

    return v0
.end method
