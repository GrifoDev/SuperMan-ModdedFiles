.class public Lcom/yulore/sdk/ivr/model/INode;
.super Ljava/lang/Object;
.source "INode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected id:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field protected promptText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yulore/sdk/ivr/model/INode$1;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/INode$1;-><init>()V

    sput-object v0, Lcom/yulore/sdk/ivr/model/INode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->promptText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPromptText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->promptText:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/INode;->id:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/INode;->key:Ljava/lang/String;

    return-void
.end method

.method public setPromptText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/INode;->promptText:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/INode;->promptText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
