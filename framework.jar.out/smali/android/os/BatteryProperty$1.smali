.class final Landroid/os/BatteryProperty$1;
.super Ljava/lang/Object;
.source "BatteryProperty.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryProperty;
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
        "Landroid/os/BatteryProperty;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/BatteryProperty;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 66
    new-instance v0, Landroid/os/BatteryProperty;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/BatteryProperty;-><init>(Landroid/os/Parcel;Landroid/os/BatteryProperty;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/os/BatteryProperty$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/BatteryProperty;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/BatteryProperty;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Landroid/os/BatteryProperty;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/os/BatteryProperty$1;->newArray(I)[Landroid/os/BatteryProperty;

    move-result-object v0

    return-object v0
.end method
