.class public Landroid/net/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevDetailsEAP"
.end annotation


# static fields
.field public static final CLIENT_TRIGGER_REDIRECT_URI:Ljava/lang/String; = "client_trigger_redirect_uri"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EAP_ID:Ljava/lang/String; = "eap_id"

.field public static final EAP_TYPE:Ljava/lang/String; = "eap_type"

.field public static final INNER_EAP_TYPE:Ljava/lang/String; = "inner_eaptype"

.field public static final INNER_METHOD:Ljava/lang/String; = "inner_method"

.field public static final INNER_VENDOR_ID:Ljava/lang/String; = "inner_vendor_id"

.field public static final INNER_VENDOR_TYPE:Ljava/lang/String; = "inner_vendor_type"

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

    const-string/jumbo v1, "dev_details_eap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
