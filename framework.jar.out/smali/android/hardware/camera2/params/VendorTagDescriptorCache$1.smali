.class final Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;
.super Ljava/lang/Object;
.source "VendorTagDescriptorCache.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/VendorTagDescriptorCache;
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
        "Landroid/hardware/camera2/params/VendorTagDescriptorCache;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/hardware/camera2/params/VendorTagDescriptorCache;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/VendorTagDescriptorCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VendorTagDescriptorCache"

    const-string/jumbo v3, "Exception creating VendorTagDescriptorCache from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    .locals 1

    new-array v0, p1, [Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;->newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v0

    return-object v0
.end method
