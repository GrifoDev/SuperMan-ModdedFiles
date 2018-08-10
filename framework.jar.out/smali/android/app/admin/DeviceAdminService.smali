.class public Landroid/app/admin/DeviceAdminService;
.super Landroid/app/Service;
.source "DeviceAdminService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;-><init>(Landroid/app/admin/DeviceAdminService;Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;)V

    iput-object v0, p0, Landroid/app/admin/DeviceAdminService;->mImpl:Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminService;->mImpl:Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
