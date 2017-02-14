.class public final Landroid/net/wifi/nan/ConfigRequest$Builder;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClusterHigh:I

.field private mClusterLow:I

.field private mMasterPreference:I

.field private mSupport5gBand:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mSupport5gBand:Z

    iput v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mMasterPreference:I

    iput v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    const v0, 0xffff

    iput v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/nan/ConfigRequest;
    .locals 6

    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/net/wifi/nan/ConfigRequest;

    iget-boolean v1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mSupport5gBand:Z

    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mMasterPreference:I

    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    iget v4, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/nan/ConfigRequest;-><init>(ZIIILandroid/net/wifi/nan/ConfigRequest;)V

    return-object v0
.end method

.method public setClusterHigh(I)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0xffff

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterHigh:I

    return-object p0
.end method

.method public setClusterLow(I)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0xffff

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cluster specification must not exceed 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mClusterLow:I

    return-object p0
.end method

.method public setMasterPreference(I)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 2

    const/16 v1, 0xff

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Master Preference specification must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gt p1, v1, :cond_1

    iput p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mMasterPreference:I

    return-object p0
.end method

.method public setSupport5gBand(Z)Landroid/net/wifi/nan/ConfigRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/nan/ConfigRequest$Builder;->mSupport5gBand:Z

    return-object p0
.end method
