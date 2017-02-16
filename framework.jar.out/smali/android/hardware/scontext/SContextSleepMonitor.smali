.class public Landroid/hardware/scontext/SContextSleepMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextSleepMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextSleepMonitor$1;
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
            "Landroid/hardware/scontext/SContextSleepMonitor;",
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
    .line 139
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSleepMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSleepMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    .line 132
    return-void
.end method


# virtual methods
.method public getFlag()[I
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Flag"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPIM()[F
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "PIM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getStage()[I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Stage"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStatus()[I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "SleepStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getWrist()[I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "Wrist"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getZCM()[I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "ZCM"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 109
    iput-object p1, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    .line 108
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method
