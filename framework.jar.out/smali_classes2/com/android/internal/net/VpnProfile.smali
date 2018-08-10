.class public Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/VpnProfile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final TAG:Ljava/lang/String; = "VpnProfile"

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x3

.field public static final TYPE_IPSEC_IKEV2_PSK:I = 0x6

.field public static final TYPE_IPSEC_IKEV2_RSA:I = 0x7

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x4

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x5

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x7

.field public static final TYPE_PPTP:I = 0x0

.field public static final VPNPROFILE_IPSECSECRET:I = 0x1

.field public static final VPNPROFILE_PASSWORD:I = 0x0

.field private static final VPN_KEYPAIR_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final VPN_SECRET_KEY:Ljava/lang/String; = "VpnSecretKey"


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public isIpsecSecretIvParams:Ljava/lang/String;

.field public isPFS:Z

.field public isPasswordIvParams:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public ocspServerUrl:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3

    const-string/jumbo v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .locals 13

    const/4 v7, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v10, 0x0

    return-object v10

    :cond_0
    const/4 v10, 0x0

    :try_start_0
    aget-byte v10, p1, v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    const/16 v11, 0xf

    if-ne v10, v11, :cond_2

    const-string/jumbo v10, "VpnProfile"

    const-string/jumbo v11, "This profile has include special header : this stage is candidate."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x4

    new-array v6, v10, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v10, 0x4

    if-ge v1, v10, :cond_1

    add-int/lit8 v10, v1, 0x2

    aget-byte v10, p1, v10

    aput-byte v10, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/android/internal/net/VpnProfile;->byteArrayToInt([B)I

    move-result v5

    array-length v10, p1

    if-ne v5, v10, :cond_2

    const/4 v2, 0x1

    const-string/jumbo v10, "VpnProfile"

    const-string/jumbo v11, "This profile is new format profile!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v10, 0x1

    if-ne v2, v10, :cond_5

    array-length v10, p1

    add-int/lit8 v10, v10, -0x7

    new-array v3, v10, [B

    const/4 v1, 0x0

    :goto_1
    array-length v10, v3

    if-ge v1, v10, :cond_3

    add-int/lit8 v10, v1, 0x7

    aget-byte v10, p1, v10

    aput-byte v10, v3, v1

    add-int/lit8 v10, v1, 0x7

    const/4 v11, 0x0

    aput-byte v11, p1, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v10, "VpnProfile"

    const-string/jumbo v11, "Decode new profile by array offset."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    :goto_2
    :try_start_2
    const-string/jumbo v10, "\u0000"

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/16 v11, 0x10

    if-lt v10, v11, :cond_4

    array-length v10, v9

    const/16 v11, 0x13

    if-le v10, v11, :cond_6

    :cond_4
    const-string/jumbo v10, "VpnProfile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "values.length("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") is not normal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return-object v10

    :cond_5
    new-instance v8, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, p1, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v7, v8

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/android/internal/net/VpnProfile;

    invoke-direct {v4, p0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    if-ltz v10, :cond_7

    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_8

    :cond_7
    const-string/jumbo v10, "VpnProfile"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "profile.type("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") is not normal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return-object v10

    :cond_8
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x4

    if-lt v10, v11, :cond_9

    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_a

    :cond_9
    const/4 v10, 0x0

    return-object v10

    :cond_a
    const/4 v10, 0x2

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const/16 v10, 0x8

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v4, Lcom/android/internal/net/VpnProfile;->mppe:Z

    const/16 v10, 0x9

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/16 v10, 0xa

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v10, 0xb

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v10, 0xc

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/16 v10, 0xd

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    array-length v10, v9

    const/16 v11, 0xe

    if-le v10, v11, :cond_c

    const/16 v10, 0xe

    aget-object v10, v9, v10

    :goto_3
    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    array-length v10, v9

    const/16 v11, 0xf

    if-le v10, v11, :cond_d

    const/16 v10, 0xf

    aget-object v10, v9, v10

    :goto_4
    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    array-length v10, v9

    const/16 v11, 0x10

    if-le v10, v11, :cond_e

    const/16 v10, 0x10

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_5
    iput-boolean v10, v4, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    array-length v10, v9

    const/16 v11, 0x11

    if-le v10, v11, :cond_f

    new-instance v10, Ljava/lang/String;

    const/16 v11, 0x11

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    array-length v10, v9

    const/16 v11, 0x12

    if-le v10, v11, :cond_10

    new-instance v10, Ljava/lang/String;

    const/16 v11, 0x12

    aget-object v11, v9, v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    iput-object v10, v4, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    :goto_8
    iput-boolean v10, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_12

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_12

    const/4 v10, 0x4

    iput v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    :cond_b
    :goto_9
    return-object v4

    :cond_c
    const-string/jumbo v10, ""

    goto :goto_3

    :cond_d
    const-string/jumbo v10, ""

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    goto :goto_5

    :cond_f
    const-string/jumbo v10, ""

    goto :goto_6

    :cond_10
    const-string/jumbo v10, ""

    goto :goto_7

    :cond_11
    const/4 v10, 0x1

    goto :goto_8

    :cond_12
    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_13

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_13

    const/4 v10, 0x5

    iput v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_9

    :catch_0
    move-exception v0

    :goto_a
    const/4 v10, 0x0

    return-object v10

    :cond_13
    iget v10, v4, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_b

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_b

    const/4 v10, 0x3

    iput v10, v4, Lcom/android/internal/net/VpnProfile;->type:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v7, v8

    goto :goto_a
.end method

.method public static intToByteArray(I)[B
    .locals 2

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public areDnsAddressesNumeric()Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v4, " +"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return v3

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    :cond_0
    const-string/jumbo v7, "USRSKEY_VpnSecretKey"

    invoke-virtual {v5, v7}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :try_start_0
    const-string/jumbo v7, "AES"

    const-string/jumbo v8, "AndroidKeyStore"

    invoke-static {v7, v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v8, "VpnSecretKey"

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "CBC"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "PKCS7Padding"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-virtual {p0, v3, v6, v11}, Lcom/android/internal/net/VpnProfile;->encrypt(Ljava/security/Key;[BI)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    :cond_1
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-virtual {p0, v3, v6, v13}, Lcom/android/internal/net/VpnProfile;->encrypt(Ljava/security/Key;[BI)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v7, "USRSKEY_VpnSecretKey"

    const/4 v8, -0x1

    invoke-static {v5, v7, v8}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, ""

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v7, ""

    goto/16 :goto_2
.end method

.method public encrypt(Ljava/security/Key;[BI)[B
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    const-string/jumbo v6, "AES/CBC/PKCS7Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v6

    const-class v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v6, v7}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/net/VpnProfile;->toHex([B)Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_1

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-ne p3, v8, :cond_0

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 v6, 0x0

    return-object v6
.end method

.method public hasDns()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isServerAddressNumeric()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isTypeValidForLockdown()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidLockdownProfile()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
