.class public Landroid/hardware/scontext/SContextPhoneStatusMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextPhoneStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;
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
            "Landroid/hardware/scontext/SContextPhoneStatusMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPhoneStatusMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getLcdDirection()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "lcddirect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProximity()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "embower"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isInSuroundingEnvironment()Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "lcdOffRecommend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/scontext/SContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
