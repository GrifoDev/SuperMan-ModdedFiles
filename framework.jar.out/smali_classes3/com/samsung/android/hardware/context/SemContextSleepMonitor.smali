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

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSleepMonitor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getFlag()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Flag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPIM()[F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "PIM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getStage()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Stage"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStatus()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "SleepStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getWrist()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Wrist"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getZCM()[I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ZCM"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSleepMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
