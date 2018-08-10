.class public Lcom/samsung/android/share/executor/data/ScreenParameter;
.super Ljava/lang/Object;
.source "ScreenParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/ScreenParameter$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/ScreenParameter;",
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

.field private parameterName:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private slotName:Ljava/lang/String;

.field private slotType:Ljava/lang/String;

.field private slotValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/share/executor/data/ScreenParameter$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/ScreenParameter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/share/executor/data/CHObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/ScreenParameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCHObjectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    return-object v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCHObjectType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    return-void
.end method

.method public setParameterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    return-void
.end method

.method public setParameterType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    return-void
.end method

.method public setSlotName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    return-void
.end method

.method public setSlotType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    return-void
.end method

.method public setSlotValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->slotValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjectType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CHObjects:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ScreenParameter;->parameterType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
