.class public final Landroid/net/wifi/hotspot2/PasspointConfiguration;
.super Ljava/lang/Object;
.source "PasspointConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/PasspointConfiguration$1;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_SHA256_BYTES:I = 0x20

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_URL_BYTES:I = 0x3ff

.field private static final NULL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PasspointConfiguration"


# instance fields
.field private mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

.field private mCredentialPriority:I

.field private mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

.field private mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

.field private mSubscriptionCreationTimeInMillis:J

.field private mSubscriptionExpirationTimeInMillis:J

.field private mSubscriptionType:Ljava/lang/String;

.field private mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private mTrustRootCertList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mUpdateIdentifier:I

.field private mUsageLimitDataLimit:J

.field private mUsageLimitStartTimeInMillis:J

.field private mUsageLimitTimeLimitInMinutes:J

.field private mUsageLimitUsageTimePeriodInMinutes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/high16 v1, -0x80000000

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 4

    const/high16 v1, -0x80000000

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iput-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/hotspot2/pps/Credential;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/Policy;-><init>(Landroid/net/wifi/hotspot2/pps/Policy;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    :cond_3
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    :cond_4
    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    :cond_5
    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iget v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    iget-object v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iget-wide v0, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    return-void
.end method

.method private static isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v4

    :goto_0
    return v2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v5

    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v5

    :cond_5
    return v4
.end method

.method private static writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
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

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByteArray([B)V

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
    instance-of v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v3, :cond_5

    iget-object v3, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v3, :cond_4

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v3, :cond_4

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v3, :cond_4

    :goto_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iget v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iget v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iget-wide v6, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    :goto_3
    return v1

    :cond_3
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/Policy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_7
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object v4, v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v3, v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public getCredential()Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    return-object v0
.end method

.method public getCredentialPriority()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    return v0
.end method

.method public getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-object v0
.end method

.method public getPolicy()Landroid/net/wifi/hotspot2/pps/Policy;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    return-object v0
.end method

.method public getSubscriptionCreationTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    return-wide v0
.end method

.method public getSubscriptionExpirationTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    return-wide v0
.end method

.method public getSubscriptionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public getTrustRootCertList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    return-object v0
.end method

.method public getUpdateIdentifier()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    return v0
.end method

.method public getUsageLimitDataLimit()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    return-wide v0
.end method

.method public getUsageLimitStartTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    return-wide v0
.end method

.method public getUsageLimitTimeLimitInMinutes()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    return-wide v0
.end method

.method public getUsageLimitUsageTimePeriodInMinutes()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    return-void
.end method

.method public setCredentialPriority(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    return-void
.end method

.method public setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-void
.end method

.method public setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    return-void
.end method

.method public setSubscriptionCreationTimeInMillis(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    return-void
.end method

.method public setSubscriptionExpirationTimeInMillis(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    return-void
.end method

.method public setSubscriptionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method public setTrustRootCertList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    return-void
.end method

.method public setUpdateIdentifier(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    return-void
.end method

.method public setUsageLimitDataLimit(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    return-void
.end method

.method public setUsageLimitStartTimeInMillis(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    return-void
.end method

.method public setUsageLimitTimeLimitInMinutes(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    return-void
.end method

.method public setUsageLimitUsageTimePeriodInMinutes(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-wide/high16 v6, -0x8000000000000000L

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UpdateIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CredentialPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SubscriptionCreationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SubscriptionExpirationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UsageLimitStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UsageTimePeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UsageLimitDataLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UsageLimitTimeLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HomeSP Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HomeSP End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Credential Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Credential End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Policy Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Policy End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SubscriptionUpdate Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SubscriptionUpdate End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "TrustRootCertServers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    const-string/jumbo v1, "Not specified"

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "Not specified"

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v1, "Not specified"

    goto/16 :goto_2
.end method

.method public validate()Z
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->validate()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    return v7

    :cond_1
    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->validate()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    :cond_2
    return v7

    :cond_3
    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Policy;->validate()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    return v7

    :cond_4
    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    return v7

    :cond_5
    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "PasspointConfiguration"

    const-string/jumbo v5, "Empty URL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_7
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x3ff

    if-le v4, v5, :cond_8

    const-string/jumbo v4, "PasspointConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "URL bytes exceeded the max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_8
    if-nez v0, :cond_9

    const-string/jumbo v4, "PasspointConfiguration"

    const-string/jumbo v5, "Fingerprint not specified"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_9
    array-length v4, v0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_6

    const-string/jumbo v4, "PasspointConfiguration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Incorrect size of trust root certificate SHA-256 fingerprint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_a
    const/4 v4, 0x1

    return v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V

    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
