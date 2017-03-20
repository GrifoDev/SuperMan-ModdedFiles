.class public Lcom/yulore/sdk/ivr/model/ItemNode;
.super Lcom/yulore/sdk/ivr/model/INode;
.source "ItemNode.java"

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
.field private delay:I

.field private input:Lcom/yulore/sdk/ivr/model/InputNode;

.field private parent:Lcom/yulore/sdk/ivr/model/ItemNode;

.field private subItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ItemNode;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/yulore/sdk/ivr/ItemNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/yulore/sdk/ivr/model/ItemNode$1;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/ItemNode$1;-><init>()V

    sput-object v0, Lcom/yulore/sdk/ivr/model/ItemNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yulore/sdk/ivr/model/INode;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yulore/sdk/ivr/model/INode;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->delay:I

    .line 29
    const-class v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->parent:Lcom/yulore/sdk/ivr/model/ItemNode;

    .line 30
    const-class v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->subItems:Ljava/util/List;

    .line 31
    const-class v0, Lcom/yulore/sdk/ivr/model/InputNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/model/InputNode;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->input:Lcom/yulore/sdk/ivr/model/InputNode;

    .line 32
    const-class v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yulore/sdk/ivr/ItemNodeType;

    iput-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->type:Lcom/yulore/sdk/ivr/ItemNodeType;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getDelay()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->delay:I

    return v0
.end method

.method public getInput()Lcom/yulore/sdk/ivr/model/InputNode;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->input:Lcom/yulore/sdk/ivr/model/InputNode;

    return-object v0
.end method

.method public getParent()Lcom/yulore/sdk/ivr/model/ItemNode;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->parent:Lcom/yulore/sdk/ivr/model/ItemNode;

    return-object v0
.end method

.method public getSubItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ItemNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->subItems:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->type:Lcom/yulore/sdk/ivr/ItemNodeType;

    return-object v0
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->delay:I

    .line 40
    return-void
.end method

.method public setInput(Lcom/yulore/sdk/ivr/model/InputNode;)V
    .locals 0
    .param p1, "input"    # Lcom/yulore/sdk/ivr/model/InputNode;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->input:Lcom/yulore/sdk/ivr/model/InputNode;

    .line 58
    return-void
.end method

.method public setParent(Lcom/yulore/sdk/ivr/model/ItemNode;)V
    .locals 0
    .param p1, "parent"    # Lcom/yulore/sdk/ivr/model/ItemNode;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->parent:Lcom/yulore/sdk/ivr/model/ItemNode;

    .line 46
    return-void
.end method

.method public setSubItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ItemNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "subItems":Ljava/util/List;, "Ljava/util/List<Lcom/yulore/sdk/ivr/model/ItemNode;>;"
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->subItems:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setType(Lcom/yulore/sdk/ivr/ItemNodeType;)V
    .locals 0
    .param p1, "type"    # Lcom/yulore/sdk/ivr/ItemNodeType;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->type:Lcom/yulore/sdk/ivr/ItemNodeType;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemNode [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",promptText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->promptText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->delay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->parent:Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->input:Lcom/yulore/sdk/ivr/model/InputNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->type:Lcom/yulore/sdk/ivr/ItemNodeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->delay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->parent:Lcom/yulore/sdk/ivr/model/ItemNode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->subItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->input:Lcom/yulore/sdk/ivr/model/InputNode;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->type:Lcom/yulore/sdk/ivr/ItemNodeType;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
