.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "NetworkTemplate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkTemplate$1;
    }
.end annotation


# static fields
.field private static final BACKUP_VERSION:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_BLUETOOTH:I = 0x8

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_4G:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_MOBILE_ENT1:I = 0x3e9

.field public static final MATCH_MOBILE_WILDCARD:I = 0x6

.field public static final MATCH_PROXY:I = 0x9

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIFI_WILDCARD:I = 0x7

.field private static sForceAllNetworkTypes:Z


# instance fields
.field private final mMatchRule:I

.field private final mMatchSubscriberIds:[Ljava/lang/String;

.field private final mNetworkId:Ljava/lang/String;

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    iput-object p4, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildTemplateBluetooth()Landroid/net/NetworkTemplate;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3

    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateProxy()Landroid/net/NetworkTemplate;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/NetworkTemplate;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ensureSubtypeAvailable()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unable to enforce 3G_LOWER template on combined data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceAllNetworkTypes()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    return-void
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "MOBILE_3G_LOWER"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "MOBILE_4G"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "MOBILE_ALL"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "WIFI"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "ETHERNET"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "MOBILE_WILDCARD"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "WIFI_WILDCARD"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "BLUETOOTH"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "PROXY"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "MATCH_MOBILE_ENT1"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x3e9 -> :sswitch_9
    .end sparse-switch
.end method

.method public static getNetworkTemplateFromBackup(Ljava/io/DataInputStream;)Landroid/net/NetworkTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-lt v3, v4, :cond_0

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v4, Landroid/util/BackupUtils$BadVersionException;

    const-string/jumbo v5, "Unknown Backup Serialization Version"

    invoke-direct {v4, v5}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/net/NetworkTemplate;

    invoke-direct {v4, v0, v2, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private matchesBluetooth(Landroid/net/NetworkIdentity;)Z
    .locals 2

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .locals 2

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-boolean v1, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v1, :cond_1

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    if-nez v1, :cond_2

    iget-boolean v1, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method private matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    return v2

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobile4g(Landroid/net/NetworkIdentity;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileEnt1(Landroid/net/NetworkIdentity;)Z
    .locals 2

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method private matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    sget-boolean v2, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v2, :cond_1

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private matchesProxy(Landroid/net/NetworkIdentity;)Z
    .locals 2

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .locals 2

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 1

    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public static normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 4

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/NetworkTemplate;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public countVideoCall()Z
    .locals 1

    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/net/NetworkTemplate;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/net/NetworkTemplate;

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v3, v0, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getBytesForBackup()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getMatchRule()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMatchRuleMobile()Z
    .locals 1

    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isPersistable()Z
    .locals 1

    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown network template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_2
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile4g(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_4
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileEnt1(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_5
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_6
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_7
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_8
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesBluetooth(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_9
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesProxy(Landroid/net/NetworkIdentity;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x3e9 -> :sswitch_4
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetworkTemplate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "matchRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v2}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ", subscriberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, ", matchSubscriberIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mMatchSubscriberIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
