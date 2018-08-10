.class final Lcom/android/internal/os/AppFuseMount$1;
.super Ljava/lang/Object;
.source "AppFuseMount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/AppFuseMount;
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
        "Lcom/android/internal/os/AppFuseMount;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/AppFuseMount;
    .locals 3

    new-instance v1, Lcom/android/internal/os/AppFuseMount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/AppFuseMount$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/AppFuseMount;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/os/AppFuseMount;
    .locals 1

    new-array v0, p1, [Lcom/android/internal/os/AppFuseMount;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/AppFuseMount$1;->newArray(I)[Lcom/android/internal/os/AppFuseMount;

    move-result-object v0

    return-object v0
.end method
