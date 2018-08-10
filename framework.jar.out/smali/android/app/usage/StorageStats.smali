.class public final Landroid/app/usage/StorageStats;
.super Ljava/lang/Object;
.source "StorageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/StorageStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/usage/StorageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cacheBytes:J

.field public codeBytes:J

.field public dataBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/StorageStats$1;

    invoke-direct {v0}, Landroid/app/usage/StorageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    return-wide v0
.end method

.method public getCacheBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    return-wide v0
.end method

.method public getCodeBytes()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
