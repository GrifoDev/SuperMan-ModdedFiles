.class public Lcom/yulore/sdk/ivr/model/ItemNode;
.super Lcom/yulore/sdk/ivr/model/INode;

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
.field private d:I

.field private e:Lcom/yulore/sdk/ivr/model/ItemNode;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yulore/sdk/ivr/model/ItemNode;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yulore/sdk/ivr/model/InputNode;

.field private h:Lcom/yulore/sdk/ivr/ItemNodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yulore/sdk/ivr/model/ItemNode$1;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/model/ItemNode$1;-><init>()V

    sput-object v0, Lcom/yulore/sdk/ivr/model/ItemNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/model/INode;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->d:I

    return-void
.end method

.method public a(Lcom/yulore/sdk/ivr/ItemNodeType;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->h:Lcom/yulore/sdk/ivr/ItemNodeType;

    return-void
.end method

.method public a(Lcom/yulore/sdk/ivr/model/InputNode;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->g:Lcom/yulore/sdk/ivr/model/InputNode;

    return-void
.end method

.method public a(Lcom/yulore/sdk/ivr/model/ItemNode;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->e:Lcom/yulore/sdk/ivr/model/ItemNode;

    return-void
.end method

.method public a(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->f:Ljava/util/List;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->d:I

    return v0
.end method

.method public d()Lcom/yulore/sdk/ivr/model/ItemNode;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->e:Lcom/yulore/sdk/ivr/model/ItemNode;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/List;
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

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->f:Ljava/util/List;

    return-object v0
.end method

.method public f()Lcom/yulore/sdk/ivr/ItemNodeType;
    .locals 1

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->h:Lcom/yulore/sdk/ivr/ItemNodeType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemNode [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",promptText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->e:Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->g:Lcom/yulore/sdk/ivr/model/InputNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->h:Lcom/yulore/sdk/ivr/ItemNodeType;

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

    iget v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->e:Lcom/yulore/sdk/ivr/model/ItemNode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->g:Lcom/yulore/sdk/ivr/model/InputNode;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/model/ItemNode;->h:Lcom/yulore/sdk/ivr/ItemNodeType;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
