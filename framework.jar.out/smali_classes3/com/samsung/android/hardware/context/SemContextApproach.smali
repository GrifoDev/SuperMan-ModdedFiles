.class public Lcom/samsung/android/hardware/context/SemContextApproach;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextApproach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextApproach$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextApproach;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAR:I = 0x0

.field public static final NEAR:I = 0x1


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproach$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproach$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextApproach;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextApproach;->readFromParcel(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    .line 178
    return-void
.end method


# virtual methods
.method public getApproach()I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Proximity"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserID()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "UserID"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    .line 154
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 168
    return-void
.end method
