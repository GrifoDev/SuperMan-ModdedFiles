.class public Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;
.super Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.source "AdminGrantedLocationPermissionsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)V
    .locals 6

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string/jumbo v5, "android.permission-group.LOCATION"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "enterprise_privacy_number_location_access_packages"

    return-object v0
.end method
