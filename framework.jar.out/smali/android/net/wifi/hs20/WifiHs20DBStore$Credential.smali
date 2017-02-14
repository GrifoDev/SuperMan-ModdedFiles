.class public Landroid/net/wifi/hs20/WifiHs20DBStore$Credential;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Credential"
.end annotation


# static fields
.field public static final AAA_CA_CERT_HASH:Ljava/lang/String; = "aaa_ca_cert_hash"

.field public static final ABLETOSHARE:Ljava/lang/String; = "abletoshare"

.field public static final CERTIFICATE_TYPE:Ljava/lang/String; = "certificate_type"

.field public static final CERT_ID:Ljava/lang/String; = "cert_id"

.field public static final CERT_SHA256_FINGER_PRINT_TEXT:Ljava/lang/String; = "cert_sha256_finger_print"

.field public static final CHECK_AAA_SERVER_CERT_STATUS:Ljava/lang/String; = "check_aaa_server_cert_status"

.field public static final CLIENT_CERT_HASH:Ljava/lang/String; = "client_cert_hash"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATION_DATE:Ljava/lang/String; = "creation_date"

.field public static final CREDENTIAL_ID:Ljava/lang/String; = "credential_id"

.field public static final CREDENTIAL_TYPE:Ljava/lang/String; = "credential_type"

.field public static final EAP_TYPE:Ljava/lang/String; = "eap_type"

.field public static final EXPIRATION_DATE:Ljava/lang/String; = "expiration_date"

.field public static final HOTSPOT_ID:Ljava/lang/String; = "hotspot_id"

.field public static final HS20_AAA_CA_CERT_HASH:Ljava/lang/String; = "hs20_aaa_ca_cert_hash"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final INNER_EAP_TYPE:Ljava/lang/String; = "inner_eaptype"

.field public static final INNER_METHOD:Ljava/lang/String; = "inner_method"

.field public static final INNER_VENDOR_ID:Ljava/lang/String; = "inner_vendor_id"

.field public static final INNER_VENDOR_TYPE:Ljava/lang/String; = "inner_vendor_type"

.field public static final MACHINE_MANAGED:Ljava/lang/String; = "machine_managed"

.field public static final METHOD_TYPE:Ljava/lang/String; = "method_type"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PRIVATE_KEY_HASH:Ljava/lang/String; = "private_key_hash"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final SIM_EAPTYPE:Ljava/lang/String; = "sim_eaptype"

.field public static final SOFT_TOKENAPP:Ljava/lang/String; = "soft_tokenapp"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final VENDOR_ID:Ljava/lang/String; = "vendor_id"

.field public static final VENDOR_TYPE:Ljava/lang/String; = "vendor_type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/wifi/hs20/WifiHs20DBStore;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hotspot_credentials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
