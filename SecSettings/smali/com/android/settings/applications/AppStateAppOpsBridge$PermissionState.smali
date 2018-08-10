.class public Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
.super Ljava/lang/Object;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateAppOpsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionState"
.end annotation


# instance fields
.field public appOpMode:I

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public final packageName:Ljava/lang/String;

.field public permissionDeclared:Z

.field public staticPermissionGranted:Z

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageName:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iput-object p2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->userHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public isPermissible()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    return v0

    :cond_0
    iget v1, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
