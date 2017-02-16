.class public Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextAbnormalPressure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextAbnormalPressure$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;",
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
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

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
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 189
    return-void
.end method


# virtual methods
.method public getAccX()F
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "xaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAccY()F
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "yaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAccZ()F
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "zaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPressure()F
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "barometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 165
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method
