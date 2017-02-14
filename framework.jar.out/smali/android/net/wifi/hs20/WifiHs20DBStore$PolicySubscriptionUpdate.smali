.class public Landroid/net/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20DBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicySubscriptionUpdate"
.end annotation


# static fields
.field public static final CERT_SHA256_FINGER_PRINT_TEXT:Ljava/lang/String; = "cert_sha256_finger_print"

.field public static final CERT_URL:Ljava/lang/String; = "certurl"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final HOTSPOT_ID:Ljava/lang/String; = "hotspot_id"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final POLICY_SUSCRIPT_ID:Ljava/lang/String; = "policy_subscript_id"

.field public static final RESTRICTION:Ljava/lang/String; = "restriction"

.field public static final TYPE_OF_NODE:Ljava/lang/String; = "type_of_node"

.field public static final UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field public static final UPDATE_METHOD:Ljava/lang/String; = "update_method"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/wifi/hs20/WifiHs20DBStore;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "hotspot_policy_subsription_update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
