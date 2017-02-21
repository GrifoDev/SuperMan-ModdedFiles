.class public Landroid/net/wifi/hs20/WifiHs20DBStore$HotSpot;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotSpot"
.end annotation


# static fields
.field public static final CERT_SHA256_FINGER_PRINT_TEXT:Ljava/lang/String; = "cert_sha256_finger_print"

.field public static final CERT_URL:Ljava/lang/String; = "certurl"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATION_DATE:Ljava/lang/String; = "creation_date"

.field public static final DATE_LIMIT:Ljava/lang/String; = "date_limit"

.field public static final EXCLUSION_SSIDs:Ljava/lang/String; = "exclusion_ssids"

.field public static final EXPIRATION_DATE:Ljava/lang/String; = "expiration_date"

.field public static final EXT:Ljava/lang/String; = "ext"

.field public static final FQDN:Ljava/lang/String; = "fqdn"

.field public static final FRIENDLY_NAME:Ljava/lang/String; = "friendly_name"

.field public static final HOTSPOT_ID:Ljava/lang/String; = "hotspot_id"

.field public static final ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final MAXIMUM_LOAD_VALUE:Ljava/lang/String; = "maximumbss_load_value"

.field public static final ROAMING_CONSORTIUMOI:Ljava/lang/String; = "roamingconsortiumoi"

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final SUBSCRIPTION_PRIORITY:Ljava/lang/String; = "subscription_priority"

.field public static final TIME_LIMIT:Ljava/lang/String; = "time_limit"

.field public static final TYPE_OF_SUBSCRIPTION:Ljava/lang/String; = "type_of_subscription"

.field public static final UPDATE_IDENTIFIER:Ljava/lang/String; = "update_identifier"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USAGE_INTERVAL:Ljava/lang/String; = "usage_interval"

.field public static final USER_PRIORITY:Ljava/lang/String; = "user_priority"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/wifi/hs20/WifiHs20DBStore;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
