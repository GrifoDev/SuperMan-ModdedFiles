.class public Landroid/net/wifi/hs20/WifiHs20DBStore;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$Credential;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$DevDetails;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$DevDetailsSPCertificate;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$Fqdn;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$HomeOI;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$HotSpot;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$OtherHomePartner;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$SPExclusionList;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$SpIcon;,
        Landroid/net/wifi/hs20/WifiHs20DBStore$Tupple;
    }
.end annotation


# static fields
.field private static AUTHORITY:Ljava/lang/String; = null

.field private static AUTHORITY_SLASH:Ljava/lang/String; = null

.field public static final DEV_DETAIL_EAP_TABLE:Ljava/lang/String; = "dev_details_eap"

.field public static final DEV_DETAIL_SPCERTIFICATE_TABLE:Ljava/lang/String; = "hotspot_sp_certificate"

.field public static final DEV_DETAIL_TABLE:Ljava/lang/String; = "dev_details"

.field public static final HOTSPOT_AAASERVER_TRUSTTROOT_TABLE:Ljava/lang/String; = "hotspot_aaaserver_trustroot"

.field public static final HOTSPOT_BACKHAUL_BANDWIDTH_THRESHOLD_TABLE:Ljava/lang/String; = "hostspot_backhaul_bandwidth_threshold"

.field public static final HOTSPOT_CREDENTIALS_TABLE:Ljava/lang/String; = "hotspot_credentials"

.field public static final HOTSPOT_FQDN_TABLE:Ljava/lang/String; = "hotspot_fqdn"

.field public static final HOTSPOT_HOMEOILIST_TABLE:Ljava/lang/String; = "hotspot_homeoilist"

.field public static final HOTSPOT_HOMESP_NETWORK_TABLE:Ljava/lang/String; = "hotspot_homesp_network"

.field public static final HOTSPOT_HOMESP_OTHERHOME_PARTNER_TABLE:Ljava/lang/String; = "hotspot_otherhome_partner"

.field public static final HOTSPOT_POLICY_SUBSCRIPTION_UPDATE_TABLE:Ljava/lang/String; = "hotspot_policy_subsription_update"

.field public static final HOTSPOT_PREFERRED_ROAMING_PARTNER_TABLE:Ljava/lang/String; = "hotspot_preferredroaming_partnerlist"

.field public static final HOTSPOT_SPEXCLUSION_LIST_TABLE:Ljava/lang/String; = "hotspot_spexclusion_list"

.field public static final HOTSPOT_TABLE:Ljava/lang/String; = "hotspot"

.field public static final HOTSPOT_TUPPLE_TABLE:Ljava/lang/String; = "hotspot_tupple"

.field public static final SERVICE_PROVICER_ICON_TABLE:Ljava/lang/String; = "sp_icon"


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore;->AUTHORITY_SLASH:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "hotspot"

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore;->AUTHORITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20DBStore;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore;->AUTHORITY_SLASH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
