.class public Landroid/net/wifi/hs20/WifiHs20DBStore$DevDetails;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevDetails"
.end annotation


# static fields
.field public static final CERT_ENROLAPP_PATH:Ljava/lang/String; = "cert_enrollapp_path"

.field public static final CLIENT_TRIGGER_REDIRECT_URI:Ljava/lang/String; = "client_trigger_redirect_uri"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEV_DETAILS_ID:Ljava/lang/String; = "dev_details_id"

.field public static final GET_CERTIFICATE:Ljava/lang/String; = "getcertificate"

.field public static final IMEI_MEID:Ljava/lang/String; = "imei_meid"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final LAUNCH_BROWSER_TO_URI:Ljava/lang/String; = "launchbrowsertouri"

.field public static final MANUFACTURING_CERTIFICATE:Ljava/lang/String; = "manufacturing_certificate"

.field public static final NEGOTIATE_CLIENT_CERTTLS:Ljava/lang/String; = "negotiateclientcerttls"

.field public static final WIFI_MACADDRESS:Ljava/lang/String; = "wifi_macaddress"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/wifi/hs20/WifiHs20DBStore;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dev_details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$DevDetails;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
