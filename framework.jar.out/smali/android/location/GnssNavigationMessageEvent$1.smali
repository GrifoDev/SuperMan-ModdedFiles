.class final Landroid/location/GnssNavigationMessageEvent$1;
.super Ljava/lang/Object;
.source "GnssNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessageEvent;
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
        "Landroid/location/GnssNavigationMessageEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessageEvent;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/GnssNavigationMessage;

    new-instance v2, Landroid/location/GnssNavigationMessageEvent;

    invoke-direct {v2, v1}, Landroid/location/GnssNavigationMessageEvent;-><init>(Landroid/location/GnssNavigationMessage;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessageEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssNavigationMessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GnssNavigationMessageEvent;
    .locals 1

    new-array v0, p1, [Landroid/location/GnssNavigationMessageEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/location/GnssNavigationMessageEvent$1;->newArray(I)[Landroid/location/GnssNavigationMessageEvent;

    move-result-object v0

    return-object v0
.end method
