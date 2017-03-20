.class final Lcom/yulore/sdk/ivr/model/INode$1;
.super Ljava/lang/Object;
.source "INode.java"

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

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/model/INode;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 61
    new-instance v0, Lcom/yulore/sdk/ivr/model/INode;

    invoke-direct {v0, p1}, Lcom/yulore/sdk/ivr/model/INode;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/model/INode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulore/sdk/ivr/model/INode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulore/sdk/ivr/model/INode;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 56
    new-array v0, p1, [Lcom/yulore/sdk/ivr/model/INode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/yulore/sdk/ivr/model/INode$1;->newArray(I)[Lcom/yulore/sdk/ivr/model/INode;

    move-result-object v0

    return-object v0
.end method
