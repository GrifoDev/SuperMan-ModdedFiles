.class final Landroid/os/PowerSaveState$1;
.super Ljava/lang/Object;
.source "PowerSaveState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerSaveState;
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
        "Landroid/os/PowerSaveState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/PowerSaveState;
    .locals 1

    new-instance v0, Landroid/os/PowerSaveState;

    invoke-direct {v0, p1}, Landroid/os/PowerSaveState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/PowerSaveState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PowerSaveState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/PowerSaveState;
    .locals 1

    new-array v0, p1, [Landroid/os/PowerSaveState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/PowerSaveState$1;->newArray(I)[Landroid/os/PowerSaveState;

    move-result-object v0

    return-object v0
.end method
