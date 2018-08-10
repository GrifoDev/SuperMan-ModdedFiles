.class final Landroid/app/usage/CacheQuotaHint$1;
.super Ljava/lang/Object;
.source "CacheQuotaHint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/usage/CacheQuotaHint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/CacheQuotaHint;
    .locals 4

    new-instance v0, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v0}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v2

    const-class v1, Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    invoke-virtual {v2, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/usage/CacheQuotaHint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/CacheQuotaHint;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/usage/CacheQuotaHint;
    .locals 1

    new-array v0, p1, [Landroid/app/usage/CacheQuotaHint;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/usage/CacheQuotaHint$1;->newArray(I)[Landroid/app/usage/CacheQuotaHint;

    move-result-object v0

    return-object v0
.end method
