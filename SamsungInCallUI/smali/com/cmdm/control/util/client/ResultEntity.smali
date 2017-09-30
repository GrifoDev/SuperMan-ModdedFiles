.class public Lcom/cmdm/control/util/client/ResultEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cmdm/control/util/client/ResultEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dm:I

.field private dn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cmdm/control/util/client/ResultEntity$1;

    invoke-direct {v0}, Lcom/cmdm/control/util/client/ResultEntity$1;-><init>()V

    sput-object v0, Lcom/cmdm/control/util/client/ResultEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/util/client/ResultEntity;->dm:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/util/client/ResultEntity;->dn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/util/client/ResultEntity;->dm:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cmdm/control/util/client/ResultEntity;->dn:Ljava/lang/String;

    iput p1, p0, Lcom/cmdm/control/util/client/ResultEntity;->dm:I

    iput-object p2, p0, Lcom/cmdm/control/util/client/ResultEntity;->dn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResCode()I
    .locals 1

    iget v0, p0, Lcom/cmdm/control/util/client/ResultEntity;->dm:I

    return v0
.end method

.method public getResMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/util/client/ResultEntity;->dn:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessed()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/cmdm/control/util/client/ResultEntity;->dm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setResCode(I)V
    .locals 0

    iput p1, p0, Lcom/cmdm/control/util/client/ResultEntity;->dm:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/cmdm/control/util/client/ResultEntity;->dm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/cmdm/control/util/client/ResultEntity;->getResMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
