.class final Lcom/yulore/sdk/ivr/model/INode$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/model/INode;
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
        "Lcom/yulore/sdk/ivr/model/INode;",
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
.method public a(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/model/INode;
    .locals 1

    new-instance v0, Lcom/yulore/sdk/ivr/model/INode;

    invoke-direct {v0, p1}, Lcom/yulore/sdk/ivr/model/INode;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yulore/sdk/ivr/model/INode;
    .locals 1

    new-array v0, p1, [Lcom/yulore/sdk/ivr/model/INode;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/model/INode$1;->a(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/model/INode;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/model/INode$1;->a(I)[Lcom/yulore/sdk/ivr/model/INode;

    move-result-object v0

    return-object v0
.end method
