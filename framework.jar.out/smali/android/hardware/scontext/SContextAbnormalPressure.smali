.class public Landroid/hardware/scontext/SContextAbnormalPressure;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAbnormalPressure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextAbnormalPressure$1;
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
            "Landroid/hardware/scontext/SContextAbnormalPressure;",
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
    .line 170
    new-instance v0, Landroid/hardware/scontext/SContextAbnormalPressure$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAbnormalPressure$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAbnormalPressure;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 93
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAbnormalPressure;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 163
    return-void
.end method


# virtual methods
.method public getAccX()F
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "xaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAccY()F
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "yaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAccZ()F
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "zaxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPressure()F
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "barometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 140
    iput-object p1, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    .line 139
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 154
    iget-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 153
    return-void
.end method
