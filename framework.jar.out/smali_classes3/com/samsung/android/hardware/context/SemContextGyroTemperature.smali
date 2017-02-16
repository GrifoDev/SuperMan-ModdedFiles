.class public Lcom/samsung/android/hardware/context/SemContextGyroTemperature;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextGyroTemperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextGyroTemperature$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextGyroTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextGyroTemperature$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 111
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 162
    return-void
.end method


# virtual methods
.method public getGyroTemperature()D
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "GyroTemperature"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextGyroTemperature;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method
