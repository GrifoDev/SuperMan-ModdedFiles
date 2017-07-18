.class final Lcom/yulore/sdk/ivr/ItemNodeType$1;
.super Ljava/lang/Object;
.source "ItemNodeType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/ItemNodeType;
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
        "Lcom/yulore/sdk/ivr/ItemNodeType;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 3

    invoke-static {}, Lcom/yulore/sdk/ivr/ItemNodeType;->values()[Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/ItemNodeType;->setNodeType(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yulore/sdk/ivr/ItemNodeType;->setValue(I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/ItemNodeType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 1

    new-array v0, p1, [Lcom/yulore/sdk/ivr/ItemNodeType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/ItemNodeType$1;->newArray(I)[Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v0

    return-object v0
.end method
