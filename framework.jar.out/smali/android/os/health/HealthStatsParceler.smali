.class public Landroid/os/health/HealthStatsParceler;
.super Ljava/lang/Object;
.source "HealthStatsParceler.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/health/HealthStatsParceler$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/health/HealthStatsParceler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHealthStats:Landroid/os/health/HealthStats;

.field private mWriter:Landroid/os/health/HealthStatsWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/health/HealthStatsParceler$1;

    invoke-direct {v0}, Landroid/os/health/HealthStatsParceler$1;-><init>()V

    sput-object v0, Landroid/os/health/HealthStatsParceler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/health/HealthStats;

    invoke-direct {v0, p1}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    return-void
.end method

.method public constructor <init>(Landroid/os/health/HealthStatsWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHealthStats()Landroid/os/health/HealthStats;
    .locals 2

    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    invoke-virtual {v1, v0}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/os/health/HealthStats;

    invoke-direct {v1, v0}, Landroid/os/health/HealthStats;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    iget-object v1, p0, Landroid/os/health/HealthStatsParceler;->mHealthStats:Landroid/os/health/HealthStats;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/health/HealthStatsParceler;->mWriter:Landroid/os/health/HealthStatsWriter;

    invoke-virtual {v0, p1}, Landroid/os/health/HealthStatsWriter;->flattenToParcel(Landroid/os/Parcel;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can not re-parcel HealthStatsParceler that was constructed from a Parcel"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
