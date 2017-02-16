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
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field private static final CC_PROPERTY_ENFORCING_VALUE:Ljava/lang/String; = "Enforcing"

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

.field public static final LOCKDOWN_OK:I = 0x0

.field public static final REQUIRED_DNS:I = 0x1

.field public static final REQUIRED_USERNAME_PW:I = 0x2

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

    .prologue
    .line 499
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 95
    iput v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 114
    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    :cond_1
    move v0, v2

    .line 138
    goto :goto_1

    :cond_2
    move v1, v2

    .line 139
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 114
    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 117
    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 189
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

    .line 187
    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 181
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 182
    .local v1, "shift":I
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .locals 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    .line 238
    const/4 v8, 0x0

    .line 239
    .local v8, "valueString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 242
    .local v3, "newFormatProfile":I
    if-nez p0, :cond_0

    .line 243
    const/4 v11, 0x0

    return-object v11

    .line 246
    :cond_0
    const/4 v11, 0x0

    :try_start_0
    aget-byte v11, p1, v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_2

    .line 247
    const-string/jumbo v11, "VpnProfile"

    const-string/jumbo v12, "This profile has include special header : this stage is candidate."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v11, 0x4

    new-array v7, v11, [B

    .line 249
    .local v7, "size_byte":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v11, 0x4

    if-ge v2, v11, :cond_1

    .line 250
    add-int/lit8 v11, v2, 0x2

    aget-byte v11, p1, v11

    aput-byte v11, v7, v2

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {v7}, Lcom/android/internal/net/VpnProfile;->byteArrayToInt([B)I

    move-result v6

    .line 255
    .local v6, "size":I
    array-length v11, p1

    if-ne v6, v11, :cond_2

    .line 256
    const/4 v3, 0x1

    .line 257
    const-string/jumbo v11, "VpnProfile"

    const-string/jumbo v12, "This profile is new format profile!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v2    # "i":I
    .end local v6    # "size":I
    .end local v7    # "size_byte":[B
    :cond_2
    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    .line 262
    array-length v11, p1

    add-int/lit8 v11, v11, -0x7

    new-array v4, v11, [B

    .line 264
    .local v4, "new_value":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v11, v4

    if-ge v2, v11, :cond_3

    .line 265
    add-int/lit8 v11, v2, 0x7

    aget-byte v11, p1, v11

    aput-byte v11, v4, v2

    .line 266
    add-int/lit8 v11, v2, 0x7

    const/4 v12, 0x0

    aput-byte v12, p1, v11

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :cond_3
    new-instance v9, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v4, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .local v9, "valueString":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v11, "VpnProfile"

    .end local v8    # "valueString":Ljava/lang/String;
    const-string/jumbo v12, "Decode new profile by array offset."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 275
    .end local v2    # "i":I
    .end local v4    # "new_value":[B
    .end local v9    # "valueString":Ljava/lang/String;
    .local v8, "valueString":Ljava/lang/String;
    :goto_2
    :try_start_2
    const-string/jumbo v11, "\u0000"

    const/4 v12, -0x1

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "values":[Ljava/lang/String;
    array-length v11, v10

    const/16 v12, 0x11

    if-lt v11, v12, :cond_4

    array-length v11, v10

    const/16 v12, 0x13

    if-le v11, v12, :cond_6

    .line 278
    :cond_4
    const-string/jumbo v11, "VpnProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "values.length("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is not normal "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v11, 0x0

    return-object v11

    .line 272
    .end local v10    # "values":[Ljava/lang/String;
    .local v8, "valueString":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, p1, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v9    # "valueString":Ljava/lang/String;
    move-object v8, v9

    .end local v9    # "valueString":Ljava/lang/String;
    .local v8, "valueString":Ljava/lang/String;
    goto :goto_2

    .line 282
    .restart local v10    # "values":[Ljava/lang/String;
    :cond_6
    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-direct {v5, p0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 283
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    const/4 v11, 0x0

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 284
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    .line 285
    iget v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    if-ltz v11, :cond_7

    iget v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v12, 0x7

    if-le v11, v12, :cond_8

    .line 286
    :cond_7
    const-string/jumbo v11, "VpnProfile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile.type("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is not normal"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v11, 0x0

    return-object v11

    .line 290
    :cond_8
    const-string/jumbo v11, "security.mdpp"

    const-string/jumbo v12, "Disabled"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "ccModePropertyValue":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 295
    const-string/jumbo v11, "Enabled"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 296
    const-string/jumbo v11, "Enforcing"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 294
    if-eqz v11, :cond_b

    .line 297
    :cond_9
    iget v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v12, 0x4

    if-lt v11, v12, :cond_a

    .line 298
    iget v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v12, 0x7

    if-le v11, v12, :cond_b

    .line 299
    :cond_a
    const/4 v11, 0x0

    return-object v11

    .line 302
    :cond_b
    const/4 v11, 0x2

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 303
    const/4 v11, 0x3

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 304
    const/4 v11, 0x4

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 305
    const/4 v11, 0x5

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 306
    const/4 v11, 0x6

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 307
    const/4 v11, 0x7

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 308
    const/16 v11, 0x8

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, v5, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 309
    const/16 v11, 0x9

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 310
    const/16 v11, 0xa

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 311
    const/16 v11, 0xb

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 312
    const/16 v11, 0xc

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 313
    const/16 v11, 0xd

    aget-object v11, v10, v11

    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 314
    array-length v11, v10

    const/16 v12, 0xe

    if-le v11, v12, :cond_f

    const/16 v11, 0xe

    aget-object v11, v10, v11

    :goto_3
    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 315
    array-length v11, v10

    const/16 v12, 0xf

    if-le v11, v12, :cond_10

    const/16 v11, 0xf

    aget-object v11, v10, v11

    :goto_4
    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 316
    array-length v11, v10

    const/16 v12, 0x10

    if-le v11, v12, :cond_11

    const/16 v11, 0x10

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_5
    iput-boolean v11, v5, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 317
    array-length v11, v10

    const/16 v12, 0x11

    if-le v11, v12, :cond_12

    new-instance v11, Ljava/lang/String;

    const/16 v12, 0x11

    aget-object v12, v10, v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 318
    array-length v11, v10

    const/16 v12, 0x12

    if-le v11, v12, :cond_13

    new-instance v11, Ljava/lang/String;

    const/16 v12, 0x12

    aget-object v12, v10, v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    iput-object v11, v5, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 319
    iget-object v11, v5, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v5, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, 0x0

    :goto_8
    iput-boolean v11, v5, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 322
    iget v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c

    iget-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 324
    :cond_c
    iget v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_d

    iget-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 326
    :cond_d
    iget v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_e

    iget-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 327
    iget-object v11, v5, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 331
    :cond_e
    :goto_9
    return-object v5

    .line 314
    :cond_f
    const-string/jumbo v11, ""

    goto/16 :goto_3

    .line 315
    :cond_10
    const-string/jumbo v11, ""

    goto :goto_4

    .line 316
    :cond_11
    const/4 v11, 0x0

    goto :goto_5

    .line 317
    :cond_12
    const-string/jumbo v11, ""

    goto :goto_6

    .line 318
    :cond_13
    const-string/jumbo v11, ""

    goto :goto_7

    .line 319
    :cond_14
    const/4 v11, 0x1

    goto :goto_8

    .line 323
    :cond_15
    const/4 v11, 0x4

    iput v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_9

    .line 332
    .end local v0    # "ccModePropertyValue":Ljava/lang/String;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "valueString":Ljava/lang/String;
    .end local v10    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    :goto_a
    const/4 v11, 0x0

    return-object v11

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ccModePropertyValue":Ljava/lang/String;
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v8    # "valueString":Ljava/lang/String;
    .restart local v10    # "values":[Ljava/lang/String;
    :cond_16
    const/4 v11, 0x5

    iput v11, v5, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_9

    .line 328
    :cond_17
    const/4 v11, 0x3

    iput v11, v5, Lcom/android/internal/net/VpnProfile;->type:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 332
    .end local v0    # "ccModePropertyValue":Ljava/lang/String;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "valueString":Ljava/lang/String;
    .end local v10    # "values":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "new_value":[B
    .restart local v9    # "valueString":Ljava/lang/String;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "valueString":Ljava/lang/String;
    .restart local v8    # "valueString":Ljava/lang/String;
    goto :goto_a
.end method

.method public static intToByteArray(I)[B
    .locals 2
    .param p0, "integer"    # I

    .prologue
    .line 170
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    const-string/jumbo v2, ""

    return-object v2

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 198
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 200
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 433
    :try_start_0
    const-string/jumbo v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v0, v7, v6

    .line 434
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 433
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 438
    :cond_1
    const/16 v5, 0x20

    .line 439
    .local v5, "prefixLength":I
    if-eqz p2, :cond_2

    .line 440
    const-string/jumbo v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v4, v9

    .line 442
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 444
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 445
    .local v1, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    .line 446
    const/4 v10, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    .line 445
    or-int/2addr v9, v10

    .line 446
    const/4 v10, 0x0

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    .line 445
    or-int v3, v9, v10

    .line 447
    .local v3, "integer":I
    array-length v9, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-gez v5, :cond_4

    .line 449
    :cond_3
    :goto_1
    const/4 v6, 0x0

    return v6

    .line 447
    :cond_4
    const/16 v9, 0x20

    if-gt v5, v9, :cond_3

    .line 448
    const/16 v9, 0x20

    if-ge v5, v9, :cond_0

    shl-int v9, v3, v5

    if-eqz v9, :cond_0

    goto :goto_1

    .line 452
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v3    # "integer":I
    .end local v5    # "prefixLength":I
    :catch_0
    move-exception v2

    .line 453
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return v6

    .line 455
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 339
    const/4 v3, 0x0

    .line 340
    .local v3, "key":Ljavax/crypto/SecretKey;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    .line 342
    .local v5, "keystore":Landroid/security/KeyStore;
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 379
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    return-object v7

    .line 343
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "key":Ljavax/crypto/SecretKey;
    :cond_1
    const-string/jumbo v7, "USRSKEY_VpnSecretKey"

    invoke-virtual {v5, v7}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 346
    :try_start_0
    const-string/jumbo v7, "AES"

    const-string/jumbo v8, "AndroidKeyStore"

    .line 345
    invoke-static {v7, v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 347
    .local v4, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v8, "VpnSecretKey"

    .line 348
    const/4 v9, 0x3

    .line 347
    invoke-direct {v7, v8, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 350
    const-string/jumbo v9, "CBC"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 347
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 352
    const-string/jumbo v9, "PKCS7Padding"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 347
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 354
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 367
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v4    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    :goto_3
    if-eqz v3, :cond_0

    .line 368
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 369
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    .line 370
    .local v6, "targetData":[B
    invoke-virtual {p0, v3, v6, v11}, Lcom/android/internal/net/VpnProfile;->encrypt(Ljava/security/Key;[BI)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 372
    .end local v6    # "targetData":[B
    :cond_2
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 373
    iget-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    .line 374
    .restart local v6    # "targetData":[B
    invoke-virtual {p0, v3, v6, v13}, Lcom/android/internal/net/VpnProfile;->encrypt(Ljava/security/Key;[BI)[B

    move-result-object v7

    invoke-static {v7, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto/16 :goto_0

    .line 355
    .end local v6    # "targetData":[B
    .restart local v3    # "key":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string/jumbo v7, "USRSKEY_VpnSecretKey"

    const/4 v8, -0x1

    .line 360
    invoke-static {v5, v7, v8}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .local v3, "key":Ljavax/crypto/SecretKey;
    goto :goto_3

    .line 362
    .local v3, "key":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v2

    .line 363
    .local v2, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v2}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_3

    .line 382
    .end local v2    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    const-string/jumbo v7, ""

    goto/16 :goto_1

    .line 383
    :cond_5
    const-string/jumbo v7, ""

    goto/16 :goto_2
.end method

.method public encrypt(Ljava/security/Key;[BI)[B
    .locals 9
    .param p1, "secretkey"    # Ljava/security/Key;
    .param p2, "value"    # [B
    .param p3, "check"    # I

    .prologue
    const/4 v8, 0x1

    .line 208
    :try_start_0
    const-string/jumbo v6, "AES/CBC/PKCS7Padding"

    .line 207
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 211
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 213
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 217
    .local v2, "encrypteddata":[B
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v6

    const-class v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v6, v7}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 218
    .local v5, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v5}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    .line 220
    .local v3, "iv":[B
    invoke-static {v3}, Lcom/android/internal/net/VpnProfile;->toHex([B)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "ivFromHex":Ljava/lang/String;
    if-nez p3, :cond_1

    .line 222
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 227
    :cond_0
    :goto_0
    return-object v2

    .line 223
    :cond_1
    if-ne p3, v8, :cond_0

    .line 224
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

    .line 230
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v2    # "encrypteddata":[B
    .end local v3    # "iv":[B
    .end local v4    # "ivFromHex":Ljava/lang/String;
    .end local v5    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 232
    const/4 v6, 0x0

    return-object v6
.end method

.method public getValidLockdownProfile()I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 460
    :try_start_0
    const-string/jumbo v5, "security.mdpp"

    const-string/jumbo v7, "Disabled"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "ccModePropertyValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 462
    const-string/jumbo v5, "Enabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    const-string/jumbo v5, "Enforcing"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 461
    if-eqz v5, :cond_1

    .line 464
    :cond_0
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 465
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v3, v5, v7

    .line 466
    .local v3, "ocspServer":Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v4, v5, v7

    .line 467
    .local v4, "ocspServerIP":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 471
    .end local v3    # "ocspServer":Ljava/lang/String;
    .end local v4    # "ocspServerIP":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 473
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v7, " +"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v1, v7, v5

    .line 474
    .local v1, "dnsServer":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 473
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "dnsServer":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 477
    const-string/jumbo v5, "VpnProfile"

    const-string/jumbo v6, "DNS required"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v10

    .line 480
    :cond_3
    iget v5, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eq v5, v11, :cond_4

    .line 481
    iget v5, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-ne v5, v10, :cond_5

    .line 485
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-nez v5, :cond_6

    .line 486
    const-string/jumbo v5, "VpnProfile"

    const-string/jumbo v6, "Username and password required"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return v11

    .line 482
    :cond_5
    iget v5, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_4

    .line 483
    iget v5, p0, Lcom/android/internal/net/VpnProfile;->type:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x4

    if-eq v5, v7, :cond_4

    .line 491
    :cond_6
    return v6

    .line 493
    .end local v0    # "ccModePropertyValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "VpnProfile"

    const-string/jumbo v6, "Invalid address"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    return v10
.end method

.method public isValidLockdownProfile()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 410
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/internal/net/VpnProfile;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    return v3

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string/jumbo v4, " +"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 415
    .local v0, "dnsServer":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "dnsServer":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    const-string/jumbo v2, "VpnProfile"

    const-string/jumbo v4, "DNS required"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    return v3

    .line 423
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "VpnProfile"

    const-string/jumbo v4, "Invalid address"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    return v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    :cond_1
    move v0, v2

    .line 163
    goto :goto_1

    :cond_2
    move v1, v2

    .line 164
    goto :goto_2
.end method
