.class public final Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.super Ljava/lang/Object;
.source "UpdateParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_SHA256_BYTES:I = 0x20

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PASSWORD_BYTES:I = 0xff

.field private static final MAX_URI_BYTES:I = 0x3ff

.field private static final MAX_URL_BYTES:I = 0x3ff

.field private static final MAX_USERNAME_BYTES:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "UpdateParameter"

.field public static final UPDATE_CHECK_INTERVAL_NEVER:J = 0xffffffffL

.field public static final UPDATE_METHOD_OMADM:Ljava/lang/String; = "OMA-DM-ClientInitiated"

.field public static final UPDATE_METHOD_SSP:Ljava/lang/String; = "SSP-ClientInitiated"

.field public static final UPDATE_RESTRICTION_HOMESP:Ljava/lang/String; = "HomeSP"

.field public static final UPDATE_RESTRICTION_ROAMING_PARTNER:Ljava/lang/String; = "RoamingPartner"

.field public static final UPDATE_RESTRICTION_UNRESTRICTED:Ljava/lang/String; = "Unrestricted"


# instance fields
.field private mBase64EncodedPassword:Ljava/lang/String;

.field private mRestriction:Ljava/lang/String;

.field private mServerUri:Ljava/lang/String;

.field private mTrustRootCertSha256Fingerprint:[B

.field private mTrustRootCertUrl:Ljava/lang/String;

.field private mUpdateIntervalInMinutes:J

.field private mUpdateMethod:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

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
    .locals 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iget-wide v4, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    iget-object v2, v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getBase64EncodedPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRestriction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustRootCertSha256Fingerprint()[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-object v0
.end method

.method public getTrustRootCertUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIntervalInMinutes()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    return-wide v0
.end method

.method public getUpdateMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBase64EncodedPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    return-void
.end method

.method public setRestriction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    return-void
.end method

.method public setServerUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    return-void
.end method

.method public setTrustRootCertSha256Fingerprint([B)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-void
.end method

.method public setTrustRootCertUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    return-void
.end method

.method public setUpdateIntervalInMinutes(J)V
    .locals 1

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    return-void
.end method

.method public setUpdateMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UpdateInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UpdateMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Restriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ServerURI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TrustRootCertURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 9

    const/16 v8, 0x3ff

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string/jumbo v1, "UpdateParameter"

    const-string/jumbo v2, "Update interval not specified"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    return v7

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const-string/jumbo v2, "OMA-DM-ClientInitiated"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const-string/jumbo v2, "SSP-ClientInitiated"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown update method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const-string/jumbo v2, "HomeSP"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const-string/jumbo v2, "RoamingPartner"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const-string/jumbo v2, "Unrestricted"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown restriction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "UpdateParameter"

    const-string/jumbo v2, "Missing update server URI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v8, :cond_5

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URI bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "UpdateParameter"

    const-string/jumbo v2, "Missing username"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_7

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Username bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_7
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "UpdateParameter"

    const-string/jumbo v2, "Missing username"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_9

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Password bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "UpdateParameter"

    const-string/jumbo v2, "Missing trust root certificate URL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid encoding for password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v8, :cond_b

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trust root cert URL bytes exceeded the max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_b
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    if-nez v1, :cond_c

    const-string/jumbo v1, "UpdateParameter"

    const-string/jumbo v2, "Missing trust root certificate SHA-256 fingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_c
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v1, v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_d

    const-string/jumbo v1, "UpdateParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect size of trust root certificate SHA-256 fingerprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_d
    return v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
