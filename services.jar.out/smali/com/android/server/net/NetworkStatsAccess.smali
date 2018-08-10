.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-class v6, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v6, -0x2

    invoke-virtual {v0, p1, v6}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    :goto_1
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_4

    :cond_0
    const/4 v6, 0x3

    return v6

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v6, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    const/4 v6, 0x2

    return v6

    :cond_6
    if-eqz v0, :cond_7

    const/4 v6, -0x1

    invoke-virtual {v0, p1, v6}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_8

    return v9

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    return v8
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    const-string/jumbo v5, "appops"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v5, 0x2b

    invoke-virtual {v0, v5, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    const-string/jumbo v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    :goto_1
    return v3

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    return v4
.end method

.method public static isAccessibleToUser(III)Z
    .locals 5

    const/16 v4, 0x3e8

    const/4 v3, -0x4

    const/4 v2, -0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    if-ne p0, p1, :cond_4

    :goto_0
    return v0

    :pswitch_0
    return v0

    :pswitch_1
    if-eq p0, v4, :cond_0

    if-ne p0, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-eq p0, v2, :cond_0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_2
    if-eq p0, v4, :cond_2

    if-ne p0, v3, :cond_3

    :cond_2
    :goto_2
    return v0

    :cond_3
    if-eq p0, v2, :cond_2

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
