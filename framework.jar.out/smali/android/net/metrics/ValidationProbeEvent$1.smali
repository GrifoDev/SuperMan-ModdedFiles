.class final Landroid/net/metrics/ValidationProbeEvent$1;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/ValidationProbeEvent;
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
        "Landroid/net/metrics/ValidationProbeEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/ValidationProbeEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/metrics/ValidationProbeEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/ValidationProbeEvent;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/net/metrics/ValidationProbeEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/ValidationProbeEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/metrics/ValidationProbeEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 77
    new-array v0, p1, [Landroid/net/metrics/ValidationProbeEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/net/metrics/ValidationProbeEvent$1;->newArray(I)[Landroid/net/metrics/ValidationProbeEvent;

    move-result-object v0

    return-object v0
.end method
