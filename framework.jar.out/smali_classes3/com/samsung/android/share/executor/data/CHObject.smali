.class public Lcom/samsung/android/share/executor/data/CHObject;
.super Ljava/lang/Object;
.source "CHObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/CHObject$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/CHObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CH_Type:Ljava/lang/String;

.field private CH_Value:Ljava/lang/String;

.field private CH_ValueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/share/executor/data/CHObject$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/CHObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/CHObject;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCHType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    return-object v0
.end method

.method public getCHValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    return-object v0
.end method

.method public getCHValueType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    return-object v0
.end method

.method public setCHType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    return-void
.end method

.method public setCHValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    return-void
.end method

.method public setCHValueType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_Value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/CHObject;->CH_ValueType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
