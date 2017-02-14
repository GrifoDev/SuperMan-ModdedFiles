.class final Landroid/app/admin/ProxyDeviceAdminInfo$1;
.super Ljava/lang/Object;
.source "ProxyDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ProxyDeviceAdminInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/admin/ProxyDeviceAdminInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ProxyDeviceAdminInfo;
    .locals 1

    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-direct {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ProxyDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/admin/ProxyDeviceAdminInfo;
    .locals 1

    new-array v0, p1, [Landroid/app/admin/ProxyDeviceAdminInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo$1;->newArray(I)[Landroid/app/admin/ProxyDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method
