.class public Landroid/net/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferredRoamingPartner"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final FQDN_MATCH:Ljava/lang/String; = "fqdn_match"

.field public static final HOTSPOT_ID:Ljava/lang/String; = "hotspot_id"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final ROAMING_PARTNER_ID:Ljava/lang/String; = "roaming_partner_id"

.field public static final SERVER_ROAMING_PARTNER_ID:Ljava/lang/String; = "server_roaming_partner_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/wifi/hs20/WifiHs20DBStore;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hotspot_preferredroaming_partnerlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
