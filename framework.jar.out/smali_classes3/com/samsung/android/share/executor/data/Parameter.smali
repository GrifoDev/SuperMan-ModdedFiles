.class public Lcom/samsung/android/share/executor/data/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/Parameter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CHObjectType:Ljava/lang/String;

.field private CHObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;"
        }
    .end annotation
.end field

.field private isMandatory:Ljava/lang/Boolean;

.field private parameterName:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private slotName:Ljava/lang/String;

.field private slotType:Ljava/lang/String;

.field private slotValue:Ljava/lang/String;

.field private slotValueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/share/executor/data/Parameter$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/Parameter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    const-class v5, Lcom/samsung/android/share/executor/data/CHObject;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    return-void

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    iput-object p7, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCHObjectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    return-object v0
.end method

.method public getCHObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    return-object v0
.end method

.method public getIsMandatory()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotValueType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    return-object v0
.end method

.method public setCHObjectType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    return-void
.end method

.method public setCHObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    return-void
.end method

.method public setIsMandatory(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    return-void
.end method

.method public setParameterType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    return-void
.end method

.method public setSlotName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    return-void
.end method

.method public setSlotType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    return-void
.end method

.method public setSlotValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    return-void
.end method

.method public setSlotValueType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->slotValueType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjectType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->parameterType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/share/executor/data/Parameter;->isMandatory:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
