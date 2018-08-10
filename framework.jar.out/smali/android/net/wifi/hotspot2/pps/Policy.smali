.class public final Landroid/net/wifi/hotspot2/pps/Policy;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Policy$1;,
        Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EXCLUSION_SSIDS:I = 0x80

.field private static final MAX_PORT_STRING_BYTES:I = 0x40

.field private static final MAX_SSID_BYTES:I = 0x20

.field private static final NULL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Policy"


# instance fields
.field private mExcludedSsidList:[Ljava/lang/String;

.field private mMaximumBssLoadValue:I

.field private mMinHomeDownlinkBandwidth:J

.field private mMinHomeUplinkBandwidth:J

.field private mMinRoamingDownlinkBandwidth:J

.field private mMinRoamingUplinkBandwidth:J

.field private mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private mPreferredRoamingPartnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiredProtoPortMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    :cond_3
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    :cond_4
    return-void
.end method

.method private static writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/hotspot2/pps/Policy;

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-nez v3, :cond_4

    :cond_2
    iget v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iget v4, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-nez v3, :cond_4

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_6

    :goto_1
    return v1

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v2, v0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method public getExcludedSsidList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumBssLoadValue()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    return v0
.end method

.method public getMinHomeDownlinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    return-wide v0
.end method

.method public getMinHomeUplinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    return-wide v0
.end method

.method public getMinRoamingDownlinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    return-wide v0
.end method

.method public getMinRoamingUplinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    return-wide v0
.end method

.method public getPolicyUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public getPreferredRoamingPartnerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredProtoPortMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setExcludedSsidList([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    return-void
.end method

.method public setMaximumBssLoadValue(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    return-void
.end method

.method public setMinHomeDownlinkBandwidth(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    return-void
.end method

.method public setMinHomeUplinkBandwidth(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    return-void
.end method

.method public setMinRoamingDownlinkBandwidth(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    return-void
.end method

.method public setMinRoamingUplinkBandwidth(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    return-void
.end method

.method public setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method public setPreferredRoamingPartnerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    return-void
.end method

.method public setRequiredProtoPortMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MinHomeDownlinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MinHomeUplinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MinRoamingDownlinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MinRoamingUplinkBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ExcludedSSIDList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RequiredProtoPortMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MaximumBSSLoadValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PreferredRoamingPartnerList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PolicyUpdate Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PolicyUpdate End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 12

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v6, :cond_0

    const-string/jumbo v6, "Policy"

    const-string/jumbo v8, "PolicyUpdate not specified"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v6}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    move-result v6

    if-nez v6, :cond_1

    return v7

    :cond_1
    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v6, v6

    const/16 v8, 0x80

    if-le v6, v8, :cond_2

    const-string/jumbo v6, "Policy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SSID exclusion list size exceeded the max: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    iget-object v8, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_4

    aget-object v5, v8, v6

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    const/16 v11, 0x20

    if-le v10, v11, :cond_3

    const-string/jumbo v6, "Policy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid SSID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    const/16 v8, 0x40

    if-le v6, v8, :cond_5

    const-string/jumbo v6, "Policy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PortNumber string bytes exceeded the max: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->validate()Z

    move-result v6

    if-nez v6, :cond_7

    return v7

    :cond_8
    const/4 v6, 0x1

    return v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    invoke-static {p1, p2, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
