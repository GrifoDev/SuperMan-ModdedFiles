.class public Lcom/samsung/android/hardware/context/SemContextSleepMonitor;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextSleepMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextSleepMonitor$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextSleepMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_SLEEP:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_WAKE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSleepMonitor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    .line 175
    return-void
.end method


# virtual methods
.method public getFlag()[I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Flag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPIM()[F
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "PIM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getStage()[I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Stage"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStatus()[I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "SleepStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getWrist()[I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Wrist"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getZCM()[I
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ZCM"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    .line 151
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method
