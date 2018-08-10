.class public final Landroid/support/v4/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/PermissionChecker$PermissionResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v4, :cond_0

    return v4

    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    if-nez p4, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-gtz v2, :cond_3

    :cond_2
    return v4

    :cond_3
    aget-object p4, v1, v3

    :cond_4
    invoke-static {p0, v0, p4}, Landroid/support/v4/app/AppOpsManagerCompat;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, -0x2

    return v2

    :cond_5
    return v3
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method
