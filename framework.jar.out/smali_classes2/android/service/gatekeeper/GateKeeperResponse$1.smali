.class final Landroid/service/gatekeeper/GateKeeperResponse$1;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/GateKeeperResponse;
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
        "Landroid/service/gatekeeper/GateKeeperResponse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v1, Landroid/service/gatekeeper/GateKeeperResponse;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6}, Landroid/service/gatekeeper/GateKeeperResponse;-><init>(ILandroid/service/gatekeeper/GateKeeperResponse;)V

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v1, v4}, Landroid/service/gatekeeper/GateKeeperResponse;->-wrap3(Landroid/service/gatekeeper/GateKeeperResponse;I)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v1, v4}, Landroid/service/gatekeeper/GateKeeperResponse;->-wrap0(Landroid/service/gatekeeper/GateKeeperResponse;I)V

    return-object v1

    :cond_1
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_1
    invoke-static {v1, v4}, Landroid/service/gatekeeper/GateKeeperResponse;->-wrap2(Landroid/service/gatekeeper/GateKeeperResponse;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_0

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-static {v1, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->-wrap1(Landroid/service/gatekeeper/GateKeeperResponse;[B)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;
    .locals 1

    new-array v0, p1, [Landroid/service/gatekeeper/GateKeeperResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    return-object v0
.end method
