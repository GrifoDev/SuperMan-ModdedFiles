.class public final Landroid/hardware/camera2/params/VendorTagDescriptorCache;
.super Ljava/lang/Object;
.source "VendorTagDescriptorCache.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/params/VendorTagDescriptorCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VendorTagDescriptorCache"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/VendorTagDescriptorCache$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/VendorTagDescriptorCache;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/VendorTagDescriptorCache;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptorCache;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
